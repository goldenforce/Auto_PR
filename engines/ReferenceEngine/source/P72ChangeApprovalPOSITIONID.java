import java.math.BigDecimal;
import java.util.ArrayList;

import org.apache.log4j.Logger;

import com.thegoldensource.jbre.DatabaseAccess;
import com.thegoldensource.jbre.DatabaseObjectContainer;
import com.thegoldensource.jbre.GSException;
import com.thegoldensource.jbre.JavaRule;
import com.thegoldensource.jbre.NotificationCreator;
import com.thegoldensource.jbre.ProcessorContext;
import com.thegoldensource.jbre.SegmentId;
import com.thegoldensource.jbre.XMLMessage;

public class P72ChangeApprovalPOSITIONID implements JavaRule {

	/*
	 * Rule Plug-in Details
	 * 
	 */

	private ArrayList<String> msgClassificationList = new ArrayList<String>();

	public static final String GET_ISID_OID = "SELECT ISID.ISID_OID FROM FT_T_MIXR MIXR1, FT_T_ISID ISID"
			+ " WHERE MIXR1.MKT_ISS_OID = :MKT_ISS_OID<CHAR[11]>"
			+ " AND ISID.ID_CTXT_TYP = 'POSITIONID'"
			+ " AND MIXR1.ISID_OID = ISID.ISID_OID"
			+ " AND (ISID.END_TMS IS NULL OR ISID.END_TMS >= SYSDATE())"
			+ " AND (MIXR1.END_TMS IS NULL OR MIXR1.END_TMS >= SYSDATE())"
			+ " AND MIXR1.LAST_CHG_TMS = (SELECT MAX(MIXR2.LAST_CHG_TMS) FROM FT_T_MIXR MIXR2, FT_T_ISID ISID2"
			+ " WHERE MIXR2.MKT_ISS_OID = MIXR1.MKT_ISS_OID"
			+ " AND MIXR2.ISID_OID = ISID2.ISID_OID"
			+ " AND ISID2.ID_CTXT_TYP = 'POSITIONID'"
			+ " AND (ISID2.END_TMS IS NULL OR ISID2.END_TMS >= SYSDATE())"
			+ " AND (MIXR2.END_TMS IS NULL OR MIXR2.END_TMS >= SYSDATE()))"
			+ " LIMIT 1";

	private static Logger logger = Logger.getLogger("P72ChangeApprovalPOSITIONID");
	SegmentId POSITIONIDSegmentId = new SegmentId(0);

	@Override
	public boolean initialize(String[] param) 
	{
		loggerDebug("Inside Initialize Method param array size = " + param.length);

		String param_AllMsgClassifications = null;

		if(param.length>0)
		{
			param_AllMsgClassifications = param[0];// Message Classifications
		}

		if (param_AllMsgClassifications != null && !("".equalsIgnoreCase(param_AllMsgClassifications) || " ".equalsIgnoreCase(param_AllMsgClassifications) || param_AllMsgClassifications == null)) 
		{
			for (String msgClassification : param_AllMsgClassifications.split(",")) 
			{
				msgClassificationList.add(msgClassification);
			}
			loggerDebug("P72ChangeApprovalPOSITIONID : initialize sucessfully initiallized Message Classification List = " + msgClassificationList);
		}
		else 
		{
			loggerDebug("P72ChangeApprovalPOSITIONID : initialize not initialized properly");
		}

		return true;
	}

	@Override
	public boolean process(XMLMessage msg, DatabaseObjectContainer dboc, ProcessorContext pContext, DatabaseAccess db, NotificationCreator notificationCreator) throws GSException {

		loggerDebug("P72ChangeApprovalPOSITIONID : process Execution started");

		SegmentId curSeg = new SegmentId(0);
		//String segProcInd = msg.getSegmentAttribute(curSeg, "SEGPROCESSEDIND");
		String msgClassification = msg.getStringField("MSG_CLASSIFICATION",new SegmentId(0));

		loggerDebug("P72ChangeApprovalPOSITIONID : process curSeg = '" + msg.getSegmentType(curSeg) + "'");
		//loggerDebug("P72ChangeApprovalPOSITIONID : process segProcInd = '" + segProcInd + "'");
		loggerDebug("P72ChangeApprovalPOSITIONID : process msgClassification = '" + msgClassification + "'");

		//Exiting conditions - If main_entity_typ is not subdivision - exit
		//Not comparing with the MAIN_ENTITY_TYP because segments of different entity might appear in the message

		// Exiting conditions - Check if Data Source requires processing

		if (!msgClassificationList.contains(msgClassification)) 
		{
			loggerDebug("P72ChangeApprovalPOSITIONID : Message Classification does not require processing, hence exiting.");
			return true;
		}

		// Exiting conditions - Check if it is an ISSU segment

		if (!"Issue".equalsIgnoreCase(msg.getSegmentType(curSeg))) 
		{
			loggerDebug("P72ChangeApprovalPOSITIONID : Segment Type does not require processing, hence exiting.");
			return true;
		}

		try
		{

			//String instrId = msg.getStringField("INSTR_ID", curSeg);

			//loggerDebug("P72ChangeApprovalPOSITIONID : Instrument ID from Message - " + instrId);

			
				int i;
				boolean firstPOSITIONIDFound = false;

				for (i = 0 ; i < msg.getSegmentCount() ; i++)
				{
					POSITIONIDSegmentId = new SegmentId(i);
					String currSegName = msg.getSegmentType(POSITIONIDSegmentId);

					loggerDebug("P72ChangeApprovalPOSITIONID : Segment Name ISID Loop - " + currSegName);

					if (("IssueIdentifier").equalsIgnoreCase(currSegName))
					{
						String idCtxtTyp = msg.getStringField("ID_CTXT_TYP", POSITIONIDSegmentId);
						loggerDebug("P72ChangeApprovalPOSITIONID : ID Context : " + idCtxtTyp);

						if ("POSITIONID".equalsIgnoreCase(idCtxtTyp))
						{
							firstPOSITIONIDFound = true;
							break;
						}
					}
				}

				if (firstPOSITIONIDFound)
				{
					// POSITIONID segment found in the message
					for(int j = i ; j < msg.getSegmentCount() ; j++)
					{
						SegmentId currSegId = new SegmentId(j);
						String currSegName = msg.getSegmentType(currSegId);

						loggerDebug("P72ChangeApprovalPOSITIONID : Segment Name MKIS Loop - " + currSegName);

						if (("ISIDMarketIssueCrossReference").equalsIgnoreCase(currSegName))
						{
							String mktIssOid = msg.getStringField("MKT_ISS_OID", currSegId);
							loggerDebug("P72ChangeApprovalPOSITIONID : Market Iss Oid : " + mktIssOid);

							addIsidOid(msg, mktIssOid, db);
							/*
							db.setSQL(GET_ISID_OID);
							db.addParameter(mktIssOid);
							db.execute();
							if (!db.isEndOfStream())
							{
								String isidOid = db.getNextString();
								loggerDebug("P72ChangeApprovalPOSITIONID : Isid oid from DB :" + isidOid);

								String POSITIONIDIsidOidFromMsg = msg.getStringField("ISID_OID", POSITIONIDSegmentId);

								if (POSITIONIDIsidOidFromMsg != null && !"".equalsIgnoreCase(POSITIONIDIsidOidFromMsg))
								{
									msg.setFieldValue("ISID_OID", POSITIONIDSegmentId, isidOid);
								}
								else
								{
									msg.addField("ISID_OID", POSITIONIDSegmentId, isidOid);
								}
							}*/

							break;
						}
					}
				}
			
		}
		catch (Exception e) 
		{
			logger.error("P72ChangeApprovalPOSITIONID : Error while processing Rule ." + e.getMessage() + e.getStackTrace().toString());
			return false;
		}
		loggerDebug("P72ChangeApprovalPOSITIONID : XML Message : " + msg.getXMLString());
		loggerDebug("P72ChangeApprovalPOSITIONID : process Executed successfully");
		return true;
	}

	public void loggerDebug(String msg)
	{
		if(logger.isDebugEnabled())
		{
			logger.debug(msg); 
		}
	}

	public void addIsidOid (XMLMessage msg, String mktIssOid, DatabaseAccess db)
	{

		loggerDebug("P72ChangeApprovalPOSITIONID : Inside ISID Oid function");
		try
		{
			db.setSQL(GET_ISID_OID);
			db.addParameter(mktIssOid);
			db.execute();
			if (!db.isEndOfStream())
			{
				String isidOid = db.getNextString();
				loggerDebug("P72ChangeApprovalPOSITIONID : Isid oid from DB :" + isidOid);

				String POSITIONIDIsidOidFromMsg = msg.getStringField("ISID_OID", POSITIONIDSegmentId);

				if (POSITIONIDIsidOidFromMsg != null && !"".equalsIgnoreCase(POSITIONIDIsidOidFromMsg))
				{
					msg.setFieldValue("ISID_OID", POSITIONIDSegmentId, isidOid);
				}
				else
				{
					msg.addField("ISID_OID", POSITIONIDSegmentId, isidOid);
				}
			}
		}
		catch (Exception e) 
		{
			logger.error("P72ChangeApprovalPOSITIONID : Error while processing Rule ." + e.getMessage() + e.getStackTrace().toString());
		}
	}
}
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

public class P72ChangeApprovalBBCPTICK implements JavaRule {

	/*
	 * Rule Plug-in Details
	 * 
	 */

	private ArrayList<String> msgClassificationList = new ArrayList<String>();

	public static final String GET_ISID_OID = "SELECT ISID.ISID_OID FROM FT_T_MIXR MIXR1, FT_T_ISID ISID"
			+ " WHERE MIXR1.MKT_ISS_OID = :MKT_ISS_OID<CHAR[11]>"
			+ " AND ISID.ID_CTXT_TYP = 'BBCPTICK'"
			+ " AND MIXR1.ISID_OID = ISID.ISID_OID"
			+ " AND (ISID.END_TMS IS NULL OR ISID.END_TMS >= SYSDATE())"
			+ " AND (MIXR1.END_TMS IS NULL OR MIXR1.END_TMS >= SYSDATE())"
			+ " AND MIXR1.LAST_CHG_TMS = (SELECT MAX(MIXR2.LAST_CHG_TMS) FROM FT_T_MIXR MIXR2, FT_T_ISID ISID2"
			+ " WHERE MIXR2.MKT_ISS_OID = MIXR1.MKT_ISS_OID"
			+ " AND MIXR2.ISID_OID = ISID2.ISID_OID"
			+ " AND ISID2.ID_CTXT_TYP = 'BBCPTICK'"
			+ " AND (ISID2.END_TMS IS NULL OR ISID2.END_TMS >= SYSDATE())"
			+ " AND (MIXR2.END_TMS IS NULL OR MIXR2.END_TMS >= SYSDATE()))"
			+ " LIMIT 1";

	private static Logger logger = Logger.getLogger("P72ChangeApprovalBBCPTICK");
	SegmentId BBCPTICKSegmentId = new SegmentId(0);

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
			loggerDebug("P72ChangeApprovalBBCPTICK : initialize sucessfully initiallized Message Classification List = " + msgClassificationList);
		}
		else 
		{
			loggerDebug("P72ChangeApprovalBBCPTICK : initialize not initialized properly");
		}

		return true;
	}

	@Override
	public boolean process(XMLMessage msg, DatabaseObjectContainer dboc, ProcessorContext pContext, DatabaseAccess db, NotificationCreator notificationCreator) throws GSException {

		loggerDebug("P72ChangeApprovalBBCPTICK : process Execution started");

		SegmentId curSeg = new SegmentId(0);
		//String segProcInd = msg.getSegmentAttribute(curSeg, "SEGPROCESSEDIND");
		String msgClassification = msg.getStringField("MSG_CLASSIFICATION",new SegmentId(0));

		loggerDebug("P72ChangeApprovalBBCPTICK : process curSeg = '" + msg.getSegmentType(curSeg) + "'");
		//loggerDebug("P72ChangeApprovalBBCPTICK : process segProcInd = '" + segProcInd + "'");
		loggerDebug("P72ChangeApprovalBBCPTICK : process msgClassification = '" + msgClassification + "'");

		//Exiting conditions - If main_entity_typ is not subdivision - exit
		//Not comparing with the MAIN_ENTITY_TYP because segments of different entity might appear in the message

		// Exiting conditions - Check if Data Source requires processing

		if (!msgClassificationList.contains(msgClassification)) 
		{
			loggerDebug("P72ChangeApprovalBBCPTICK : Message Classification does not require processing, hence exiting.");
			return true;
		}

		// Exiting conditions - Check if it is an ISSU segment

		if (!"Issue".equalsIgnoreCase(msg.getSegmentType(curSeg))) 
		{
			loggerDebug("P72ChangeApprovalBBCPTICK : Segment Type does not require processing, hence exiting.");
			return true;
		}

		try
		{

			//String instrId = msg.getStringField("INSTR_ID", curSeg);

			//loggerDebug("P72ChangeApprovalBBCPTICK : Instrument ID from Message - " + instrId);

			if ("CAProcessing".equalsIgnoreCase(msgClassification))
			{
				String mainEntityId = msg.getStringField("MAIN_ENTITY_ID",new SegmentId(0));
				loggerDebug("P72ChangeApprovalBBCPTICK : Main Entity Id - " + mainEntityId);

				if (mainEntityId != null && !"".equalsIgnoreCase(mainEntityId))
				{
					for (int i = 0 ; i < msg.getSegmentCount() ; i++)
					{
						BBCPTICKSegmentId = new SegmentId(i);
						String currSegName = msg.getSegmentType(BBCPTICKSegmentId);

						loggerDebug("P72ChangeApprovalBBCPTICK : Segment Name ISID Loop - " + currSegName);

						if (("IssueIdentifier").equalsIgnoreCase(currSegName))
						{
							String idCtxtTyp = msg.getStringField("ID_CTXT_TYP", BBCPTICKSegmentId);
							loggerDebug("P72ChangeApprovalBBCPTICK : ID Context : " + idCtxtTyp);

							if ("BBCPTICK".equalsIgnoreCase(idCtxtTyp))
							{
								addIsidOid(msg, mainEntityId, db);
								break;
							}
						}
					}
				
				}
			}
			
		}
		catch (Exception e) 
		{
			logger.error("P72ChangeApprovalBBCPTICK : Error while processing Rule ." + e.getMessage() + e.getStackTrace().toString());
			return false;
		}
		loggerDebug("P72ChangeApprovalBBCPTICK : XML Message : " + msg.getXMLString());
		loggerDebug("P72ChangeApprovalBBCPTICK : process Executed successfully");
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

		loggerDebug("P72ChangeApprovalBBCPTICK : Inside ISID Oid function");
		try
		{
			db.setSQL(GET_ISID_OID);
			db.addParameter(mktIssOid);
			db.execute();
			if (!db.isEndOfStream())
			{
				String isidOid = db.getNextString();
				loggerDebug("P72ChangeApprovalBBCPTICK : Isid oid from DB :" + isidOid);

				String BBCPTICKIsidOidFromMsg = msg.getStringField("ISID_OID", BBCPTICKSegmentId);

				if (BBCPTICKIsidOidFromMsg != null && !"".equalsIgnoreCase(BBCPTICKIsidOidFromMsg))
				{
					msg.setFieldValue("ISID_OID", BBCPTICKSegmentId, isidOid);
				}
				else
				{
					msg.addField("ISID_OID", BBCPTICKSegmentId, isidOid);
				}
			}
		}
		catch (Exception e) 
		{
			logger.error("P72ChangeApprovalBBCPTICK : Error while processing Rule ." + e.getMessage() + e.getStackTrace().toString());
		}
	}
}
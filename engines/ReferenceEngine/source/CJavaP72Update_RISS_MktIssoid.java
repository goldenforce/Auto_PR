
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

import com.thegoldensource.jbre.DatabaseAccess;
import com.thegoldensource.jbre.DatabaseObjectContainer;
import com.thegoldensource.jbre.GSException;
import com.thegoldensource.jbre.JavaRule;
import com.thegoldensource.jbre.NotificationCreator;
import com.thegoldensource.jbre.ProcessorContext;
import com.thegoldensource.jbre.SegmentId;
import com.thegoldensource.jbre.XMLMessage;

public class CJavaP72Update_RISS_MktIssoid implements JavaRule {
	private static Logger logger = Logger.getLogger("CJavaP72Update_RISS_MktIssoid");
	private List<String> msgClsList = new ArrayList<String>();

	@Override
	public boolean initialize(String[] param) {
		if (param.length < 1) {
			logger.error("Required Parameters missing for CJavaP72Update_RISS_MktIssoid in StreetRefMsgSet ");
			return false;
		}
		if (logger.isDebugEnabled()) logger.debug("CJavaP72Update_RISS_MktIssoid | initialize | Started Initializing ....");

		msgClsList = Arrays.asList(param[0].split(","));

		if (msgClsList.size() == 0) {
			logger.error("Missing Required Array Parameters for Message Classification List in StreetRefMsgSet ");
			return false;
		}
		if (logger.isDebugEnabled()) logger.debug("CJavaP72CreateP72BBGTICKERIdentifier | initialize | Started Initializing ....");

		if (logger.isDebugEnabled()) logger.debug("CJavaP72CreateInstrumentLevelAttributes | initialize | Completed Initializing ....");
		return true;	

	}

	@Override
	public boolean process(XMLMessage msg, DatabaseObjectContainer dboc, ProcessorContext pContext,
			DatabaseAccess dbConnection, NotificationCreator nCreator) throws GSException {
		logger.info("CJavaP72Update_RISS_MktIssoid process start");

		if (logger.isDebugEnabled())logger.debug("Before MSG: "+msg.getXMLString());
		
		CJavaP72Commons commons = null;
		commons = new CJavaP72Commons(msg, dboc, pContext, dbConnection, nCreator);
		String msgClassification = "";
		msgClassification = commons.getMsgClassification();
		String bbunique="";
//		String sedol="";		
		String bbcptickID="";
		String bbcmpsecID="";
		String bbglobalID="";
		String cpglobalID="";
		String ricID="";
		String sqlResult="";
		if (!msgClsList.contains(msgClassification)) {
			if (logger.isDebugEnabled()) logger.debug("Exiting as Message Classification is not from the configured list." + msgClassification);
			return true;
		}
		if (logger.isDebugEnabled()) logger.debug("msgClassification:" + msgClassification);
		//List<SegmentId> segIdList = commons.getSegmentIds("RelatedIssue");
		List<SegmentId> rissSegIdList = commons.getSegmentIds("RelatedIssue", "ISS_PART_RL_TYP", "UNDLYING");
		if (logger.isDebugEnabled()) logger.debug("rissSegIdList.size():" + rissSegIdList.size());
		//SegmentId rissSegId = commons.getSegmentId("RelatedIssue", "ISS_PART_RL_TYP", "UNDLYING");
		if (logger.isDebugEnabled()) logger.debug("rissSegId" + rissSegIdList );//+" getSegmentNum "+segId.getSegmentNum());
		if (rissSegIdList.isEmpty()) {
			if (logger.isDebugEnabled()) logger.debug("No RelatedIssue Segment with ISS_PART_RL_TYP='UNDLYING' found in msg..exiting");
			return true;
		}
		
//		
//		BBCPTICK	1
//		BBCMPSEC	2
//		BBGLOBAL	3
//		CPGLOBAL	4
		
		for (SegmentId rissSegId : rissSegIdList){
			if (logger.isDebugEnabled()) logger.debug("rissSegId" + rissSegId );

			bbunique =commons.getNestedStringFieldFromMsg(rissSegId,"IssueIdentifier", "ISS_ID", "ID_CTXT_TYP", "BBUNIQUE");
			if (logger.isDebugEnabled()) logger.debug("bbunique:"+bbunique);
			
	/*		sedol=commons.getNestedStringFieldFromMsg(rissSegId,"IssueIdentifier", "ISS_ID", "ID_CTXT_TYP", "SEDOL");
			if (logger.isDebugEnabled()) logger.debug("bbunique:"+sedol);
	*/		
			bbcptickID =commons.getNestedStringFieldFromMsg(rissSegId,"IssueIdentifier", "ISS_ID", "ID_CTXT_TYP", "BBCPTICK");
			if (logger.isDebugEnabled()) logger.debug("bbcptickID_3:"+bbcptickID);
			

			if (logger.isDebugEnabled()) logger.debug("rissSegIdfor bbcmpsecID" + rissSegId );
			 bbcmpsecID =commons.getNestedStringFieldFromMsg(rissSegId,"IssueIdentifier", "ISS_ID", "ID_CTXT_TYP", "BBCMPSEC");
			if (logger.isDebugEnabled()) logger.debug("bbcmpsecID:"+bbcmpsecID);
			
			bbglobalID =commons.getNestedStringFieldFromMsg(rissSegId,"IssueIdentifier", "ISS_ID", "ID_CTXT_TYP", "BBGLOBAL");
			if (logger.isDebugEnabled()) logger.debug("bbglobalID:"+bbglobalID);
			
			cpglobalID =commons.getNestedStringFieldFromMsg(rissSegId,"IssueIdentifier", "ISS_ID", "ID_CTXT_TYP", "CPGLOBAL");
			if (logger.isDebugEnabled()) logger.debug("cpglobalID:"+cpglobalID);
			
			ricID =commons.getNestedStringFieldFromMsg(rissSegId,"IssueIdentifier", "ISS_ID", "ID_CTXT_TYP", "RIC");
			if (logger.isDebugEnabled()) logger.debug("ricID:"+ricID);
			
			if ((bbunique == null || "".equals(bbunique)) 
			 && (bbcptickID == null || "".equals(bbcptickID)) 
			 && (bbcmpsecID == null || "".equals(bbcmpsecID)) 
			 && (bbglobalID == null || "".equals(bbglobalID)) 
			 && (cpglobalID == null || "".equals(cpglobalID))
			 && (ricID == null || "".equals(ricID)))
			{
				if (logger.isDebugEnabled()) logger.debug("No bbunique or sedol or BBCPTICK or BBCMPSEC  or BBGLOBAL or CPGLOBAL or RIC found in incoming message..Hence exiting..");
				return true;
			}
			else
		
			if (logger.isDebugEnabled()) logger.debug("Calling function...");
			sqlResult=getFunctionOP(bbunique,bbcptickID,bbcmpsecID,bbglobalID,cpglobalID,ricID,  dbConnection);	
			if (logger.isDebugEnabled()) logger.debug("sqlResult:"+sqlResult);
				//}
			if(sqlResult == null || "".equals(sqlResult))
			{
				if (logger.isDebugEnabled()) logger.debug("No value fetched from sql function.. hence exiting");
						
			}
			
			else
			{
				if (logger.isDebugEnabled()) logger.debug("Adding Segment/Fields to message.");
				addFieldToMsg(sqlResult, commons, msg, dbConnection, nCreator);
				
			}
			
			
			}
//		}
//
		if (logger.isDebugEnabled()) logger.debug("After MSG: "+msg.getXMLString());
		return true;
	}


private String getFunctionOP(String bbunique,String bbcptickID,String bbcmpsecID,String bbglobalID,String cpglobalID,String ricID,  DatabaseAccess dbConnection)
{
	
	String sql = "select getp72rissmktissoid(:p_bbunique<char[101]>,"
										+":p_bbcptickID<char[101]>,"
										+ ":p_bbcmpsecID<char[101]>, "
										+ ":p_bbglobalID<char[101]>, "
										+ ":p_cpglobalID<char[101]>, "
										+ ":p_ricID<char[101]>"
										+ ") from dual ";
	//	String sqlOP = commons.getFirstValDB(sql);
	String sqlOP="";
	if  (bbunique==null) {bbunique="";}
	if  (bbcptickID==null) {bbcptickID="";}
	if  (bbcmpsecID==null) {bbcmpsecID="";}
	if  (bbglobalID==null) {bbglobalID="";}
	if  (cpglobalID==null) {cpglobalID="";}
	if  (ricID==null) {ricID="";}
		
		try{	
			if (logger.isDebugEnabled()) logger.debug("Executing sql: " + sql);
			dbConnection.setSQL(sql);
			
			dbConnection.addParameter(bbunique);
			//dbConnection.addParameter(sedol);
			dbConnection.addParameter(bbcptickID);
			dbConnection.addParameter(bbcmpsecID);
			dbConnection.addParameter(bbglobalID);
			dbConnection.addParameter(cpglobalID);
			dbConnection.addParameter(ricID);
			if (!dbConnection.execute()) {
				logger.error("ERROR: Failed to execute SQL statement.");
			}

			// Only fetch once, get the first result in case there are more
			if (!dbConnection.isEndOfStream()) {
				sqlOP = dbConnection.getNextString().trim();
				if (logger.isDebugEnabled()) logger.debug("sqlOp from query>>" +sqlOP);
		
		}
		}
		catch (Exception e) {
			if (!(e instanceof GSException)) {
				logger.error("ERROR: " + e.getMessage());
			}
		}
		finally{
			if(null != dbConnection)
			{
				dbConnection.close();
			}
		}
	return sqlOP;

}

	private boolean addFieldToMsg(String sqlOP, CJavaP72Commons commons, XMLMessage msg, DatabaseAccess dbConnection, NotificationCreator notificationCreator)
	{
		
		String [] temp = sqlOP.split("\\|");
		String mktIssOid=temp[0];
		//String mktIssOid=sqlOP;
		if (logger.isDebugEnabled()) logger.debug("addFieldToMsg:"+mktIssOid);
		
		SegmentId RISSSegId = commons.getSegmentId("RelatedIssue");
		msg.addField("MKT_ISS_OID", RISSSegId, mktIssOid);
		if (logger.isDebugEnabled()) logger.debug("Added field mkt_iss_oid to RISS");
		return true;

	}

}



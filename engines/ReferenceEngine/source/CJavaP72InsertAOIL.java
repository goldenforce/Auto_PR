
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Calendar;
import java.util.Date;

import org.apache.log4j.Logger;

import com.thegoldensource.jbre.DatabaseAccess;
import com.thegoldensource.jbre.DatabaseObjectContainer;
import com.thegoldensource.jbre.GSException;
import com.thegoldensource.jbre.JavaRule;
import com.thegoldensource.jbre.NotificationCreator;
import com.thegoldensource.jbre.ProcessorContext;
import com.thegoldensource.jbre.SegmentId;
import com.thegoldensource.jbre.XMLMessage;

public class CJavaP72InsertAOIL implements JavaRule {
	private static Logger logger = Logger.getLogger("CJavaP72InsertAOIL");
	private List<String> msgClsList = new ArrayList<String>();

	@Override
	public boolean initialize(String[] param) {
		if (param.length < 1) {
			logger.error("Required Parameters missing for CJavaP72InsertAOIL in StreetRefMsgSet ");
			return false;
		}
		if (logger.isDebugEnabled()) logger.debug("CJavaP72InsertAOIL | initialize | Started Initializing ....");

		msgClsList = Arrays.asList(param[0].split(","));

		if (msgClsList.size() == 0) {
			logger.error("Missing Required Array Parameters for Message Classification List in StreetRefMsgSet ");
			return false;
		}
		if (logger.isDebugEnabled()) logger.debug("CJavaP72InsertAOIL | initialize | Started Initializing ....");

		if (logger.isDebugEnabled()) logger.debug("CJavaP72InsertAOIL | initialize | Completed Initializing ....");
		return true;	

	}

	@Override
	public boolean process(XMLMessage msg, DatabaseObjectContainer dboc, ProcessorContext pContext, DatabaseAccess dbConnection,
			NotificationCreator nCreator) throws GSException {
		logger.info("CJavaP72InsertAOIL process start");

		if (logger.isDebugEnabled())logger.debug("Before MSG: "+msg.getXMLString());
		
		CJavaP72Commons commons = null;
		commons = new CJavaP72Commons(msg, dboc, pContext, dbConnection, nCreator);
		String msgClassification = "";
		msgClassification = commons.getMsgClassification();
		
		if (!msgClsList.contains(msgClassification)) {
			if (logger.isDebugEnabled()) logger.debug("Exiting as Message Classification is not from the configured list." + msgClassification);
			return true;
		}
		if (logger.isDebugEnabled()) logger.debug("msgClassification:" + msgClassification);
		List<SegmentId> MkisSegIdList = commons.getSegmentIds("MarketIssueCharacteristics");
				
		
		if(MkisSegIdList==null || MkisSegIdList.size() == 0)
		{
			if (logger.isDebugEnabled()) logger.debug("No MarketIssue Segment with Action ='UNKNOWN' found in msg..exiting");
			return true;
		}
		
			
		for (SegmentId MkisSegId : MkisSegIdList){
		if (logger.isDebugEnabled()) logger.debug("MkisSegId" + MkisSegId );
		if  ("UNKNOWN".equals(msg.getAction(MkisSegId))||"UPDATE".equals(msg.getAction(MkisSegId))||"INSERT".equals(msg.getAction(MkisSegId)))
		 {
			String Mktissoid =commons.getStringFieldFromMsg(MkisSegId,"MKT_ISS_OID");
			if (logger.isDebugEnabled()) logger.debug("Mktissoid :"+Mktissoid);
			if (Mktissoid == null || "".equals(Mktissoid)) 
			{
				if (logger.isDebugEnabled()) logger.debug("No MarketIssOId found in incoming message..Hence exiting..");
				return true;
			}
			else
		
				if (logger.isDebugEnabled()) logger.debug("Adding Segment/Fields to message.");
				addFieldToMsg(Mktissoid, commons, msg, dbConnection, nCreator);
				
				}
			if (logger.isDebugEnabled()) logger.debug("After MSG: "+msg.getXMLString());
		return true;
//			
//			//}
		}
//
		return true;
	}


private String getFunctionOP(String Mktissoid,  DatabaseAccess dbConnection)
{
	
	String sql = "select 				:p_Mktissoid<varchar[101]>" +  ") from dual ";
	//	String sqlOP = commons.getFirstValDB(sql);
	String sqlOP="";
	if  (Mktissoid==null) {Mktissoid="";}
		
		try{	
			if (logger.isDebugEnabled()) logger.debug("Executing sql: " + sql);
			dbConnection.setSQL(sql);
			dbConnection.addParameter(Mktissoid);
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

	private boolean addFieldToMsg(String Mktissoid, CJavaP72Commons commons, XMLMessage msg, DatabaseAccess dbConnection, NotificationCreator notificationCreator)
	{
		
		if (logger.isDebugEnabled()) logger.debug("addFieldToMsg:AIOSegId");
		Calendar cal = Calendar.getInstance();
		Date date = cal.getTime();
		String sqlgetaoidoid= "SELECT AOFD_OID FROM FT_T_AOFD AOFD WHERE AOFD.tbl_typ='MKIS'";
		String aofdId ="";
		try{	
			if (logger.isDebugEnabled()) logger.debug("Executing: " + sqlgetaoidoid);

			dbConnection.setSQL(sqlgetaoidoid);
			if (!dbConnection.execute()) {
				logger.error("ERROR: Failed to execute SQL statement.");
				
			}

			// Only fetch once, get the first result in case there are more
			if (!dbConnection.isEndOfStream()) {
				aofdId = dbConnection.getNextString().trim();
				if (logger.isDebugEnabled()) logger.debug("sqlOp from query>>" +aofdId);

		}}
		catch (Exception e) {
			if (!(e instanceof GSException)) {
				logger.error("ERROR: " + e.getMessage());
			}
		}finally{
			if(null != dbConnection)
			{
				dbConnection.close();
			}
		}
		

	
		SegmentId AIOSegId = msg.addSegment(XMLMessage.A_D_UNKNOWN, "AOFDAttributeofInterestLogDetails");
		msg.addField("START_TMS", AIOSegId, date);
		msg.addField("LAST_CHG_TMS", AIOSegId, date);
		msg.addField("PUB_TMS", AIOSegId, date);
		msg.addField("DATA_STAT_TYP", AIOSegId, "AOIPROCESSED");
		msg.addField("AOFD_OID", AIOSegId,aofdId);
		msg.addField("XREF_TBL_ROW_OID", AIOSegId, Mktissoid);
		//chk with shrikant--getUserID()
		//msg.addField("LAST_CHG_USR_ID", AIOSegId, "user1");
		msg.addField("XREF_TBL_TYP", AIOSegId, "MKIS");
		msg.addField("DATA_SRC_ID", AIOSegId, commons.getMsgDataSourceID());
		
		if (logger.isDebugEnabled()) logger.debug("Added field mkt_oid to AIOL");
		return true;

	}

}



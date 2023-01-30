import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.apache.log4j.Logger;

import com.thegoldensource.jbre.DatabaseAccess;
import com.thegoldensource.jbre.DatabaseObjectContainer;
import com.thegoldensource.jbre.GSException;
import com.thegoldensource.jbre.JavaRule;
import com.thegoldensource.jbre.NotificationCreator;
import com.thegoldensource.jbre.ProcessorContext;
import com.thegoldensource.jbre.SegmentId;
import com.thegoldensource.jbre.XMLMessage;

public class CJavaP72UpdateBNPT_MktIssOid  implements JavaRule {
	private static Logger logger = Logger.getLogger("CJavaP72UpdateBNPT_MktIssOid");
	private List<String> msgClsList  = new ArrayList<String>();
	
	@Override
	public boolean initialize(String[] param) {
		if (param.length < 1) {
			logger.error("Required Parameters missing for CJavaP72UpdateBNPT_MktIssOid in StreetRefMsgSet ");
			return false;
		}
		if (logger.isDebugEnabled()) logger.debug("CJavaP72UpdateBNPT_MktIssOid | initialize | Started Initializing ....");

		msgClsList = Arrays.asList(param[0].split(","));

		if (msgClsList.size() == 0) {
			logger.error("Missing Required Array Parameters for Message Classification List in StreetRefMsgSet ");
			return false;
		}
		if (logger.isDebugEnabled()) logger.debug("CJavaP72UpdateBNPT_MktIssOid | initialize | Started Initializing ....");

		
		return true;
	}

	@Override
	public boolean process(XMLMessage msg, DatabaseObjectContainer dboc, ProcessorContext pContext, DatabaseAccess dbConnection,
			NotificationCreator nCreator) throws GSException {
		logger.info("CJavaP72UpdateBNPT_MktIssOid process start");
		if (logger.isDebugEnabled())logger.debug("Before MSG: "+msg.getXMLString());
				
		CJavaP72Commons commons = null;
		commons = new CJavaP72Commons(msg, dboc, pContext, dbConnection, nCreator);
		
		String sqlResult="";
		//String mktOid="";
		//String mktIssOid="";
		String sedolID="";
		String isinID="";
		//String cinsID="";
		String cusipID="";
		//String tickerID="";
		String ricID="";
		//String guId="";
		//String currCde="";		
		String msgClassification="";
		
		msgClassification = commons.getMsgClassification();
		

		if ( !msgClsList.contains(msgClassification) ) {
			if (logger.isDebugEnabled()) logger.debug("Exiting as Message Classification is not from the configured list. "+msgClassification);
			return true;
		}
		
		if (logger.isDebugEnabled()) logger.debug("msgClassification:"+msgClassification);		
		
		sedolID =commons.getStringFieldFromMsg("IssueIdentifier", "ISS_ID", "ID_CTXT_TYP", "SEDOL");
		if (logger.isDebugEnabled()) logger.debug("sedolID:"+sedolID);
		
		ricID =commons.getStringFieldFromMsg("IssueIdentifier", "ISS_ID", "ID_CTXT_TYP", "RIC");
		if (logger.isDebugEnabled()) logger.debug("ricID:"+ricID);
		
		//tickerID ="";commons.getStringFieldFromMsg("IssueIdentifier", "ISS_ID", "ID_CTXT_TYP", "TICKER");
		//if (logger.isDebugEnabled()) logger.debug("tickerID:"+tickerID);					
		
		isinID =commons.getStringFieldFromMsg("IssueIdentifier", "ISS_ID", "ID_CTXT_TYP", "ISIN");
		if (logger.isDebugEnabled()) logger.debug("isinID:"+isinID);
		
		cusipID =commons.getStringFieldFromMsg("IssueIdentifier", "ISS_ID", "ID_CTXT_TYP", "CUSIP");
		if (logger.isDebugEnabled()) logger.debug("cusipID:"+cusipID);
		
		//cinsID ="";//commons.getStringFieldFromMsg("IssueIdentifier", "ISS_ID", "ID_CTXT_TYP", "CINS");
		//if (logger.isDebugEnabled()) logger.debug("cinsID:"+cinsID);
		
		if ((sedolID == null || "".equals(sedolID)) 
		 && (ricID == null || "".equals(ricID)) 
		 && (isinID == null || "".equals(isinID)) 
		 && (cusipID == null || "".equals(cusipID)))
		{
			if (logger.isDebugEnabled()) logger.debug("No SEDOL or RIC  or ISIN or CUSIP found in incoming message..Hence exiting..");
			return true;
		}
		
		
		if (logger.isDebugEnabled()) logger.debug("Calling function...");
		sqlResult=getFunctionOP(sedolID, ricID, "", "", "", isinID, cusipID, "", "", "", msgClassification, dbConnection);	
		if (logger.isDebugEnabled()) logger.debug("sqlResult:"+sqlResult);
		
		if(sqlResult == null || "".equals(sqlResult))
		{
			if (logger.isDebugEnabled()) logger.debug("No value fetched from sql function.. hence exiting");
					
		}
		
		else
		{
			if (logger.isDebugEnabled()) logger.debug("Adding Segment/Fields to message.");
			addFieldToMsg(sqlResult, commons, msg, dbConnection, nCreator);
			
		}

		if (logger.isDebugEnabled()) logger.debug("After MSG: "+msg.getXMLString());
	return true;
		
		
	

}

private String getFunctionOP(String sedol, String ric, String ticker, String rtticker, String bbtrdgsymb, String isin, String cusip, String cins, 
									String guId, String currCde, String msgClsfcn, DatabaseAccess dbConnection)
{
	String sql = "select GETCMPOSITEMKTOID(:p_sedol<char[101]>,"
										+ ":p_ric<char[101]>, "
										+ ":p_ticker<char[101]>, "
										+ ":p_rtticker<char[101]>, "
										+ ":p_bbtrdgsymb<char[101]>, "
										+ ":p_isin<char[101]>, "
										+ ":p_cusip<char[101]>, "
										+ ":p_cins<char[101]>,"
										+ ":p_gu_id<char[11]>,"
										+ ":p_denom_curr_cde<char[4]>, "
										+ ":p_msgclsfcn<char[101]>"
										+ ") from dual ";
		//sqlOP = commons.getFirstValDB(sql);
	String sqlOP="";
	
	if (guId==null)
	{
		guId="";
	}	
	
	if (currCde==null)
	{
		currCde="";
	}
	if (sedol==null)
	{
		sedol="";
	}	
	
	if (ric==null)
	{
		ric="";
	}
	if (ticker==null)
	{
		ticker="";
	}
	if (rtticker==null)
	{
		rtticker="";
	}	
	if (bbtrdgsymb==null)
	{
		bbtrdgsymb="";
	}	
	
	if (isin==null)
	{
		isin="";
	}
	if (cusip==null)
	{
		cusip="";
	}
	if (cins==null)
	{
		cins="";
	}
	
		try{	
			if (logger.isDebugEnabled()) logger.debug("Executing: " + sql);
		
			dbConnection.setSQL(sql);
			dbConnection.addParameter(sedol);
			dbConnection.addParameter(ric);
			dbConnection.addParameter(ticker);
			dbConnection.addParameter(rtticker);
			dbConnection.addParameter(bbtrdgsymb);
			dbConnection.addParameter(isin);
			dbConnection.addParameter(cusip);
			dbConnection.addParameter(cins);
			dbConnection.addParameter(guId);
			dbConnection.addParameter(currCde);
			dbConnection.addParameter(msgClsfcn);
			if (!dbConnection.execute()) {
				logger.error("ERROR: Failed to execute SQL statement.");
				
			}
		
			// Only fetch once, get the first result in case there are more
			if (!dbConnection.isEndOfStream()) {
				sqlOP = dbConnection.getNextString().trim();
				if (logger.isDebugEnabled()) logger.debug("sqlOp from query>>" +sqlOP);
		
		}}
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
		//String mktOid=temp[0];
		String mktIssOid=temp[1];
		if (logger.isDebugEnabled()) logger.debug("addFieldToMsg:"+mktIssOid);
		
		SegmentId bnptSegId = commons.getSegmentId("BNCHParticipant");
		msg.addField("MKT_ISS_OID", bnptSegId, mktIssOid);
		if (logger.isDebugEnabled()) logger.debug("Added field mkt_iss_oid to BNPT");
		return true;

	}

	
	

	
	
	
	
	
	

}


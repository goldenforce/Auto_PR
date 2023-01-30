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

public class CJavaP72UpdateISGP implements JavaRule {
   
	private static Logger logger = Logger.getLogger("CJavaP72UpdateISGP");	
	private List<String> msgClsList  = new ArrayList<String>();
	
	@Override
	public boolean initialize(String[] param) {
		if (param.length < 1) {
			logger.error("Required Parameters missing for CJavaP72UpdateISGP in StreetRefMsgSet ");
			return false;
		}
		logger.debug("CJavaP72UpdateISGP | initialize | Started Initializing ....");

		msgClsList = Arrays.asList(param[0].split(","));

		if (msgClsList.size() == 0) {
			logger.error("Missing Required Array Parameters for Message Classification List in StreetRefMsgSet ");
			return false;
		}
		logger.debug("CJavaP72UpdateISGP | initialize | Started Initializing ....");

		return true;
	}

@Override
public boolean process(XMLMessage msg, DatabaseObjectContainer dboc, ProcessorContext pContext, DatabaseAccess dbConnection,
		NotificationCreator nCreator) throws GSException {
	logger.info("CJavaP72UpdateISGP process start");
	
	logger.debug("Before MSG: "+msg.getXMLString());
	
	CJavaP72Commons commons = null;
	commons = new CJavaP72Commons(msg, dboc, pContext, dbConnection, nCreator);
	
	//String mktOid="";
	String mktIssOid="";
	String sedolID="";
	String isinID="";
	String cusipID="";
	String ricID="";
	String tickerID="";
	String bbglobalID="";
	String cinsID="";
	String sqlResult="";		
	String guId="";
	String currCde="";
	String msgClassification="";
	msgClassification = commons.getMsgClassification();
	
	if ( !msgClsList.contains(msgClassification) ) {
		logger.debug("Exiting as Message Classification is not from the configured list. "+msgClassification);
		return true;
	}
	
	logger.debug("msgClassification:"+msgClassification);
	
	sedolID =commons.getStringFieldFromMsg("IssueIdentifier", "ISS_ID", "ID_CTXT_TYP", "SEDOL");
	ricID =commons.getStringFieldFromMsg("IssueIdentifier", "ISS_ID", "ID_CTXT_TYP", "RIC");
	tickerID =commons.getStringFieldFromMsg("IssueIdentifier", "ISS_ID", "ID_CTXT_TYP", "TICKER");
	bbglobalID=commons.getStringFieldFromMsg("IssueIdentifier", "ISS_ID", "ID_CTXT_TYP", "BBGLOBAL");
	isinID =commons.getStringFieldFromMsg("IssueIdentifier", "ISS_ID", "ID_CTXT_TYP", "ISIN");
	cusipID =commons.getStringFieldFromMsg("IssueIdentifier", "ISS_ID", "ID_CTXT_TYP", "CUSIP");
	cinsID =commons.getStringFieldFromMsg("IssueIdentifier", "ISS_ID", "ID_CTXT_TYP", "CINS");
	
	
	if ((sedolID == null || "".equals(sedolID))
			&& (ricID == null || "".equals(ricID)) 
			&& (tickerID == null || "".equals(tickerID))
			&& (bbglobalID == null || "".equals(bbglobalID))
			&& (isinID == null || "".equals(isinID)) 
			&& (cusipID == null || "".equals(cusipID)) 
			&& (cinsID == null || "".equals(cinsID)))
	{
		logger.debug("No SEDOL or RIC or TICKER or BBGLOBAL or ISIN or CUSIP or CINS found in incoming message..Hence exiting..");
		return true;
	}
		
	guId =commons.getNestedStringFieldFromMsg(commons.getSegmentId("IssueGeoUnit"), "GeographicUnit", "PRNT_GU_ID");	
	if (logger.isDebugEnabled()) logger.debug("GU_ID: "+guId);	
	
	currCde =commons.getStringFieldFromMsg("ISSUE", "DENOM_CURR_CDE");
	if (logger.isDebugEnabled()) logger.debug("CURR_CDE:"+currCde);

	if (guId==null)
	{
		guId="";
	}	
	
	if (currCde==null)
	{
		currCde="";
	}

	if (logger.isDebugEnabled()) logger.debug("Calling function...");	
	sqlResult=getFunctionOP(sedolID, ricID, tickerID, bbglobalID,  isinID, cusipID, cinsID, guId, currCde, msgClassification, dbConnection);	
	if (logger.isDebugEnabled()) logger.debug("sqlResult:"+sqlResult);
	
	if(sqlResult == null || "".equals(sqlResult))
	{
		if (logger.isDebugEnabled()) logger.debug("No value fetched from sql function..");
		if (logger.isDebugEnabled()) logger.debug("Raising sev 50 notification with notification id 40001");
		raiseException(nCreator, 40001);
				
	}
	
	else
	{
		if (logger.isDebugEnabled()) logger.debug("Adding Segment/Fields to message.");
		SegmentId isgpSegID = commons.getSegmentId("IssueGroupParticipant");
		if (isgpSegID !=null)
		{
			String [] temp = sqlResult.split("\\|");
			//mktOid=temp[0];
			mktIssOid=temp[1];
			
			msg.addField("MKT_ISS_OID", isgpSegID, mktIssOid);
			logger.debug("Successfully added field mkt_iss_oid to Segment ID:" +isgpSegID);
			

		}
		
	}

if (logger.isDebugEnabled()) logger.debug("After MSG: " + msg.getXMLString());		
	return true;

		
}

private String getFunctionOP(String sedol, String ric, String ticker, String bbglobal,  String isin, String cusip, String cins,
				String guId, String currCde, String msgClsfcn, DatabaseAccess dbConnection)
{
	String sql = "select GETISGPCMPOSITEMKTOID(:p_sedol<char[101]>,"
						+ ":p_ric<char[101]>, "
						+ ":p_ticker<char[101]>, "
						+ ":p_bbglobal<char[101]>, "						
						+ ":p_isin<char[101]>, "
						+ ":p_cusip<char[101]>, "
						+ ":p_cins<char[101]>, "
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
	if (bbglobal==null)
	{
	bbglobal="";
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
	dbConnection.addParameter(bbglobal);	
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
	}finally{
	if(null != dbConnection)
	{
	dbConnection.close();
	}
	}
	return sqlOP;

}


private boolean raiseException(NotificationCreator notificationCreator, int notfcnID)
{
	String[] paramValues={"Could not derive composite market"};
	
	
	String[] paramNames = { "REJECTREAS"};
	if (!notificationCreator.raiseException("STRDATA","RULEPRC",notfcnID,paramNames, paramValues))
	{
	logger.error("Error Raising custom Exception "+notfcnID);
	return false;
	}
	
	
	return true;

}
}
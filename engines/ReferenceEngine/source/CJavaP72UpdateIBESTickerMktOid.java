
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
import com.thegoldensource.jbre.ScopedTransaction;
import com.thegoldensource.jbre.SegmentId;
import com.thegoldensource.jbre.XMLMessage;

public class CJavaP72UpdateIBESTickerMktOid implements JavaRule{

	
	private static Logger logger = Logger.getLogger("CJavaP72UpdateIBESTickerMktOid");	
	private List<String> msgClsList  = new ArrayList<String>();
	private List<String> idCtxtTypList  = new ArrayList<String>();
	private List<String> guidReqMsgClsList  = new ArrayList<String>();
	


@Override
public boolean initialize(String[] param) 
{	
	
	if (param.length<3){
	logger.error("Required Parameters missing for CJavaP72UpdateIBESTickerMktOid in StreetRefMsgSet ");
	return false;
	}
	if (logger.isDebugEnabled()) logger.debug("CJavaP72UpdateIBESTickerMktOid | initialize | Started Initializing ....");
	
	msgClsList = Arrays.asList(param[0].split(","));
	
	if(msgClsList.size()==0)
	{
		logger.error("Missing Required Array Parameters for Message Classification List in StreetRefMsgSet ");
		return false;
	}	
	idCtxtTypList = Arrays.asList(param[1].split(","));
	
	if(idCtxtTypList.size()==0)
	{
		logger.error("Missing Required Array Parameters for ID Context Type List in StreetRefMsgSet ");
		return false;
	}
	
	guidReqMsgClsList = Arrays.asList(param[2].split(","));
	
	if(guidReqMsgClsList.size()==0)
	{
		logger.error("Missing Required Array Parameters for guid Mandatory Msg Classification List in StreetRefMsgSet ");
		return false;
	}
	
	if (logger.isDebugEnabled()) logger.debug("CJavaP72UpdateIBESTickerMktOid | initialize | Completed Initializing ....");
	return true;	
}


@Override
public boolean process(XMLMessage msg, DatabaseObjectContainer dboc,ProcessorContext pContext, DatabaseAccess dbConnection, NotificationCreator nCreator)
		throws GSException 
{
	logger.info("CJavaP72UpdateIBESTickerMktOid process start");
	
	if (logger.isDebugEnabled()) logger.debug("Before MSG: "+msg.getXMLString());
	
	
	CJavaP72Commons commons = null;

	//String sqlResult="";
	List<String> sqlResult = new ArrayList<String>();
	
	String sedolID="";
	String isinID="";
	String cusipID="";
	String cinsID="";
	String tickerID="";
	String rttickerID ="";
	String bbtrdgsymbID ="";
	String ricID="";
	commons = new CJavaP72Commons(msg, dboc, pContext, dbConnection, nCreator);
	String guId="";
	String currCde="";
	String instrID="";
	
	String msgClassification="";
	
	msgClassification = commons.getMsgClassification();
	
	if ( !msgClsList.contains(msgClassification) ) {
		if (logger.isDebugEnabled()) logger.debug("Exiting as Message Classification is not from the configured list. "+msgClassification);
		return true;
	}
	
	if (logger.isDebugEnabled()) logger.debug("msgClassification:"+msgClassification);	
	
	instrID=pContext.getInstrId();
	if (instrID == null || "".equals(instrID))
	{
		if (logger.isDebugEnabled()) logger.debug("No INSTR_ID found.. ..Hence exiting.");			
		return true;
	}
	
	if (logger.isDebugEnabled()) logger.debug("instrID:"+instrID);	
	
	
	if ("IBESIDK".equals(msgClassification) || "IBESIDINT".equals(msgClassification) ) 
	{
	
		String geoUnitId =commons.getNestedStringFieldFromMsg(commons.getSegmentId("IssueGeoUnit"), "GeographicUnitIdentifier", "GEO_UNIT_ID");
		if (logger.isDebugEnabled()) logger.debug("GEO_UNIT_ID"+geoUnitId);
		
		guId = commons.getStringFromDB("GeographicUnitIdentifier", "GU_ID", "GU_ID_CTXT_TYP", "IBES", "GEO_UNIT_ID", geoUnitId);		
		
		if (logger.isDebugEnabled()) logger.debug("GU_ID"+guId);
	}	
	else
	{	
		guId =commons.getNestedStringFieldFromMsg(commons.getSegmentId("IssueGeoUnit"), "GeographicUnit", "PRNT_GU_ID");
	}
	
	if ((guId == null || "".equals(guId) ) && guidReqMsgClsList.contains(msgClassification))
	{
		if (logger.isDebugEnabled()) logger.debug("No GU_ID found in IssueGeoUnit ..Hence exiting.");			
		return true;
	}
	if (guId==null)
	{
		guId="";
	}
	
	
	if (!"CN".equals(guId) && !"HK".equals(guId))
	{
		currCde =commons.getStringFieldFromMsg("ISSUE", "DENOM_CURR_CDE");
		if (currCde == null || "".equals(currCde))
		{
			if (logger.isDebugEnabled()) logger.debug("DENOM_CURR_CDE not found in ISSUE segment in incoming msg.. Fetching from db (GUNT)");
			String sqlGUNT = "select pref_curr_cde from ft_t_gunt where prnt_gu_id='"+guId+"' and prnt_gu_typ='COUNTRY' and (end_tms is null or end_tms > sysdate()) ";
			currCde = commons.getFirstValDB(sqlGUNT);		
		}
		
		if (currCde==null)
		{
			currCde="";
		}
		if (logger.isDebugEnabled()) logger.debug("CURR_CDE:"+currCde);
		
		sedolID =commons.getStringFieldFromMsg("IssueIdentifier", "ISS_ID", "ID_CTXT_TYP", "SEDOL");
		if (logger.isDebugEnabled()) logger.debug("sedolID:"+sedolID);
		ricID =commons.getStringFieldFromMsg("IssueIdentifier", "ISS_ID", "ID_CTXT_TYP", "RIC");
		if (logger.isDebugEnabled()) logger.debug("ricID:"+ricID);
		tickerID =commons.getStringFieldFromMsg("IssueIdentifier", "ISS_ID", "ID_CTXT_TYP", "TICKER");
		if (logger.isDebugEnabled()) logger.debug("tickerID:"+tickerID);
		rttickerID =commons.getStringFieldFromMsg("IssueIdentifier", "ISS_ID", "ID_CTXT_TYP", "RTTICKER");
		if (logger.isDebugEnabled()) logger.debug("rttickerID:"+rttickerID);
		bbtrdgsymbID =commons.getStringFieldFromMsg("IssueIdentifier", "ISS_ID", "ID_CTXT_TYP", "BBTRDGSYMB");
		if (logger.isDebugEnabled()) logger.debug("bbtrdgsymbID:"+bbtrdgsymbID);
		isinID =commons.getStringFieldFromMsg("IssueIdentifier", "ISS_ID", "ID_CTXT_TYP", "ISIN");
		if (logger.isDebugEnabled()) logger.debug("isinID:"+isinID);
		cusipID =commons.getStringFieldFromMsg("IssueIdentifier", "ISS_ID", "ID_CTXT_TYP", "CUSIP");
		if (logger.isDebugEnabled()) logger.debug("cusipID:"+cusipID);
		cinsID =commons.getStringFieldFromMsg("IssueIdentifier", "ISS_ID", "ID_CTXT_TYP", "CINS");
		if (logger.isDebugEnabled()) logger.debug("cinsID:"+cinsID);
		
		if ((sedolID == null || "".equals(sedolID)) 
		 && (ricID == null || "".equals(ricID)) 
		 && (tickerID == null || "".equals(tickerID)) 
		 && (rttickerID == null || "".equals(rttickerID))
		 && (bbtrdgsymbID == null || "".equals(bbtrdgsymbID))
		 && (isinID == null || "".equals(isinID)) 
		 && (cusipID == null || "".equals(cusipID)) 
		 && (cinsID == null || "".equals(cinsID)) 
		 && (tickerID == null || "".equals(tickerID)))
		{
			if (logger.isDebugEnabled()) logger.debug("No SEDOL or RIC or TICKER or RTTICKER or BBTRDGSYMB or ISIN or CUSIP or CINS found in incoming message..Hence exiting..");
			return true;
		}

		if (logger.isDebugEnabled()) logger.debug("Calling function...");
		sqlResult=getFunctionOP(instrID, sedolID, ricID, tickerID, rttickerID, bbtrdgsymbID, isinID, cusipID, cinsID, guId, currCde, msgClassification, dbConnection);
	}
	
	else 
	{
		
		if (logger.isDebugEnabled()) logger.debug("Calling function...");
		sqlResult=getFunctionOP(instrID, sedolID, ricID, tickerID, rttickerID, bbtrdgsymbID, isinID, cusipID, cinsID, guId, currCde, msgClassification, dbConnection);
	}	
	
		
		
	if (logger.isDebugEnabled()) logger.debug("sqlResult:"+sqlResult);
	if (logger.isDebugEnabled()) logger.debug("sqlResult size :"+sqlResult.size());
	
	if(sqlResult == null || sqlResult.size()==0)
	{
		if (logger.isDebugEnabled()) logger.debug("No value fetched from sql function..");
		if (logger.isDebugEnabled()) logger.debug("Raising sev 50 notification with notification id 40001");
		raiseException(nCreator, 40001);
				
	}
	
	else
	{
		if (logger.isDebugEnabled()) logger.debug("Adding Segment/Fields to message.");
		
			addFieldToMsg(sqlResult, commons, msg, dbConnection, nCreator);
		
		
	}
	if (logger.isDebugEnabled()) logger.debug("AFTER MSG: "+msg.getXMLString());
	
return true;
	

}


private List<String> getFunctionOP(String instrId, String sedol, String ric, String ticker, String rtticker, String bbtrdgsymb, String isin, String cusip, String cins, 
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
	
	String sqlCNHK = "select GETIBESTKRCMPOSITEMKTOID(:p_instr_id<char[11]>,"
			+ ":p_gu_id<char[11]>,"			
			+ ":p_msgclsfcn<char[101]>"
			+ ") from dual ";	
	
		//sqlOP = commons.getFirstValDB(sql);
	//String sqlOP="";
	List<String> sqlOP = new ArrayList<String>();
	
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
			
				if (!"CN".equals(guId) && !"HK".equals(guId))
				{	
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
					
					while (!dbConnection.isEndOfStream()) 
					{
						sqlOP.add(dbConnection.getNextString().trim());
						if (logger.isDebugEnabled()) logger.debug("sqlOp from query>>" +sqlOP);
				
					}
				}
				else
				{
					if (logger.isDebugEnabled()) logger.debug("Executing: " + sqlCNHK);
					dbConnection.setSQL(sqlCNHK);
					dbConnection.addParameter(instrId);			
					dbConnection.addParameter(guId);				
					dbConnection.addParameter(msgClsfcn);
					if (!dbConnection.execute()) 
					{
						logger.error("ERROR: Failed to execute SQL statement.");
						
					}
				
					
					if (!dbConnection.isEndOfStream()) 
					{
						String result = (dbConnection.getNextString().trim());
						if (logger.isDebugEnabled()) logger.debug("result from query>>>" +result);
						sqlOP= Arrays.asList(result.split("<P72DEL>"));
						if (logger.isDebugEnabled()) logger.debug("sqlOp from query>>>" +sqlOP);
				
					}
				 }
			
			}
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



private boolean addFieldToMsg(List<String> sqlOpList, CJavaP72Commons commons, XMLMessage msg, DatabaseAccess dbConnection, NotificationCreator notificationCreator)
{
		
	String idCtxtTyp="";		
	
			for (int i=0; i<idCtxtTypList.size(); i++)
			{
				idCtxtTyp=idCtxtTypList.get(i);
				SegmentId isidSegID = commons.getSegmentId("IssueIdentifier", "ID_CTXT_TYP", idCtxtTyp);
				//issId=commons.getStringFieldFromMsg(isidSegID, "ISS_ID");
				
				if (isidSegID !=null)
				{
					if (sqlOpList.size()==1)
					{
						String [] temp = sqlOpList.get(0).split("\\|");
						String mktOid=temp[0];
						String mktIssOid=temp[1];	
						
						msg.addField("MKT_OID", isidSegID, mktOid);
						if (logger.isDebugEnabled()) logger.debug("Successfully added field mkt_oid to Segment ID:"+isidSegID);					
						
						SegmentId mixrSegId =  commons.getSegmentId("ISIDMarketIssueCrossReference"); 
						msg.addField("MKT_ISS_OID", mixrSegId, mktIssOid);
					}
				
				
					else
					{
						for (int j=0; j<sqlOpList.size(); j++)
						{	
							String [] temp = sqlOpList.get(j).split("\\|");
							String mktOid=temp[0];
							String mktIssOid=temp[1];	
							
							if (j==0)
							{	
								msg.addField("MKT_OID", isidSegID, mktOid);
								if (logger.isDebugEnabled()) logger.debug("Successfully added field mkt_oid to Segment ID:"+isidSegID);					
								
								SegmentId mixrSegId =  commons.getSegmentId("ISIDMarketIssueCrossReference"); 
								msg.addField("MKT_ISS_OID", mixrSegId, mktIssOid);
							}
							else
							{
								SegmentId newISIDSegId =  msg.addSegment(XMLMessage.A_UNKNOWN,"IssueIdentifier"); 
								if (logger.isDebugEnabled()) logger.debug("Adding new ISID segment with SegmentID:"+newISIDSegId);
								msg.setSegmentAttribute(newISIDSegId, "MATCH", "ISID7_INSTR_CTX_MKT_USG");								
								msg.addField("ISS_ID", newISIDSegId, commons.getStringFieldFromMsg(isidSegID, "ISS_ID"));
								msg.addField("ID_CTXT_TYP", newISIDSegId, commons.getStringFieldFromMsg(isidSegID, "ID_CTXT_TYP"));
								msg.addField("DATA_STAT_TYP", newISIDSegId, commons.getStringFieldFromMsg(isidSegID, "DATA_STAT_TYP"));
								msg.addField("START_TMS", newISIDSegId, commons.getDateFieldFromMsg(isidSegID, "START_TMS"));
								msg.addField("MKT_OID", newISIDSegId, mktOid);
								
								//Adding MIXR segment
								SegmentId mixrSegId =  msg.addSegment(XMLMessage.A_UNKNOWN,"ISIDMarketIssueCrossReference");
								if (logger.isDebugEnabled()) logger.debug("Adding new MIXR segment with SegmentID:"+mixrSegId);
								msg.addField("MKT_ISS_OID", mixrSegId, mktIssOid);
								
							}	
						}
					}
					
				}	
		
		}	
		return true;

}



}

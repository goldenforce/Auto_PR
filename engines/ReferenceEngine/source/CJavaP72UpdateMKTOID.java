
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


public class CJavaP72UpdateMKTOID implements JavaRule {
	
	private static Logger logger = Logger.getLogger("CJavaP72UpdateMKTOID");	
	private List<String> msgClsList  = new ArrayList<String>();
	private List<String> idCtxtTypList  = new ArrayList<String>();
	private List<String> guidReqMsgClsList  = new ArrayList<String>();
	


@Override
public boolean initialize(String[] param) 
{	
	
	if (param.length<3){
	logger.error("Required Parameters missing for CJavaP72UpdateMKTOID in StreetRefMsgSet ");
	return false;
	}
	if (logger.isDebugEnabled()) logger.debug("CJavaP72UpdateMKTOID | initialize | Started Initializing ....");
	
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
	
	if (logger.isDebugEnabled()) logger.debug("CJavaP72UpdateMKTOID | initialize | Completed Initializing ....");
	return true;	
}


@Override
public boolean process(XMLMessage msg, DatabaseObjectContainer dboc,ProcessorContext pContext, DatabaseAccess dbConnection, NotificationCreator nCreator)
		throws GSException 
{
	logger.info("CJavaP72UpdateMKTOID process start");
	
	if (logger.isDebugEnabled()) logger.debug("Before MSG: "+msg.getXMLString());
	
	
	CJavaP72Commons commons = null;
	//String instrId= pContext.getInstrId();
	String sqlResult="";
	//String mktOid="";
	//String mktIssOid="";
	String sedolID="";
	String isinID="";
	String cusipID="";
	String cinsID="";
	String tickerID="";
	String rttickerID ="";
	String bbtrdgsymbID ="";
	String ricID="";
	commons = new CJavaP72Commons(msg, dboc, pContext, dbConnection, nCreator);
	//Boolean raiseSev40=false;
	String guId="";
	String currCde="";
	//String idCtxtTyp="SEDOL";
	String msgClassification="";
	
	msgClassification = commons.getMsgClassification();
	
	if ( !msgClsList.contains(msgClassification) ) {
		if (logger.isDebugEnabled()) logger.debug("Exiting as Message Classification is not from the configured list. "+msgClassification);
		return true;
	}
	
	if (logger.isDebugEnabled()) logger.debug("msgClassification:"+msgClassification);	
	
	
	
	if("BARRAID".equals(msgClassification) )		
	{
		guId =commons.getNestedStringFieldFromMsg(commons.getSegmentId("IssueGeoUnit"), "GeographicUnit", "PRNT_GU_ID", "PRNT_GU_TYP","COUNTRY");
		
		if (guId == null || "".equals(guId))
		{			
			if (logger.isDebugEnabled()) logger.debug("Cannot find GU_ID in GUNT table");
			String geoUnitId =commons.getNestedStringFieldFromMsg(commons.getSegmentId("IssueGeoUnit"), "GeographicUnitIdentifier", "GEO_UNIT_ID");
			if (logger.isDebugEnabled()) logger.debug("GEO_UNIT_ID"+geoUnitId);
			
			guId = commons.getStringFromDB("GeographicUnitIdentifier", "GU_ID", "GU_ID_CTXT_TYP", "ISO3", "GEO_UNIT_ID", geoUnitId);		
			
			if ((guId == null || "".equals(guId)))
			{
				if (logger.isDebugEnabled()) logger.debug("Cannot find GU_ID in GUID table using ID_CTXT_TYP ISO3..hence fetching using ID_CTXT_TYP BARRA");
				guId = commons.getStringFromDB("GeographicUnitIdentifier", "GU_ID", "GU_ID_CTXT_TYP", "BARRA","GEO_UNIT_ID", geoUnitId);
			}
			
		}
		if (logger.isDebugEnabled()) logger.debug("GU_ID"+guId);
		
	}
	
	else if("WSID".equals(msgClassification) || "STARMINE".equals(msgClassification)|| "POINTID".equals(msgClassification))
	{
		String geoUnitId="";
		String gunt_oid="";
		
		if (logger.isDebugEnabled()) logger.debug("Fetching ISGU Segment ID");	
		SegmentId isguSegID=commons.getSegmentId("IssueGeoUnit");
		if (logger.isDebugEnabled()) logger.debug("isguSegID"+isguSegID);	
		
		if (null !=isguSegID)
		{
		    geoUnitId =commons.getNestedStringFieldFromMsg(new SegmentId(isguSegID+"-0"), "GeographicUnitIdentifier", "GEO_UNIT_ID");
			if (logger.isDebugEnabled()) logger.debug("GEO_UNIT_ID"+geoUnitId);		
			
			if (geoUnitId!=null && !"".equals(geoUnitId))
			{
				//String gunt_oid= commons.getStringFromDB("GeographicUnitIdentifier", "GUNT_OID", "GEO_UNIT_ID",geoUnitId);
				if ("WSID".equals(msgClassification))
				{	
					gunt_oid= commons.getStringFromDB("GeographicUnitIdentifier", "GUNT_OID", "GU_ID_CTXT_TYP", "WORLDSCOPE", "GEO_UNIT_ID",geoUnitId);
				}
				else if ("STARMINE".equals(msgClassification))
				{
					gunt_oid= commons.getStringFromDB("GeographicUnitIdentifier", "GUNT_OID", "GU_ID_CTXT_TYP", "STARMINE", "GEO_UNIT_ID",geoUnitId);
				}
				else //POINTID
				{					
						gunt_oid= commons.getStringFromDB("GeographicUnitIdentifier", "GUNT_OID", "GU_ID_CTXT_TYP", "ISO3", "GEO_UNIT_ID",geoUnitId);
					
				}
			}
		}
		if (logger.isDebugEnabled()) logger.debug("GUNT_OID:"+gunt_oid);
		
		if (gunt_oid!=null && !"".equals(gunt_oid))
		{		
			guId = commons.getStringFromDB("GeographicUnit", "PRNT_GU_ID","GUNT_OID", gunt_oid);		
		}	
		/*if ((guId == null || "".equals(guId)) && "WSID".equals(msgClassification))
		{
			logger.debug("Cannot find GU_ID in GUID table using ID_CTXT_TYP ISO3..hence fetching using ID_CTXT_TYP WSID");
			guId = commons.getStringFromDB("GeographicUnitIdentifier", "GU_ID", "GU_ID_CTXT_TYP", "WSID","GEO_UNIT_ID", geoUnitId);
		}*/		
				
		if (logger.isDebugEnabled()) logger.debug("GU_ID"+guId);
		
	}
	else if ("IBESIDK".equals(msgClassification) || "IBESIDINT".equals(msgClassification) ) 
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
	
	//if ((guId == null || "".equals(guId) ) && "POINTID".equals(msgClassification) && !"GVKEYD".equals(msgClassification) && !"IBESIDINT".equals(msgClassification) && !"CMPSTATSEC".equals(msgClassification))
	if ((guId == null || "".equals(guId) ) && guidReqMsgClsList.contains(msgClassification))
	{
		if (logger.isDebugEnabled()) logger.debug("No GU_ID found in IssueGeoUnit ..Hence exiting.");			
		return true;
	}
	
	
	currCde =commons.getStringFieldFromMsg("ISSUE", "DENOM_CURR_CDE");
	if ((currCde == null || "".equals(currCde)) && !"GVKEYF".equals(msgClassification) && !"GVKEYD".equals(msgClassification))
	{
		if (logger.isDebugEnabled()) logger.debug("DENOM_CURR_CDE not found in ISSUE segment in incoming msg.. Fetching from db (GUNT)");
		String sqlGUNT = "select pref_curr_cde from ft_t_gunt where prnt_gu_id='"+guId+"' and prnt_gu_typ='COUNTRY' and (end_tms is null or end_tms > sysdate()) ";
		currCde = commons.getFirstValDB(sqlGUNT);		
	}
	
	if (logger.isDebugEnabled()) logger.debug("CURR_CDE:"+currCde);

	if (guId==null)
	{
		guId="";
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
	sqlResult=getFunctionOP(sedolID, ricID, tickerID, rttickerID, bbtrdgsymbID, isinID, cusipID, cinsID, guId, currCde, msgClassification, dbConnection);	
	if (logger.isDebugEnabled()) logger.debug("sqlResult:"+sqlResult);
	
	if(sqlResult == null || "".equals(sqlResult))
	{
		if (logger.isDebugEnabled()) logger.debug("No value fetched from sql function..");
		if (logger.isDebugEnabled()) logger.debug("Raising sev 50 notification with notification id 40001");
		raiseException(nCreator, 40001, sqlResult, "ISIN");
				
	}
	
	else
	{
		if (logger.isDebugEnabled()) logger.debug("Adding Segment/Fields to message.");
		addFieldToMsg(sqlResult, commons, msg, dbConnection, nCreator,msgClassification);
		
	}

	if (logger.isDebugEnabled()) logger.debug("After MSG: " + msg.getXMLString());

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
		}finally{
			if(null != dbConnection)
			{
				dbConnection.close();
			}
		}
	return sqlOP;

}


private boolean raiseException(NotificationCreator notificationCreator, int notfcnID, String notfcnType, String idCtxtTyp)
{
	String[] paramValues={"Could not derive composite market"};

	if("503".equals(notfcnType))
	{		
		paramValues[0] = "Different  "+idCtxtTyp+" Identifier already exists on the listing." ;
			
	}
	
	String[] paramNames = { "REJECTREAS"};
	if (!notificationCreator.raiseException("STRDATA","RULEPRC",notfcnID,paramNames, paramValues))
	{
		logger.error("Error Raising custom Exception "+notfcnID);
		return false;
	 }

	
	return true;

}



private boolean addFieldToMsg(String sqlOP, CJavaP72Commons commons, XMLMessage msg, DatabaseAccess dbConnection, NotificationCreator notificationCreator,String msgClassification)
{
	
	String [] temp = sqlOP.split("\\|");
	String mktOid=temp[0];
	String mktIssOid=temp[1];
	
	// check if  id already exists on mkt_iss_oid
	/*String isidCheckSql = "select 'Y' from ft_t_mkis mkis, ft_t_mixr mixr, ft_t_isid isid "
							+ "where mkis.mkt_iss_oid=mixr.mkt_iss_oid "
							+ "and mixr.isid_oid=isid.isid_oid "
							+ "and isid.id_ctxt_typ=:p_id_ctxt_typ<char[101]> "
							+ "and isid.iss_id!=:p_iss_id<char[101]> "
							+ "and mkis.mkt_iss_oid=:p_mkt_iss_oid<char[11]> "
							+ "AND (ISID.END_TMS IS NULL OR ISID.END_TMS > SYSDATE()) "
							+ "AND (MKIS.END_TMS IS NULL OR MKIS.END_TMS > SYSDATE()) "
							+ "AND (MIXR.END_TMS IS NULL OR MIXR.END_TMS > SYSDATE())";*/
	//String sqlResult="";
	//String issId="";
	String idCtxtTyp="";
	
			
	
			for (int i=0; i<idCtxtTypList.size(); i++)
			{
				idCtxtTyp=idCtxtTypList.get(i);
				SegmentId isidSegID = commons.getSegmentId("IssueIdentifier", "ID_CTXT_TYP", idCtxtTyp);
				//issId=commons.getStringFieldFromMsg(isidSegID, "ISS_ID");
				if (isidSegID !=null)
				{
					/*try{	
						if (logger.isDebugEnabled()) logger.debug("Executing: " + isidCheckSql);
					
						dbConnection.setSQL(isidCheckSql);
						dbConnection.addParameter(idCtxtTyp);
						dbConnection.addParameter(issId);
						dbConnection.addParameter(mktIssOid);				
						if (!dbConnection.execute()) {
							logger.error("ERROR: Failed to execute SQL statement.");
							
						}
					
						// Only fetch once, get the first result in case there are more
						if (!dbConnection.isEndOfStream()) {
							sqlResult = dbConnection.getNextString().trim();
							if (logger.isDebugEnabled()) logger.debug("sqlOp from query>>" +sqlResult);
					
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

					if ( !"".equals(sqlResult) && sqlResult != null)
					{
						if (logger.isDebugEnabled()) logger.debug("Raising sev 50 error and exiting as Different " +idCtxtTyp+ " already exists with MKT_ISS_OID: "+mktIssOid);
						raiseException(notificationCreator, 40001, "503", idCtxtTyp);
						return true;
						
					}*/
					//else
					//{	
						msg.addField("MKT_OID", isidSegID, mktOid);
						if (logger.isDebugEnabled()) logger.debug("Successfully added field mkt_oid to Segment ID:"+isidSegID);
						
						//To be added MKIS reference segment
						//SegmentId mkisSegId = msg.addSegment(XMLMessage.A_REFERENCE, "MarketIssueCharacteristics");
						SegmentId mixrSegId =  commons.getSegmentId("ISIDMarketIssueCrossReference"); 
						msg.addField("MKT_ISS_OID", mixrSegId, mktIssOid);
						if (logger.isDebugEnabled()) logger.debug("CJavaP72UpdateMKTOID msgClassification" +msgClassification);
						if("POSITIONID".equals(msgClassification) || "POINTID".equals(msgClassification) )
						{
							if (logger.isDebugEnabled()) logger.debug(" CJavaP72UpdateMKTOID calling  createSpecialistID fucntion" + mktIssOid);			
							createSpecialistID(mktIssOid, msg, dbConnection);
						}
						logger.info("CJavaP72UpdateMKTOID process end");
				if (logger.isDebugEnabled()) logger.debug("After MSG: " +msg.getXMLString());
		
					//}
				}	
		
		}	
		return true;

}

private boolean createSpecialistID(String mktIssOid, XMLMessage msg, DatabaseAccess dbConnection)
	{			
		if (mktIssOid == null || "".equals(mktIssOid) )
		{
			if (logger.isDebugEnabled()) logger.debug("mkt_iss_oid is null or blank..hence exiting");			
			return true;
		}
		
		String seqSql = "select p72getspecialistid_mkis() from dual";
		String seqId = "";
		try 
		{
			if (logger.isDebugEnabled()) logger.debug("Executing sql_iss_id: " + seqSql);

			dbConnection.setSQL(seqSql);
			if (!dbConnection.execute()) {
				logger.error("ERROR: Failed to execute SQL statement.");

			}

			// Only fetch once, get the first result in case there
			// are more
			if (!dbConnection.isEndOfStream()) {
				seqId = dbConnection.getNextString().trim();
				if (logger.isDebugEnabled())
					logger.debug("seqId from p72getspecialistid_mkis function>>" + seqId);

			}
		} catch (Exception e) {
			if (!(e instanceof GSException)) {

				logger.error("ERROR: " + e.getMessage());
			}
		} finally {
			if (null != dbConnection) {
				dbConnection.close();
			}
		}

		if (seqId == null || "".equals(seqId)) 
		{
			if (logger.isDebugEnabled()) logger.debug("No Sequence number generated.Hence exiting..");
			return true;
		}
		

		if (logger.isDebugEnabled()) logger.debug("CJavaP72UpdateMKTOID Updating MKIS segment");
		//Date sysdate;
		//sysdate = new Date();
		//if (logger.isDebugEnabled()) logger.debug("sysdate:"+sysdate);
		SegmentId newMkisSegId =   msg.addSegment(XMLMessage.A_D_UNKNOWN,"MarketIssueCharacteristics"); 					
		msg.addField("MKT_ISS_OID", newMkisSegId, mktIssOid);				
		msg.addField("SPECIALIST_ID", newMkisSegId, seqId);
		
		
		return true;
	
	}



}
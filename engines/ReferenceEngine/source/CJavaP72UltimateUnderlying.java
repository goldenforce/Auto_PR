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

public class CJavaP72UltimateUnderlying implements JavaRule {
	private static Logger logger = Logger.getLogger("CJavaP72UltimateUnderlying");
	private List<String> msgClsList = new ArrayList<String>();

	@Override
	public boolean initialize(String[] param) {
		if (param.length < 1) {
			logger.error("Required Parameters missing for CJavaP72UltimateUnderlying in StreetRefMsgSet ");
			return false;
		}
		if (logger.isDebugEnabled()) logger.debug("CJavaP72UltimateUnderlying | initialize | Started Initializing ....");

		msgClsList = Arrays.asList(param[0].split(","));

		if (msgClsList.size() == 0) {
			logger.error("Missing Required Array Parameters for Message Classification List in StreetRefMsgSet ");
			return false;
		}
		if (logger.isDebugEnabled()) logger.debug("CJavaP72UltimateUnderlying | initialize | Started Initializing ....");

		if (logger.isDebugEnabled()) logger.debug("CJavaP72UltimateUnderlying | initialize | Completed Initializing ....");
		return true;	

	}

	@Override
	public boolean process(XMLMessage msg, DatabaseObjectContainer dboc, ProcessorContext pContext,
			DatabaseAccess dbConnection, NotificationCreator nCreator) throws GSException {
		logger.info("CJavaP72UltimateUnderlying process start");

		if (logger.isDebugEnabled())logger.debug("Before MSG: "+msg.getXMLString());
		
		CJavaP72Commons commons = null;
		commons = new CJavaP72Commons(msg, dboc, pContext, dbConnection, nCreator);
		String msgClassification = "";
		msgClassification = commons.getMsgClassification();	
		
		String p72InstTyp1="";
		String p72InstTyp2="";
		String mktIssOid="";
		String positionID = "";
		String cl_value="";
		//String instr_id="";
		String rissMktIssOid="";
		String statCharValTXT="";
		String positionIDOptions="";
		
		//Msg Classification Check
		if (!msgClsList.contains(msgClassification)) {
			if (logger.isDebugEnabled()) logger.debug("Exiting as Message Classification is not from the configured list." + msgClassification);
			return true;
		}
		if (logger.isDebugEnabled()) logger.debug("msgClassification:" + msgClassification);
		
		SegmentId mkisSegId = commons.getSegmentId("MarketIssueCharacteristics");
		if (logger.isDebugEnabled()) logger.debug("mkisSegId:"+mkisSegId);
		

		if (mkisSegId==null || mkisSegId.isEmpty()) {
			if (logger.isDebugEnabled()) logger.debug("No MKIS Segment found in msg..exiting");
			return true;
		}
		
		
		if ("E".equals(commons.getSegmentProcessInd(mkisSegId)) || "D".equals(commons.getSegmentProcessInd(mkisSegId)))		
		{
			if (logger.isDebugEnabled()) logger.debug("MKIS Segment is marked as Delete or Error..hence exiting");
			return true;
		}
		
	
		mktIssOid = commons.getStringFieldFromMsg(mkisSegId, "MKT_ISS_OID");
		if (mktIssOid == null || "".equals(mktIssOid) )
		{
			if (logger.isDebugEnabled()) logger.debug("No MKT_ISS_OID found in MKIS Segment in msg..exiting");
			return true;
		}
		if (logger.isDebugEnabled()) logger.debug("MKT_ISS_OID>>>" + mktIssOid);	
		
		String mktOid=commons.getStringFromMsgDB("MarketIssueCharacteristics", "MKT_OID", "MKT_ISS_OID", mktIssOid);
		rissMktIssOid = commons.getStringFieldFromMsg("RelatedIssue", "MKT_ISS_OID", "ISS_PART_RL_TYP", "UNDLYING");

		if (mktOid == null || "".equals(mktOid) )
		{
			if (logger.isDebugEnabled()) logger.debug("No mktOid found in MKIS Segment in msg..exiting");
			return true;
		}
		if (logger.isDebugEnabled()) logger.debug("mktOid>>>" + mktOid);	
		
		String instrId = pContext.getInstrId();
		if (instrId == null || "".equals(instrId) )
		{
			if (logger.isDebugEnabled()) logger.debug("Cannot fetch Instr Id from msg..hence exiting");
			return true;
		}			
		if (logger.isDebugEnabled()) logger.debug("instrId:" + instrId);
		
		
		
		p72InstTyp1 = commons.getP72InstrTyp(instrId, "1");
		p72InstTyp2 = commons.getP72InstrTyp(instrId, "2");
		
		if ((p72InstTyp1 == null || "".equals(p72InstTyp1) ) && (p72InstTyp2 == null || "".equals(p72InstTyp2) ))
		{
			if (logger.isDebugEnabled()) logger.debug("P72 Instrument Type1 and Type 2 not present..Hence exiting.");	
			return true;
		}	
		if (logger.isDebugEnabled()) logger.debug("p72InstTyp1:"+p72InstTyp1);		
		if (logger.isDebugEnabled()) logger.debug("p72InstTyp2:"+p72InstTyp2);		
		
		
		if ("Equity".equals(p72InstTyp1) || "Funds".equals(p72InstTyp1) || "Equity Rights".equals(p72InstTyp2) || "Equity Warrants".equals(p72InstTyp2))
		{

			String instrIssrId = commons.getStringFromMsgDB("Issue", "INSTR_ISSR_ID", "INSTR_ID",instrId);
			if (instrIssrId == null || "".equals(instrIssrId) )
			{
				if (logger.isDebugEnabled()) logger.debug("INSTR_ISSR_ID not found, neither in msg nor in db..exiting");
				return true;
			}
			if (logger.isDebugEnabled()) logger.debug("INSTR_ISSR_ID:"+instrIssrId);
			
				String sqlMKIS = "select mixr.mkt_iss_oid"
								+ " from ft_t_irst irst, ft_t_isid isid, ft_t_mixr mixr"
								+ " where irst.stat_def_id ='EQFUNDTK'"
								+ " and irst.stat_char_val_txt = isid.iss_id"
								+ " and isid.id_ctxt_typ ='BBCPTICK'"
								+ " and irst.instr_issr_id = :p_instr_issr_id<char[11]>"
								+ " and isid.isid_oid = mixr.isid_oid"
								+ " and (irst.end_tms is null or irst.end_tms > sysdate())"
								+ " and (isid.end_tms is null or isid.end_tms > sysdate())"
								+ " and (mixr.end_tms is null or mixr.end_tms > sysdate());";
				
				String mkisOP="";
				
				try{	
					if (logger.isDebugEnabled()) logger.debug("Executing sql: " + sqlMKIS);
					dbConnection.setSQL(sqlMKIS);
					dbConnection.addParameter(instrIssrId);
					
					if (!dbConnection.execute()) {
						logger.error("ERROR: Failed to execute SQL statement.");
					}
	
					// Only fetch once, get the first result in case there are more
					if (!dbConnection.isEndOfStream()) {
						mkisOP = dbConnection.getNextString().trim();
						if (logger.isDebugEnabled()) logger.debug("sqlOp from query>>" +mkisOP);
				
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
					
			if (mkisOP != null || !"".equals(mkisOP) )
			{
				positionID = getPositionID(mkisOP, dbConnection);
				
			}
			
			if (positionID == null || "".equals(positionID) )
			{
				String sqlUltMKIS = "select mixr.mkt_iss_oid"
						+ " from ft_t_issr issr, ft_t_fist fist, ft_t_isid isid, ft_t_mixr mixr"
						+ " where issr.fins_inst_mnem = fist.inst_mnem "
						+ " and fist.stat_def_id ='ULPRTKEX'" 
						+ " and isid.id_ctxt_typ ='BBCPTICK'"
						+ " and fist.stat_char_val_txt = isid.iss_id"
						+ " and isid.isid_oid = mixr.isid_oid"
						+ " and issr.instr_issr_id = :p_instr_issr_id<char[11]>"
						+ " and (fist.end_tms is null or fist.end_tms > sysdate())"
						+ " and (issr.end_tms is null or issr.end_tms > sysdate())"
						+ " and (isid.end_tms is null or isid.end_tms > sysdate())"
						+ " and (mixr.end_tms is null or mixr.end_tms > sysdate());";
					
					String ultMkisOP="";
					
					try{	
						if (logger.isDebugEnabled()) logger.debug("Executing sql: " + sqlUltMKIS);
						dbConnection.setSQL(sqlUltMKIS);
						dbConnection.addParameter(instrIssrId);
						
						if (!dbConnection.execute()) {
							logger.error("ERROR: Failed to execute SQL statement.");
						}
			
						// Only fetch once, get the first result in case there are more
						if (!dbConnection.isEndOfStream()) {
							ultMkisOP = dbConnection.getNextString().trim();
							if (logger.isDebugEnabled()) logger.debug("sqlOp from query>>" +ultMkisOP);
					
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
						
				if (ultMkisOP != null || !"".equals(ultMkisOP) )
				{
					positionID = getPositionID(ultMkisOP, dbConnection);
					
				}
			}
						
			if (positionID == null || "".equals(positionID) )
			{
				positionID = getPositionID(mktIssOid, dbConnection);
				
			}
			
			if (positionID == null || "".equals(positionID) )
			{
				if (logger.isDebugEnabled()) logger.debug("No positionID fetched..exiting");
				return true;
			}
			
			if (logger.isDebugEnabled()) logger.debug("Position ID:"+positionID);
			
			//generate Ultimate underlying
			createID(positionID, "ULTUNDLPOSID", instrId, mktOid, mktIssOid, commons, msg, pContext, dbConnection);
			
		}	
		else if ("Options".equalsIgnoreCase(p72InstTyp2)||"Futures".equalsIgnoreCase(p72InstTyp2))
		{
			positionIDOptions = getPositionIDForOptions(mktIssOid, instrId,dbConnection);
			if (positionIDOptions == null || "".equals(positionIDOptions)) {
				if (logger.isDebugEnabled())
					logger.debug("No positionID for options fetched..exiting");
				return true;
			}
			if (logger.isDebugEnabled())
				logger.debug("CJavaP72GVUnderlyingPosition ID for options :" + positionID);
			
			//generate Ultimate underlying
			createID(positionIDOptions, "ULTUNDLPOSID", instrId, mktOid, mktIssOid, commons, msg, pContext, dbConnection);	
 
			
		}
		else if ("Fixed Income/Bond".equals(p72InstTyp1) && "Convertible Bonds".equals(p72InstTyp2)) {
			//rissMktIssOid = commons.getStringFieldFromMsg("RelatedIssue", "MKT_ISS_OID", "ISS_PART_RL_TYP", "UNDLYING");

			if (rissMktIssOid == null || "".equals(rissMktIssOid)) {
				if (logger.isDebugEnabled())
					logger.debug(
							"No MKT_ISS_OID found in RelatedIssue Segment with ISS_PART_RL_TYP='UNDLYING' found in msg..exiting");
				return true;
			}

			positionID = getPositionID(rissMktIssOid, dbConnection);
			if (positionID == null || "".equals(positionID)) {
				if (logger.isDebugEnabled())
					logger.debug("No positionID fetched..exiting");
				return true;
			}
			if (logger.isDebugEnabled())
				logger.debug("Position ID:" + positionID);

			// generate Ultimate underlying
			createID(positionID, "ULTUNDLPOSID", instrId, mktOid, mktIssOid, commons, msg, pContext, dbConnection);
		}
		else if("Fixed Income/Bond".equals(p72InstTyp1) && !"Convertible Bonds".equals(p72InstTyp2))
		{

			if (logger.isDebugEnabled()) logger.debug("CJavaP72UltimateUnderlying  not ConvertibleBonds Started");

		//	instr_id = commons.getStringFieldFromMsg("Issue", "INSTR_ID");
			cl_value = commons.getStringFromDB("IssueClassification", "CL_VALUE", "INDUS_CL_SET_ID", "BBMKTSCT",
					"INSTR_ID", instrId);
			if (cl_value == null || "".equals(cl_value)) {
				if (logger.isDebugEnabled()) logger.debug("No cl_value found in incoming message..Hence exiting ");
				return true;
			}
			if (logger.isDebugEnabled()) logger.debug("CJavaP72UltimateUnderlying cl_value >>" + cl_value);
			
			
			if("Corp".equalsIgnoreCase(cl_value))
			{
				String instrIssrId = commons.getStringFromMsgDB("Issue", "INSTR_ISSR_ID", "INSTR_ID",instrId);
				if (instrIssrId == null || "".equals(instrIssrId) )
				{
					if (logger.isDebugEnabled()) logger.debug("INSTR_ISSR_ID not found, neither in msg nor in db..exiting");
					return true;
				}
				if (logger.isDebugEnabled()) logger.debug(" CJavaP72UltimateUnderlying INSTR_ISSR_ID:"+instrIssrId);
				
				statCharValTXT = commons.getStringFromDB("IssuerStatistics", "STAT_CHAR_VAL_TXT", "STAT_DEF_ID", "BBCRPTIC",
						"INSTR_ISSR_ID", instrIssrId);

				if (logger.isDebugEnabled()) logger.debug("CJavaP72UltimateUnderlying statCharValTXT:"+statCharValTXT);
				
				// generate Ultimate underlying
				createID(statCharValTXT, "ULTUNDLPOSID", instrId, mktOid, mktIssOid, commons, msg, pContext, dbConnection);

		
				
				
			}
			else if("Govt".equalsIgnoreCase(cl_value))
			{
				
				statCharValTXT = commons.getStringFromDB("IssueStatistic", "STAT_CHAR_VAL_TXT", "STAT_DEF_ID", "BBTICKER",
						"INSTR_ID", instrId);

				if (logger.isDebugEnabled()) logger.debug("CJavaP72UltimateUnderlying Issue statCharValTXT:"+statCharValTXT);
				
				if("T".equals(statCharValTXT))
				{
					statCharValTXT="TREASURY";
				}
				else if("TII".equals(statCharValTXT))
				{

					statCharValTXT="TREASURYII";
				}
				else if("WIT".equals(statCharValTXT))
				{

					statCharValTXT="TREASURYWI";
				}
				if (logger.isDebugEnabled()) logger.debug("CJavaP72UltimateUnderlying statCharValTXT final value"+statCharValTXT);
				
				// generate Ultimate underlying
				createID(statCharValTXT, "ULTUNDLPOSID", instrId, mktOid, mktIssOid, commons, msg, pContext, dbConnection);
				
			}
			
			
		}
		

	if (logger.isDebugEnabled()) logger.debug("Successfully processed Java Rule CJavaP72UltimateUnderlying");
	if (logger.isDebugEnabled()) logger.debug("XML after processing" + msg.getXMLString());
	return true;
}

	private String getPositionIDForOptions(String mktIssOid,String instrId, DatabaseAccess dbConnection) {

		String sql = " SELECT ISID.ISS_ID" + " FROM FT_T_ISID ISID ,FT_T_RIDF RIDF ,FT_T_RISS RISS ,FT_T_MIXR MIXR"
				+ " WHERE RIDF.INSTR_ID = :p_instrId<char[11]>"
				+" AND RIDF.REL_TYP = 'UNDERLYG' AND RIDF.RLD_ISS_FEAT_ID = RISS.RLD_ISS_FEAT_ID AND RISS.INSTR_ID = ISID.INSTR_ID AND RISS.ISS_PART_RL_TYP = 'UNDLYING'" 
				+ " AND RISS.MKT_ISS_OID = MIXR.MKT_ISS_OID"
				+" AND  MIXR.isid_oid =ISID.isid_oid "
				+ " AND (ISID.END_TMS IS NULL OR ISID.END_TMS > SYSDATE())"
				+" AND (RIDF.END_TMS IS NULL OR RIDF.END_TMS > SYSDATE())AND (RISS.END_TMS IS NULL OR RISS.END_TMS > SYSDATE())"
				+ " AND ISID.id_ctxt_typ ='GSPOSITIONID';";

		String sqlOP = "";

		try {
			if (logger.isDebugEnabled())
				logger.debug("Executing sql: " + sql);
			dbConnection.setSQL(sql);
			dbConnection.addParameter(instrId);

			//dbConnection.addParameter(mktIssOid);

			if (!dbConnection.execute()) {
				logger.error("ERROR: Failed to execute SQL statement.");
			}

			// Only fetch once, get the first result in case there are more
			if (!dbConnection.isEndOfStream()) {
				sqlOP = dbConnection.getNextString().trim();
				if (logger.isDebugEnabled())
					logger.debug("sqlOp from query options >>" + sqlOP);

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
		return sqlOP;

	}
private String getPositionID( String mktIssOid,  DatabaseAccess dbConnection)
{
	
	String sql = " SELECT ISID.ISS_ID"
            +" FROM FT_T_ISID ISID, FT_T_MIXR MIXR"
			+" WHERE ISID.ISID_OID=MIXR.ISID_OID"
			+" AND ISID.ID_CTXT_TYP='GSPOSITIONID'"
			+" AND MIXR.MKT_ISS_OID=:p_mktIssOid<char[11]>"
		    +" AND (ISID.END_TMS IS NULL OR ISID.END_TMS > SYSDATE())"
		    +" AND (MIXR.END_TMS IS NULL OR MIXR.END_TMS > SYSDATE());";
	
	String sqlOP="";
	
		try{	
			if (logger.isDebugEnabled()) logger.debug("Executing sql: " + sql);
			dbConnection.setSQL(sql);
			dbConnection.addParameter(mktIssOid);
			
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

	private boolean createID(String issId, String idCtxtType, String instrId, String mktOid, String mktIssOid,
									 CJavaP72Commons commons, XMLMessage msg, ProcessorContext pContext, DatabaseAccess dbConnection)
	{
			
		if (logger.isDebugEnabled()) logger.debug("issId:"+issId);
		if (logger.isDebugEnabled()) logger.debug("idCtxtType:"+idCtxtType);
		if (logger.isDebugEnabled()) logger.debug("instrId:"+instrId);
		if (logger.isDebugEnabled()) logger.debug("mktOid:"+mktOid);
		if (logger.isDebugEnabled()) logger.debug("mktIssOid:"+mktIssOid);
		
		//Check if ID already exists
		String isidOID =""; 
		String isidOIDSql="select isid_oid from ft_t_isid where instr_id=:p_instr_id<char[11]>"
					+ " and (id_ctxt_typ=:p_id_ctxt_typ<char[21]>)"
					+ " and (mkt_oid=:p_mkt_oid<char[11]>) and (end_tms is  null or end_tms > sysdate())";
		try{	
		if (logger.isDebugEnabled()) logger.debug("Executing: " + isidOIDSql);
		
		dbConnection.setSQL(isidOIDSql);
		dbConnection.addParameter(instrId);		
		dbConnection.addParameter(idCtxtType);
		dbConnection.addParameter(mktOid);
		if (!dbConnection.execute()) {
			logger.error("ERROR: Failed to execute SQL statement.");
			
		}
		
		// Only fetch once, get the first result in case there are more
		if (!dbConnection.isEndOfStream()) {
			isidOID = dbConnection.getNextString().trim();
			if (logger.isDebugEnabled()) logger.debug("sqlOp from query>>" +isidOID);
		
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
		
		
		if (isidOID == null || "".equals(isidOID) )
		{
			isidOID= pContext.getOid();
			if (logger.isDebugEnabled()) logger.debug("Creating isidOID>>>" +isidOID);
		}		
		
		if (logger.isDebugEnabled()) logger.debug("isidOID" +isidOID);
		
		// Creating ISID for GV Underlying
		SegmentId gvIsidSegID = msg.addSegment(XMLMessage.A_D_UNKNOWN, "IssueIdentifier");
        
		msg.addField("ISID_OID", gvIsidSegID, isidOID);
		msg.addField("INSTR_ID", gvIsidSegID, instrId);
		msg.addField("ID_CTXT_TYP", gvIsidSegID, idCtxtType);
		msg.addField("ISS_ID", gvIsidSegID, issId);
		msg.addField("MKT_OID", gvIsidSegID, mktOid);
		if (logger.isDebugEnabled()) logger.debug("Successfully added field to Segment ID:" + gvIsidSegID);

		// Creating MIXR for GV Underlying
		SegmentId gvMixrSegId = msg.addSegment(XMLMessage.A_D_UNKNOWN, "ISIDMarketIssueCrossReference");
		
		msg.addField("ISID_OID", gvMixrSegId, isidOID);
		msg.addField("MKT_ISS_OID", gvMixrSegId, mktIssOid);
		if (logger.isDebugEnabled()) logger.debug("Successfully added field MKT_ISS_OID to Segment ID:" + gvMixrSegId);	

		
		return true;

	}

}



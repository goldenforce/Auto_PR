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

public class CJavaP72CreateP72BBGTICKERIdentifier implements JavaRule {
	private static Logger logger = Logger.getLogger("CJavaP72CreateP72BBGTICKERIdentifier");
	private List<String> msgClsList = new ArrayList<String>();

	@Override
	public boolean initialize(String[] param) {
		if (param.length < 1) {
			logger.error("Required Parameters missing for CJavaP72CreateP72BBGTICKERIdentifier in StreetRefMsgSet ");
			return false;
		}
		if (logger.isDebugEnabled()) logger.debug("CJavaP72CreateP72BBGTICKERIdentifier | initialize | Started Initializing ....");

		msgClsList = Arrays.asList(param[0].split(","));

		if (msgClsList.size() == 0) {
			logger.error("Missing Required Array Parameters for Message Classification List in StreetRefMsgSet ");
			return false;
		}
		if (logger.isDebugEnabled()) logger.debug("CJavaP72CreateP72BBGTICKERIdentifier | initialize | Started Initializing ....");

		return true;

	}

	@Override
	public boolean process(XMLMessage msg, DatabaseObjectContainer dboc, ProcessorContext pContext,
			DatabaseAccess dbConnection, NotificationCreator nCreator) throws GSException {
		logger.info("CJavaP72CreateP72BBGTICKERIdentifier process start");

		CJavaP72Commons commons = null;
		commons = new CJavaP72Commons(msg, dboc, pContext, dbConnection, nCreator);
		String msgClassification = "";
		msgClassification = commons.getMsgClassification();
		String sql = "";
		// String sqlOP="";
		String instr_typ = "";
		String instr_typ2 = "";
		String instr_id = "";
		String guId = "";
		String sql_guId = "";
		// String data_src_id = "";
		String mkt_oid = "";
		String mkt_iss_oid = "";
		String ticker = "";
		String cl_value = "";
		String bbCpTick = "";
		String iss_id = "";
		String sqlOp="";
		if (!msgClsList.contains(msgClassification)) {
			if (logger.isDebugEnabled()) logger.debug("Exiting as Message Classification is not from the configured list." + msgClassification);
			return true;
		}
		if (logger.isDebugEnabled()) logger.debug("msgClassification:" + msgClassification);

		// fetching instr_id
		instr_id = commons.getStringFieldFromMsg("Issue", "INSTR_ID"); // mkis
		if (instr_id == null || "".equals(instr_id)) {
			if (logger.isDebugEnabled()) logger.debug("No instrId found in incoming message..Hence exiting..");
			return true;
		}
		if (logger.isDebugEnabled()) logger.debug("instr_id >>" + instr_id);

		List<SegmentId> segIdList = commons.getSegmentIds("MarketIssueCharacteristics");
		if (segIdList.isEmpty())
		{
			if (logger.isDebugEnabled()) logger.debug("No MKIS Segment found in msg..exiting");
			return true;
		}	
		
		for (int i = 0; i < segIdList.size(); i++) {
			
			if ("E".equals(commons.getSegmentProcessInd(segIdList.get(i))) || "D".equals(commons.getSegmentProcessInd(segIdList.get(i))))		
			{
				if (logger.isDebugEnabled()) logger.debug("MKIS Segment is marked as Delete or Error..hence exiting");
				continue;
			}

			mkt_oid = commons.getStringFieldFromMsg(segIdList.get(i), "MKT_OID");
			if (logger.isDebugEnabled()) logger.debug("MKT_OID>>>"+mkt_oid);

			
			mkt_iss_oid = commons.getStringFieldFromMsg(segIdList.get(i), "MKT_ISS_OID");
			if (logger.isDebugEnabled()) logger.debug("MKT_ISS_OID>>>"+mkt_iss_oid);


			if (mkt_oid == null || "".equals(mkt_oid) || (mkt_iss_oid == null || "".equals(mkt_iss_oid))) {
				if (logger.isDebugEnabled()) logger.debug("No mkt_oid  or mkt_iss_oid found in incoming message..Hence exiting..");
				continue;
			}

			// fetching P72 Instrument Type 1
			sql = "select GETP72INSTRTYPE(:p_instr_Id<char[11]>,'1'), GETP72INSTRTYPE(:p_instr_Id1<char[11]>,'2') from DUAL";
			try {
				if (logger.isDebugEnabled()) logger.debug("Executing: " + sql);

				dbConnection.setSQL(sql);
				dbConnection.addParameter(instr_id);
				dbConnection.addParameter(instr_id);
				if (!dbConnection.execute()) {
					if (logger.isDebugEnabled()) logger.error("ERROR: Failed to execute SQL statement.");

				}

				// Only fetch once, get the first result in case there are more
				if (!dbConnection.isEndOfStream()) {
					instr_typ = dbConnection.getNextString().trim();
					instr_typ2 = dbConnection.getNextString().trim();
					if (logger.isDebugEnabled()) logger.debug("instr_typ from query>>" + instr_typ);

				}
			} catch (Exception e) {
				if (!(e instanceof GSException)) {
					logger.error("ERROR: " + e.getMessage());
				}
			}finally{
				if(null != dbConnection)
				{
					dbConnection.close();
				}
			}

			if (instr_typ == null || "".equals(instr_typ) || (!"Equity".equals(instr_typ) && !"Funds".equals(instr_typ) && !"Equity Warrants".equals(instr_typ2) && !"Equity Rights".equals(instr_typ2))) {
				if (logger.isDebugEnabled()) logger.debug("No instr_typ found or instr_typ is not Equity/Warrants/Funds/Rights...Hence exiting..");
				return true;
			}

			if (logger.isDebugEnabled()) logger.debug("instrument type 1 is>>" + instr_typ);
			if (logger.isDebugEnabled()) logger.debug("instrument type 2 is>>" + instr_typ2);

			// fetching gu_id
			/*sql_guId = "select gu_id from ft_t_irgu  where issr_gu_purp_typ='INCRPRTE' "
					+ "and instr_issr_id in (select instr_issr_id from ft_t_issu where instr_id=:p_instr_Id<char[11]> and (end_tms is null or end_tms >sysdate()))";
			try {
				if (logger.isDebugEnabled()) logger.debug("Executing: " + sql_guId);

				dbConnection.setSQL(sql_guId);
				dbConnection.addParameter(instr_id);
				if (!dbConnection.execute()) {
					logger.error("ERROR: Failed to execute SQL statement.");

				}

				// Only fetch once, get the first result in case there are more
				if (!dbConnection.isEndOfStream()) {
					guId = dbConnection.getNextString().trim();
					if (logger.isDebugEnabled()) logger.debug("guId from query>>" + guId);

				}
			} catch (Exception e) {
				if (!(e instanceof GSException)) {
					 logger.error("ERROR: " + e.getMessage());
				}
			}finally{
				if(null != dbConnection)
				{
					dbConnection.close();
				}
			}

			if (guId == null || "".equals(guId)) {
				if (logger.isDebugEnabled()) logger.debug("No guId found...Hence exiting..");
				return true;
			}
			if (logger.isDebugEnabled()) logger.debug("gu_id is>>" + guId);*/
			
			guId = commons.getStringFromMsgDB("MarketIssueCharacteristics", "GU_ID", "MKT_ISS_OID",	mkt_iss_oid);
			if (guId == null || "".equals(guId)) {
				if (logger.isDebugEnabled()) logger.debug("No GU_ID found in message and in db..Hence exiting..");
				return true;
			}
			if (logger.isDebugEnabled()) logger.debug("guId is>>" + guId);	
			
			// fetching BB MARKET SECTOR cl_value
			cl_value = commons.getStringFromDB("IssueClassification", "CL_VALUE", "INDUS_CL_SET_ID", "BBMKTSCT",
					"INSTR_ID", instr_id);
			if (cl_value == null || "".equals(cl_value)) {
				if (logger.isDebugEnabled()) logger.debug("No cl_value found in incoming message..Hence exiting ");
				return true;
			}
			if (logger.isDebugEnabled()) logger.debug("cl_value >>" + cl_value);
			
			if ((instr_typ.equals("Equity") || instr_typ.equals("Funds") || instr_typ2.equals("Equity Warrants") || instr_typ2.equals("Equity Rights")) && guId.equals("US")) {
				
				// fetching ticker
				//sql = "Select iss_id || '|' || isid_oid from ft_t_isid where id_ctxt_typ='TICKER' and mkt_oid=:p_mkt_oid<char[11]> and instr_id=:p_instr_Id<char[11]> and (end_tms is null or end_tms >sysdate())";
				 sql = " SELECT ISID.ISS_ID"
				            +" FROM FT_T_ISID ISID, FT_T_MIXR MIXR"
							+" WHERE ISID.ISID_OID=MIXR.ISID_OID"
							+" AND ISID.ID_CTXT_TYP='TICKER'"
							+" AND MIXR.MKT_ISS_OID=:p_mktIssOid<char[11]>"
						    +" AND (ISID.END_TMS IS NULL OR ISID.END_TMS > SYSDATE())"
						    +" AND (MIXR.END_TMS IS NULL OR MIXR.END_TMS > SYSDATE());";
				try {
					if (logger.isDebugEnabled()) logger.debug("Executing: " + sql);

					dbConnection.setSQL(sql);
					dbConnection.addParameter(mkt_iss_oid);
					if (!dbConnection.execute()) {
						logger.error("ERROR: Failed to execute SQL statement.");

					}

					if (!dbConnection.isEndOfStream()) {
						ticker = dbConnection.getNextString().trim();
						if (logger.isDebugEnabled()) logger.debug("ticker from query>>" + ticker);

					}
				} catch (Exception e) {
					if (!(e instanceof GSException)) {
						logger.error("ERROR: " + e.getMessage());
					}
				}finally{
					if(null != dbConnection)
					{
						dbConnection.close();
					}
				}
			
				iss_id = ticker+ " " +cl_value;

			} else if ((instr_typ.equals("Equity") || instr_typ.equals("Funds") || instr_typ2.equals("Equity Warrants") || instr_typ2.equals("Equity Rights")) && !guId.equals("US")) {
				
				// fetching cmnt_txt based on ExchangeCode
				 sql = " SELECT ISID.ISS_ID"
			            +" FROM FT_T_ISID ISID, FT_T_MIXR MIXR"
						+" WHERE ISID.ISID_OID=MIXR.ISID_OID"
						+" AND ISID.ID_CTXT_TYP='BBCPTICK'"
						+" AND MIXR.MKT_ISS_OID=:p_mktIssOid<char[11]>"
					    +" AND (ISID.END_TMS IS NULL OR ISID.END_TMS > SYSDATE())"
					    +" AND (MIXR.END_TMS IS NULL OR MIXR.END_TMS > SYSDATE());";
				
							
					try{	
						if (logger.isDebugEnabled()) logger.debug("Executing sql: " + sql);
						dbConnection.setSQL(sql);
						dbConnection.addParameter(mkt_iss_oid);
						
						if (!dbConnection.execute()) {
							logger.error("ERROR: Failed to execute SQL statement.");
						}

					// because on one mkt_oid there can be multiple ticker
					if (!dbConnection.isEndOfStream()) {
						bbCpTick = dbConnection.getNextString().trim();
						if (logger.isDebugEnabled()) logger.debug("bbCpTick from query>>" + bbCpTick);

					}
				} catch (Exception e) {
					if (!(e instanceof GSException)) {
						logger.error("ERROR: " + e.getMessage());
					}
				}finally{
					if(null != dbConnection)
					{
						dbConnection.close();
					}
				}

				if (bbCpTick == null || "".equals(bbCpTick)) {
					if (logger.isDebugEnabled()) logger.debug("No bbCpTick found...Hence exiting..");
					continue;
				}

				iss_id = bbCpTick+ " " + cl_value;
			}

			if (iss_id == null || "".equals(iss_id)) {
				if (logger.isDebugEnabled()) logger.debug("No iss_id found..Hence exiting..");
				continue;

			}

			String isidOIDSql="select isid.isid_oid from ft_t_isid isid, ft_t_mixr mixr "					
							+ "where isid.isid_oid=mixr.isid_oid "
							+ "and isid.id_ctxt_typ='P72BBGTICK' "	
							+ "and mixr.mkt_iss_oid=:p_mkt_iss_oid<char[11]> "											
							+ "and (isid.end_tms is  null or isid.end_tms > sysdate()) "
							+ "and (mixr.end_tms is  null or mixr.end_tms > sysdate())";
			String isidOID =""; 
			try{	
				if (logger.isDebugEnabled()) logger.debug("Executing: " + isidOIDSql);
				
				dbConnection.setSQL(isidOIDSql);
				dbConnection.addParameter(mkt_iss_oid);				
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
			
			// Creating ISID
			SegmentId isidSegID = msg.addSegment(XMLMessage.A_D_UNKNOWN, "IssueIdentifier");
            
			msg.addField("ISID_OID", isidSegID, isidOID);
			msg.addField("INSTR_ID", isidSegID, instr_id);
			msg.addField("ID_CTXT_TYP", isidSegID, "P72BBGTICK");
			msg.addField("ISS_ID", isidSegID, iss_id);
			msg.addField("MKT_OID", isidSegID, mkt_oid);
			if (logger.isDebugEnabled()) logger.debug("Successfully added field to Segment ID:" + isidSegID);

			//SegmentId mkisSegID = msg.addSegment(XMLMessage.A_REFERENCE, "MarketIssueCharacteristics");
			//msg.addField("MKT_ISS_OID", mkisSegID, mkt_iss_oid);

			

			// Creating MIXR
			SegmentId mixrSegId = msg.addSegment(XMLMessage.A_D_UNKNOWN, "ISIDMarketIssueCrossReference");
			
			msg.addField("ISID_OID", mixrSegId, isidOID);
			msg.addField("MKT_ISS_OID", mixrSegId, mkt_iss_oid);
			if (logger.isDebugEnabled()) logger.debug("Successfully added field MKT_ISS_OID to Segment ID:" + mixrSegId);

		}

		return true;
	}

}

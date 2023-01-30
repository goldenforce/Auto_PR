import java.util.ArrayList;
import java.util.List;
import org.apache.log4j.Logger;
import java.util.HashMap;
import java.util.Map;

import com.thegoldensource.jbre.DatabaseAccess;
import com.thegoldensource.jbre.DatabaseObjectContainer;
import com.thegoldensource.jbre.GSException;
import com.thegoldensource.jbre.JavaRule;
import com.thegoldensource.jbre.NotificationCreator;
import com.thegoldensource.jbre.ProcessorContext;
import com.thegoldensource.jbre.ScopedTransaction;
import com.thegoldensource.jbre.SegmentId;
import com.thegoldensource.jbre.XMLMessage;

public class CJavaP72CreateListingLevelAttributes implements JavaRule {

	private static Logger logger = Logger.getLogger("CJavaP72CreateListingLevelAttributes");
	private String msgClsList = null;
	private Map<String, String> msgClsTypeMap = null;
	private CJavaP72Commons commons = null;
	private String panoInvstCat = "PANOINCT";
	private String icsMppng = "ICSMAPPING";

	@Override
	public boolean initialize(String[] param) {

		if (param.length < 1 || param == null) {
			logger.error("Required Parameters missing for CJavaP72CreateListingLevelAttributes in StreetRefMsgSet ");
			return false;
		}
		if (logger.isDebugEnabled()) logger.debug("CJavaP72CreateListingLevelAttributes | initialize | Started Initializing ....");

		msgClsList = param[0];

		// <PARAM>PANOINCT:BB,RTEQDSEP;PANOSECTYP:BB,RTEQDSEP</PARAM>
		this.msgClsTypeMap = new HashMap<String, String>();
		String[] msgClsTypes = msgClsList.split(";");
		for (String msgClsType : msgClsTypes) {
			String attrName = msgClsType.split(":")[0];
			String msgClsfcn = msgClsType.split(":")[1];
			this.msgClsTypeMap.put(attrName, msgClsfcn);

		}

		if (logger.isDebugEnabled()) logger.debug(this.msgClsTypeMap.toString());

		if (logger.isDebugEnabled()) logger.debug("CJavaP72CreateListingLevelAttributes | initialize | Completed Initializing ....");
		return true;
	}

	@Override
	public boolean process(XMLMessage msg, DatabaseObjectContainer dboc, ProcessorContext pContext,
			DatabaseAccess dbConnection, NotificationCreator nCreator) throws GSException {
		logger.info("CJavaP72CreateListingLevelAttributes process start");

		if (logger.isDebugEnabled()) logger.debug("Before MSG: " + msg.getXMLString());

		this.commons = new CJavaP72Commons(msg, dboc, pContext, dbConnection, nCreator);
		String instrId = pContext.getInstrId();
		List<SegmentId> segIdList = new ArrayList<SegmentId>();
		String mktIssOid = "";
		String mktOid = "";
		String cntryISO = "";
		String msgClassification = commons.getMsgClassification();
		boolean invstCatMsgClass = false;
		String panoInvstCatClsf = null;
		String icsMappingClsf = null;
		boolean icsMppngClass = false;

		segIdList = commons.getSegmentIds("MarketIssueCharacteristics");

		if (segIdList.isEmpty()) {
			if (logger.isDebugEnabled()) logger.debug("No MKIS Segment found in msg..exiting");
			return true;
		}

		if (logger.isDebugEnabled()) logger.debug("instr_id is>>" + instrId);

		/*cntryISO = commons.getStringFromMsgDB("IssueGeoUnit", "GU_ID", "ISS_GU_PURP_TYP", "TRADING", "INSTR_ID",
				instrId);
		if (cntryISO == null || "".equals(cntryISO)) {
			if (logger.isDebugEnabled()) logger.debug("No COUNTRY ISO found in message..Hence exiting..");
			return true;
		}
		if (logger.isDebugEnabled()) logger.debug("cntryISO is>>" + cntryISO);*/

		panoInvstCatClsf = this.msgClsTypeMap.get(panoInvstCat);

		icsMappingClsf = this.msgClsTypeMap.get(icsMppng);

		if (panoInvstCatClsf != null && !"".equals(panoInvstCatClsf) && panoInvstCatClsf.contains(msgClassification)) {
			invstCatMsgClass = true;
			if (logger.isDebugEnabled()) logger.debug("invstCatMsgClass>>>" + invstCatMsgClass);
		}
		if (logger.isDebugEnabled()) logger.debug("panoInvstCatClsf is>>" + panoInvstCatClsf);

		if (icsMappingClsf != null && !"".equals(icsMappingClsf) && icsMappingClsf.contains(msgClassification)) {
			icsMppngClass = true;
		}
		if (logger.isDebugEnabled()) logger.debug("icsMappingClsf is>>" + icsMappingClsf);

		for (int i = 0; i < segIdList.size(); i++) {
			
			if ("E".equals(commons.getSegmentProcessInd(segIdList.get(i))) || "D".equals(commons.getSegmentProcessInd(segIdList.get(i))))		
			{
				if (logger.isDebugEnabled()) logger.debug("MKIS Segment is marked as Delete or Error..hence exiting current iteration");
				continue;
			}
			
			mktIssOid = commons.getStringFieldFromMsg(segIdList.get(i), "MKT_ISS_OID");
			if (logger.isDebugEnabled()) logger.debug("MKT_ISS_OID>>>" + mktIssOid);

			mktOid = commons.getStringFieldFromMsg(segIdList.get(i), "MKT_OID");
			if (logger.isDebugEnabled()) logger.debug("MKT_OID>>>" + mktOid);
			
			cntryISO = commons.getStringFromMsgDB("MarketIssueCharacteristics", "GU_ID", "MKT_ISS_OID",	mktIssOid);
			if (cntryISO == null || "".equals(cntryISO)) {
				if (logger.isDebugEnabled()) logger.debug("No COUNTRY ISO found in message..Hence exiting current iteration..");
				continue;
			}
			if (logger.isDebugEnabled()) logger.debug("cntryISO is>>" + cntryISO);

			if (invstCatMsgClass) {
				if (logger.isDebugEnabled()) logger.debug("Calling method createPanoInvestCategory");
				createPanoInvestCategory(instrId, cntryISO, mktIssOid, commons, msg, dbConnection);
			}

			if (icsMppngClass) {
				if (logger.isDebugEnabled()) logger.debug("Calling method createICSMapping");
				createICSMapping(instrId, cntryISO, mktOid, mktIssOid, commons, pContext, msg, dbConnection);
			}
		}

		if (logger.isDebugEnabled()) logger.debug("Successfully processed Java Rule CJavaP72CreateListingLevelAttributes");
		if (logger.isDebugEnabled()) logger.debug("XML after processing" + msg.getXMLString());
		return true;

	}

	private boolean createPanoInvestCategory(String instrID, String cntryISO, String mktIssOid, CJavaP72Commons commons,
			XMLMessage msg, DatabaseAccess dbConnection) {
		if (logger.isDebugEnabled()) logger.debug("Inside method createPanoInvestCategory()");

		String miclVal = "";

		// check if id already exists on mkt_iss_oid
		String sql = "select GETP72PANOINVSTCAT(:p_instr_id<char[11]>,:p_cntry_iso<char[11]>) from dual";

		try {
			if (logger.isDebugEnabled()) logger.debug("Executing: " + sql);

			dbConnection.setSQL(sql);
			dbConnection.addParameter(instrID);
			dbConnection.addParameter(cntryISO);
			if (!dbConnection.execute()) {
				logger.error("ERROR: Failed to execute SQL statement.");

			}

			// Only fetch once, get the first result in case there are more
			if (!dbConnection.isEndOfStream()) {
				miclVal = dbConnection.getNextString().trim();
				if (logger.isDebugEnabled()) logger.debug("sqlOp from query>>" + miclVal);

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

		if (!"".equals(miclVal) && miclVal != null) {
			// Adding micl segment
			SegmentId miclSegID = msg.addSegment(XMLMessage.A_D_UNKNOWN, "MKISMarketIssueClassification");
			msg.addField("MKT_ISS_OID", miclSegID, mktIssOid);
			msg.addField("CL_VALUE", miclSegID, miclVal);
			msg.addField("INDUS_CL_SET_ID", miclSegID, panoInvstCat);
			msg.addField("CLSF_OID", miclSegID, commons.getCLSFOidFromCLValue(panoInvstCat, miclVal));
			if (logger.isDebugEnabled()) logger.debug("Successfully added micl Segment");

			// To be added MKIS reference segment
			// SegmentId mkisSegId = msg.addSegment(XMLMessage.A_REFERENCE,
			// "MarketIssueCharacteristics");
			SegmentId mixrSegId = commons.getSegmentId("ISIDMarketIssueCrossReference");
			msg.addField("MKT_ISS_OID", mixrSegId, mktIssOid);

		}
		return true;
	}

	private boolean createICSMapping(String instrID, String cntryISO, String mktOid, String mktIssOid,
			CJavaP72Commons commons, ProcessorContext pContext, XMLMessage msg, DatabaseAccess dbConnection) {
        
		if (logger.isDebugEnabled()) logger.debug("Inside method createICSMapping()");

		String iss_id = "";   
		
		String sql = "select GETP72ICSMAPPING(:p_instr_id<char[11]>,:p_cntry_iso<char[11]>,:p_mkt_iss_oid<char[11]>) from dual";

		try {
			if (logger.isDebugEnabled()) logger.debug("Executing: " + sql);

			dbConnection.setSQL(sql);
			dbConnection.addParameter(instrID);
			dbConnection.addParameter(cntryISO);
			dbConnection.addParameter(mktIssOid);
			if (!dbConnection.execute()) {
				logger.error("ERROR: Failed to execute SQL statement.");

			}

			// Only fetch once, get the first result in case there are more
			if (!dbConnection.isEndOfStream()) {
				iss_id = dbConnection.getNextString().trim();
				if (logger.isDebugEnabled()) logger.debug("sqlOp from query>>" + iss_id);
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

		if (!"".equals(iss_id) && iss_id != null) {
			
	
			String sqlqry="select isid.isid_oid from ft_t_isid isid, ft_t_mixr mixr "					
							+ "where isid.isid_oid=mixr.isid_oid "
							+ "and isid.id_ctxt_typ='ICSMAPPING' "	
							+ "and mixr.mkt_iss_oid=:p_mkt_iss_oid<char[11]> "											
							+ "and (isid.end_tms is  null or isid.end_tms > sysdate()) "
							+ "and (mixr.end_tms is  null or mixr.end_tms > sysdate())";
				
			String isidOID="";
			try{
				if (logger.isDebugEnabled()) logger.debug("Executing: " + sqlqry);

				dbConnection.setSQL(sqlqry);
				dbConnection.addParameter(mktIssOid);				
				if (!dbConnection.execute()) {
					logger.error("ERROR: Failed to execute SQL statement.");

				}

				// Only fetch once, get the first result in case there are more
				if (!dbConnection.isEndOfStream()) {
					isidOID = dbConnection.getNextString().trim();
					if (logger.isDebugEnabled()) logger.debug("isidOID from query>>" + isidOID);

				}
			} catch (Exception e) {
				if (!(e instanceof GSException)) {
					logger.error("ERROR: " + e.getMessage());
				}
			}

			if (isidOID == null || "".equals(isidOID) )
			{
				isidOID= pContext.getOid();
				if (logger.isDebugEnabled()) logger.debug("Creating isidOID>>>" +isidOID);
			}		
			
			if (logger.isDebugEnabled()) logger.debug("isidOID" +isidOID);

			// Adding isid segment
			SegmentId isidSegID = msg.addSegment(XMLMessage.A_D_UNKNOWN, "IssueIdentifier");
			msg.addField("ISID_OID", isidSegID, isidOID);
			msg.addField("INSTR_ID", isidSegID, instrID);
			msg.addField("ISS_ID", isidSegID, iss_id);
			msg.addField("ID_CTXT_TYP", isidSegID, icsMppng);
			msg.addField("MKT_OID", isidSegID, mktOid);
			if (logger.isDebugEnabled()) logger.debug("Successfully added ISID segment" + isidSegID);

			if (logger.isDebugEnabled()) logger.debug("Creating MIXR segment");

			SegmentId mixrSegId = msg.addSegment(XMLMessage.A_D_UNKNOWN, "ISIDMarketIssueCrossReference");
			msg.addField("ISID_OID", mixrSegId, isidOID);
			msg.addField("MKT_ISS_OID", mixrSegId, mktIssOid);
			if (logger.isDebugEnabled()) logger.debug("Successfully added MIXR segment:" + mixrSegId);

		}

		return true;
	}

}
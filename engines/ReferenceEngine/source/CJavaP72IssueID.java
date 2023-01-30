
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

public class CJavaP72IssueID implements JavaRule {
	private static Logger logger = Logger.getLogger("CJavaP72IssueID");
	private List<String> msgClsList = new ArrayList<String>();

	@Override
	public boolean initialize(String[] param) {
		if (param.length < 1) {
			logger.error("Required Parameters missing for CJavaP72IssueID in StreetRefMsgSet ");
			return false;
		}
		if (logger.isDebugEnabled())
			logger.debug("CJavaP72IssueID | initialize | Started Initializing ....");

		msgClsList = Arrays.asList(param[0].split(","));

		if (msgClsList.size() == 0) {
			logger.error("Missing Required Array Parameters for Message Classification List in StreetRefMsgSet ");
			return false;
		}
		if (logger.isDebugEnabled())
			logger.debug("CJavaP72IssueID | initialize | Started Initializing ....");

		if (logger.isDebugEnabled())
			logger.debug("CJavaP72IssueID | initialize | Completed Initializing ....");
		return true;

	}

	@Override
	public boolean process(XMLMessage msg, DatabaseObjectContainer dboc, ProcessorContext pContext,
			DatabaseAccess dbConnection, NotificationCreator nCreator) throws GSException {
		logger.info("CJavaP72IssueID process start");

		if (logger.isDebugEnabled())
			logger.debug("Before MSG: " + msg.getXMLString());

		CJavaP72Commons commons = null;
		commons = new CJavaP72Commons(msg, dboc, pContext, dbConnection, nCreator);
		String msgClassification = "";
		msgClassification = commons.getMsgClassification();

		String p72InstTyp1 = "";
		String p72InstTyp2 = "";

		//String rissMktIssOid = "";
		String mktIssOid = "";
		String mkisCountry = "";
		String guId = "";
		// String instr_id = "";
		String isin = "";
		String cusip = "";
		//String mkt_oid = "";
		String issueID = "";
		String issueIDOptions="";
		String sedol = "";
		String bbunique = "";
		String gspostionIDfromDB="";
		String gspostionIDbeforecolon="";
		String instrId="";
		// Msg Classification Check
		if (!msgClsList.contains(msgClassification)) {
			if (logger.isDebugEnabled())
				logger.debug("Exiting as Message Classification is not from the configured list." + msgClassification);
			return true;
		}
		if (logger.isDebugEnabled())
			logger.debug("msgClassification:" + msgClassification);

		SegmentId mkisSegId = commons.getSegmentId("MarketIssueCharacteristics");
		if (logger.isDebugEnabled())
			logger.debug("mkisSegId:" + mkisSegId);

		if (mkisSegId == null || mkisSegId.isEmpty()) {
			if (logger.isDebugEnabled())
				logger.debug("No MKIS Segment found in msg..exiting");
			return true;
		}

		if ("E".equals(commons.getSegmentProcessInd(mkisSegId))
				|| "D".equals(commons.getSegmentProcessInd(mkisSegId))) {
			if (logger.isDebugEnabled())
				logger.debug("MKIS Segment is marked as Delete or Error..hence exiting");
			return true;
		}

		mktIssOid = commons.getStringFieldFromMsg(mkisSegId, "MKT_ISS_OID");
		// rissMktIssOid = commons.getStringFieldFromMsg("RelatedIssue",
		// "MKT_ISS_OID", "ISS_PART_RL_TYP", "UNDLYING");

		if (mktIssOid == null || "".equals(mktIssOid)) {
			if (logger.isDebugEnabled())
				logger.debug("No MKT_ISS_OID found in MKIS Segment in msg..exiting");
			return true;
		}
		if (logger.isDebugEnabled())
			logger.debug("MKT_ISS_OID>>>" + mktIssOid);
		//rissMktIssOid = commons.getStringFieldFromMsg("RelatedIssue", "MKT_ISS_OID", "ISS_PART_RL_TYP", "UNDLYING");
		String mktOid = commons.getStringFromMsgDB("MarketIssueCharacteristics", "MKT_OID", "MKT_ISS_OID", mktIssOid);
		if (mktOid == null || "".equals(mktOid)) {
			if (logger.isDebugEnabled())
				logger.debug("No mktOid found in MKIS Segment in msg..exiting");
			return true;
		}
		if (logger.isDebugEnabled())
			logger.debug("mktOid>>>" + mktOid);

		 instrId = pContext.getInstrId();
		if (instrId == null || "".equals(instrId)) {
			if (logger.isDebugEnabled())
				logger.debug("Cannot fetch Instr Id from msg..hence exiting");
			return true;
		}
		if (logger.isDebugEnabled())
			logger.debug("instrId:" + instrId);

		p72InstTyp1 = commons.getP72InstrTyp(instrId, "1");
		p72InstTyp2 = commons.getP72InstrTyp(instrId, "2");

		if ((p72InstTyp1 == null || "".equals(p72InstTyp1)) && (p72InstTyp2 == null || "".equals(p72InstTyp2))) {
			if (logger.isDebugEnabled())
				logger.debug("P72 Instrument Type1 and Type 2 not present..Hence exiting.");
			return true;
		}
		if (logger.isDebugEnabled())
			logger.debug("p72InstTyp1:" + p72InstTyp1);
		if (logger.isDebugEnabled())
			logger.debug("p72InstTyp2:" + p72InstTyp2);

		if ("Derivative".equals(p72InstTyp1) && ("Options".equals(p72InstTyp2)||"Futures".equals(p72InstTyp2))) {
			//rissMktIssOid = commons.getStringFieldFromMsg("RelatedIssue", "MKT_ISS_OID", "ISS_PART_RL_TYP", "UNDLYING");

/*			if (rissMktIssOid == null || "".equals(rissMktIssOid)) {
				if (logger.isDebugEnabled())
					logger.debug(
							"No MKT_ISS_OID found in RelatedIssue Segment with ISS_PART_RL_TYP='UNDLYING' found in msg..exiting");
				return true;
			}

		//	gspostionIDfromMSG = commons.getStringFieldFromMsg("IssueIdentifier", "ISS_ID", "ID_CTXT_TYP", "GSPOSITIONID");
			//logger.debug("GSPOSITIONID from msg" + gspostionIDfromMSG);
*/
			gspostionIDfromDB = commons.getStringFromDB("IssueIdentifier", "ISS_ID", "ID_CTXT_TYP", "GSPOSITIONID", "INSTR_ID",
						instrId);
			if(gspostionIDfromDB!=null)
			{
			logger.debug("CJavaP72IssueID gspostionIDfromDB from DB" + gspostionIDfromDB);
			boolean isFound = gspostionIDfromDB.indexOf(":") !=-1? true: false; //true
			if(isFound)
			{
				gspostionIDbeforecolon = gspostionIDfromDB.substring(0, gspostionIDfromDB.indexOf(':'));
				logger.debug("CJavaP72IssueID gspostionIDbeforecolon" + gspostionIDbeforecolon);
			}
			else
			{
				gspostionIDbeforecolon=gspostionIDfromDB;
			}
					// generate Issue ID
			createID(gspostionIDbeforecolon, "P72DERID", instrId, mktOid, mktIssOid, commons, msg, pContext, dbConnection);
			}
		} 
		if (logger.isDebugEnabled())
			logger.debug("Successfully processed Java Rule CJavaP72IssueID");
		if (logger.isDebugEnabled())
			logger.debug("XML after processing" + msg.getXMLString());
		return true;
	}
	
	

	
	
	
		private boolean createID(String issId, String idCtxtType, String instrId, String mktOid, String mktIssOid,
			CJavaP72Commons commons, XMLMessage msg, ProcessorContext pContext, DatabaseAccess dbConnection) {

		if (logger.isDebugEnabled())
			logger.debug("issId:" + issId);
		if (logger.isDebugEnabled())
			logger.debug("idCtxtType:" + idCtxtType);
		if (logger.isDebugEnabled())
			logger.debug("instrId:" + instrId);
		if (logger.isDebugEnabled())
			logger.debug("mktOid:" + mktOid);
		if (logger.isDebugEnabled())
			logger.debug("mktIssOid:" + mktIssOid);

		// Check if ID already exists
		String isidOID = "";
		String isidOIDSql = "select isid_oid from ft_t_isid where instr_id=:p_instr_id<char[11]>"
				+ " and (id_ctxt_typ=:p_id_ctxt_typ<char[21]>)"
				+ " and (mkt_oid=:p_mkt_oid<char[11]>) and (end_tms is  null or end_tms > sysdate());";
		try {
			if (logger.isDebugEnabled())
				logger.debug("Executing: " + isidOIDSql);

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
				if (logger.isDebugEnabled())
					logger.debug("sqlOp from query>>" + isidOID);

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

		if (isidOID == null || "".equals(isidOID)) {
			isidOID = pContext.getOid();
			if (logger.isDebugEnabled())
				logger.debug("Creating isidOID>>>" + isidOID);
		}

		if (logger.isDebugEnabled())
			logger.debug("isidOID" + isidOID);

		// Creating ISID for GV Underlying
		SegmentId issueIDIsidSegID = msg.addSegment(XMLMessage.A_D_UNKNOWN, "IssueIdentifier");

		msg.addField("ISID_OID", issueIDIsidSegID, isidOID);
		msg.addField("INSTR_ID", issueIDIsidSegID, instrId);
		msg.addField("ID_CTXT_TYP", issueIDIsidSegID, idCtxtType);
		msg.addField("ISS_ID", issueIDIsidSegID, issId);
		msg.addField("MKT_OID", issueIDIsidSegID, mktOid);
		if (logger.isDebugEnabled())
			logger.debug("Successfully added field to Segment ID:" + issueIDIsidSegID);

	
		return true;

	}

}

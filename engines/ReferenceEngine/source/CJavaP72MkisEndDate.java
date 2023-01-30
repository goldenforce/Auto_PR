
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
import java.util.Date;

public class CJavaP72MkisEndDate implements JavaRule {
	private static Logger logger = Logger.getLogger("CJavaP72MkisEndDate");
	private List<String> msgClsList = new ArrayList<String>();

	@Override
	public boolean initialize(String[] param) {
		if (logger.isDebugEnabled())
			logger.debug("CJavaP72MkisEndDate | initialize | Started Initializing ....");

		if (logger.isDebugEnabled())
			logger.debug("CJavaP72MkisEndDate | initialize | Started Initializing ....");

		if (logger.isDebugEnabled())
			logger.debug("CJavaP72MkisEndDate | initialize | Completed Initializing ....");
		return true;

	}

	@Override
	public boolean process(XMLMessage msg, DatabaseObjectContainer dboc, ProcessorContext pContext,
			DatabaseAccess dbConnection, NotificationCreator nCreator) throws GSException {

		String getSysdate = "";
		Date endtms;
		String mktIssOid = "";
		String mixroid = "";
		Date endtmsISID;
		String statdefID = "";
		Date endtmsmixr;
		ArrayList mixroidList = new ArrayList<>();
		int flag = 0;
		int flafisListed=0;
		logger.info("CJavaP72MkisEndDate process start");

		if (logger.isDebugEnabled())
			logger.debug("Before MSG: " + msg.getXMLString());

		CJavaP72Commons commons = null;

		commons = new CJavaP72Commons(msg, dboc, pContext, dbConnection, nCreator);
		String msgClassification = "";
		msgClassification = commons.getMsgClassification();
		if ("WEBMSG".equalsIgnoreCase(msgClassification)) {
			SegmentId mkisSegId = commons.getSegmentId("MarketIssueCharacteristics");
			if (logger.isDebugEnabled())
				logger.debug("mkisSegId:" + mkisSegId);

			if (mkisSegId == null || mkisSegId.isEmpty()) {
				if (logger.isDebugEnabled())
					logger.debug("No MKIS Segment found in msg..exiting");
				return true;
			}
			String instrId = pContext.getInstrId();

			String isidOID = pContext.getOid();

			if (logger.isDebugEnabled())

				logger.debug("Creating isidOID>>>" + isidOID);

			mktIssOid = commons.getStringFieldFromMsg(mkisSegId, "MKT_ISS_OID");
			if (mktIssOid == null || "".equals(mktIssOid)) {
				if (logger.isDebugEnabled())
					logger.debug("No MKT_ISS_OID found in MKIS Segment in msg..exiting");
				return true;
			}
			if (logger.isDebugEnabled())
				logger.debug("MKT_ISS_OID>>>" + mktIssOid);

			for (int i = 0; i < msg.getSegmentCount(); i++) {
				SegmentId currSegId = new SegmentId(i);
				String currSegName = msg.getSegmentType(currSegId);
				String actionType = msg.getAction(currSegId);

				if (("MKISMarketIssueCrossReference").equalsIgnoreCase(currSegName)
						&& "D_DELETE".equalsIgnoreCase(actionType)) {

					if (logger.isDebugEnabled())
						logger.debug("CJavaP72MkisEndDate inside ISIDMarketIssueCrossReference");

					flag++;
					mixroid = commons.getStringFieldFromMsg(currSegName, "MIXR_OID");
					if (mixroid != null) {
						int min = new Date().getMinutes();
						endtms = new Date();
						endtms.setMinutes(min + 5);

						if (logger.isDebugEnabled())
							logger.debug("CJavaP72MkisEndDate Updating MIXR segment");

						msg.setAction(currSegId, "D_UPDATE");
						// SegmentId newMkisSegId =
						// msg.addSegment(XMLMessage.A_D_UNKNOWN,"MKISMarketIssueCrossReference");
						// msg.addField("MIXR_OID", newMkisSegId, mixroid);
						msg.addField("END_TMS", currSegId, endtms);

						// msg.setFieldValue("END_TMS", currSegId, endtms);
						if (logger.isDebugEnabled())
							logger.debug("CJavaP72MkisEndDate MIXR added");

					}

				} else if (("MarketIssueStatistic").equalsIgnoreCase(currSegName)
						&& "DELETE".equalsIgnoreCase(actionType)) {
					statdefID = null;
					if (logger.isDebugEnabled())
						logger.debug("CJavaP72MkisEndDate before MUST statdefID-----" + statdefID);

					if (logger.isDebugEnabled())
						logger.debug("CJavaP72MkisEndDate Inside MUST added");

					statdefID = commons.getStringFieldFromMsg(currSegId, "STAT_DEF_ID");

					if (logger.isDebugEnabled())
						logger.debug("CJavaP72MkisEndDate Inside MUST statdefID" + statdefID);
					if ("ISLISTED".equalsIgnoreCase(statdefID)) {

						if (logger.isDebugEnabled())
							logger.debug("CJavaP72MkisEndDate Inside MUST ISLISTED");
						flag++;
						int min = new Date().getMinutes();
						endtms = new Date();
						endtms.setMinutes(min + 5);
						msg.setAction(currSegId, "D_UPDATE");
						msg.addField("END_TMS", currSegId, endtms);
						msg.setFieldValue("STAT_CHAR_VAL_TXT", currSegId, "N");
						logger.debug("CJavaP72MkisEndDate Inside MUST STAT_VAL_DTE");
						
						//msg.addField("STAT_VAL_DTE", currSegId,new Date());
						//flafisListed++;
					}
					if ("P72INADT".equalsIgnoreCase(statdefID)) {

						if (logger.isDebugEnabled())
							logger.debug("CJavaP72MkisEndDate Inside MUST P72INADT");
						flag++;
						int min = new Date().getMinutes();
						endtms = new Date();
						endtms.setMinutes(min + 5);
						msg.setAction(currSegId, "D_UPDATE");
						msg.addField("END_TMS", currSegId, endtms);
						msg.setFieldValue("STAT_VAL_DTE", currSegId, new Date());
						logger.debug("CJavaP72MkisEndDate Inside MUST STAT_VAL_DTE");
						
						//msg.addField("STAT_VAL_DTE", currSegId,new Date());
						//flafisListed++;
					}
					statdefID = null;

				}

			}
			if (flag > 0) {
				logger.debug("CJavaP72MkisEndDate Inside flag-----");
				
				int min = new Date().getMinutes();
				endtms = new Date();
				endtms.setMinutes(min + 5);

				SegmentId mustInactiveSegID = msg.addSegment(XMLMessage.A_D_UNKNOWN, "MarketIssueStatistic");

				msg.addField("STAT_DEF_ID", mustInactiveSegID, "P72INADT");
			    msg.addField("END_TMS", mustInactiveSegID, endtms);
				
				//msg.addField("STAT_CHAR_VAL_TXT", mustInactiveSegID, "N");
				msg.addField("MKT_ISS_OID", mustInactiveSegID, mktIssOid);
				//msg.addField("END_TMS", mustInactiveSegID, new Date());
				msg.addField("STAT_VAL_DTE", mustInactiveSegID,new Date());

						SegmentId mustIsListedSegID = msg.addSegment(XMLMessage.A_D_UNKNOWN, "MarketIssueStatistic");

						msg.addField("STAT_DEF_ID", mustIsListedSegID, "ISLISTED");
					msg.addField("END_TMS", mustIsListedSegID, endtms);
						
						msg.addField("STAT_CHAR_VAL_TXT", mustIsListedSegID, "N");
						msg.addField("MKT_ISS_OID", mustIsListedSegID, mktIssOid);
						//msg.addField("END_TMS", mustInactiveSegID, new Date());
						//msg.addField("STAT_VAL_DTE", mustIsListedSegID,new Date());
					

				if (logger.isDebugEnabled())
					logger.debug("CJavaP72MkisEndDate MKIS and MUST started ");
				int min1 = new Date().getMinutes();
				endtms = new Date();
				endtms.setMinutes(min1 + 5);

				SegmentId newMkisSegId = msg.addSegment(XMLMessage.A_D_UNKNOWN, "MarketIssueCharacteristics");
				msg.addField("MKT_ISS_OID", newMkisSegId, mktIssOid);
				msg.addField("END_TMS", newMkisSegId, endtms);

				/*
				 * if (logger.isDebugEnabled())
				 * logger.debug("CJavaP72MkisEndDate Updating MUST segment");
				 * SegmentId mustSegID = msg.addSegment(XMLMessage.A_D_UNKNOWN,
				 * "MarketIssueStatistic");
				 * 
				 * msg.addField("STAT_DEF_ID", mustSegID, "ISLISTED");
				 * msg.addField("STAT_CHAR_VAL_TXT", mustSegID, "N");
				 * msg.addField("MKT_ISS_OID", mustSegID, mktIssOid);
				 * msg.addField("END_TMS", mustSegID, endtms);
				 */
				// if (logger.isDebugEnabled())
				// logger.debug("CJavaP72MkisEndDateSuccessfully added field
				// STAT_CHAR_VAL_TXT to Segment ID:" + mustSegID);
				/*
				 * if (logger.isDebugEnabled()) logger.
				 * debug("CJavaP72MkisEndDate Updating MUST segment incative");
				 * SegmentId mustSegIDIncactiveDte =
				 * msg.addSegment(XMLMessage.A_D_UNKNOWN,
				 * "MarketIssueStatistic");
				 * 
				 * msg.addField("STAT_DEF_ID", mustSegIDIncactiveDte,
				 * "P72INADT"); msg.addField("STAT_CHAR_VAL_TXT",
				 * mustSegIDIncactiveDte, getSysdate);
				 * msg.addField("MKT_ISS_OID", mustSegIDIncactiveDte,
				 * mktIssOid);
				 */
			}

			/*
			 * endtms = commons.getDateFieldFromMsg(mkisSegId, "END_TMS");
			 * logger.debug("CJavaP72MkisEndDate endtms before "+endtms);
			 * 
			 * if(endtms!=null) { int min= endtms.getMinutes();
			 * logger.debug("CJavaP72MkisEndDate min "+min);
			 * 
			 * endtms.setMinutes(min+5);
			 * 
			 * logger.debug("CJavaP72MkisEndDate endtms after adding minutes "
			 * +endtms);
			 * 
			 * getSysdate = "select sysdate() from dual"; try { if
			 * (logger.isDebugEnabled()) logger.debug("Executing getSysdate: " +
			 * getSysdate);
			 * 
			 * dbConnection.setSQL(getSysdate); if (!dbConnection.execute()) {
			 * logger.error("ERROR: Failed to execute SQL statement.");
			 * 
			 * }
			 * 
			 * // Only fetch once, get the first result in case there // are
			 * more if (!dbConnection.isEndOfStream()) {
			 * 
			 * } } catch (Exception e) { if (!(e instanceof GSException)) {
			 * 
			 * logger.error("ERROR: " + e.getMessage()); } } finally { if (null
			 * != dbConnection) { dbConnection.close(); } }
			 * 
			 * logger.debug("CJavaP72MkisEndDate Sysdate"+getSysdate);
			 * 
			 * 
			 * }
			 */ /*
				 * if (logger.isDebugEnabled()) logger.
				 * debug("CJavaP72MkisEndDate Updating MUST segment incative");
				 * SegmentId mustSegIDIncactiveDte =
				 * msg.addSegment(XMLMessage.A_D_UNKNOWN,
				 * "MarketIssueStatistic");
				 * 
				 * msg.addField("STAT_DEF_ID", mustSegIDIncactiveDte,
				 * "P72INADT"); msg.addField("STAT_CHAR_VAL_TXT",
				 * mustSegIDIncactiveDte, getSysdate);
				 * msg.addField("MKT_ISS_OID", mustSegIDIncactiveDte,
				 * mktIssOid); if (logger.isDebugEnabled()) logger.
				 * debug("CJavaP72MkisEndDateSuccessfully added field STAT_CHAR_VAL_TXT to Segment ID:"
				 * + mustSegID);
				 */
		}
		if (logger.isDebugEnabled())
			logger.debug("CJavaP72MkisEndDate After MSG: " + msg.getXMLString());
		return true;

	}

}

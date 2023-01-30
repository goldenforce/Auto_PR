
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;

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
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class CJavaP72MUSTEndDate implements JavaRule {
	private static Logger logger = Logger.getLogger("CJavaP72MUSTEndDate");
	private List<String> msgClsList = new ArrayList<String>();

	@Override
	public boolean initialize(String[] param) {
		if (logger.isDebugEnabled())
			logger.debug("CJavaP72MUSTEndDate | initialize | Started Initializing ....");

		
		if (logger.isDebugEnabled())
			logger.debug("CJavaP72MUSTEndDate | initialize | Started Initializing ....");

		if (logger.isDebugEnabled())
			logger.debug("CJavaP72MUSTEndDate | initialize | Completed Initializing ....");
		return true;

	}

	@Override
	public boolean process(XMLMessage msg, DatabaseObjectContainer dboc, ProcessorContext pContext,
			DatabaseAccess dbConnection, NotificationCreator nCreator) throws GSException {
		
		String  getSysdate="";
		Date endtms;
		Date date1 = null;
		String trading_stat_typ="";
		String mktIssOid = "";
		logger.info("CJavaP72MUSTEndDate process start");

		if (logger.isDebugEnabled())
			logger.debug("Before MSG: " + msg.getXMLString());

		CJavaP72Commons commons = null;
		commons = new CJavaP72Commons(msg, dboc, pContext, dbConnection, nCreator);
		String msgClassification = "";
		msgClassification = commons.getMsgClassification();
		if ("WEBMSG".equalsIgnoreCase(msgClassification)) {
		
		SegmentId mkisSegId = commons.getSegmentId("MarketIssueCharacteristics");
		String actionType = msg.getAction(mkisSegId);

		if (logger.isDebugEnabled())
			logger.debug("mkisSegId:" + mkisSegId);

		if (mkisSegId == null || mkisSegId.isEmpty()) {
			if (logger.isDebugEnabled())
				logger.debug("No MKIS Segment found in msg..exiting");
			return true;
		}

		mktIssOid = commons.getStringFieldFromMsg(mkisSegId, "MKT_ISS_OID");
		if (mktIssOid == null || "".equals(mktIssOid)) {
			if (logger.isDebugEnabled())
				logger.debug("No MKT_ISS_OID found in MKIS Segment in msg..exiting");
			return true;
		}
		if (logger.isDebugEnabled())
			logger.debug("MKT_ISS_OID>>>" + mktIssOid);
		 logger.debug("CJavaP72MUSTEndDate endtms before "+date1);
		trading_stat_typ =commons.getStringFieldFromMsg(mkisSegId,"TRDNG_STAT_TYP");
		 logger.debug("CJavaP72MUSTEndDate trading_stat_typ "+trading_stat_typ);

		if (logger.isDebugEnabled()) logger.debug("CJavaP72MUSTEndDate Updating MKIS segment");
	

		if(("DE".equals(trading_stat_typ)||"INACTIVE".equalsIgnoreCase(trading_stat_typ)) && "UNKNOWN".equalsIgnoreCase(actionType) )
		{
			if (logger.isDebugEnabled())
				logger.debug("CJavaP72MUSTEndDate Updating MUST segment");
			SegmentId mustSegID = msg.addSegment(XMLMessage.A_D_UNKNOWN, "MarketIssueStatistic");

			msg.addField("STAT_DEF_ID", mustSegID, "ISLISTED");
			msg.addField("STAT_CHAR_VAL_TXT", mustSegID, "N");
			msg.addField("MKT_ISS_OID", mustSegID, mktIssOid); 
			//msg.addField("END_TMS", mustSegID, new Date());
			//msg.addField("STAT_VAL_DTE", mustSegID,new Date());
			 
			
			SegmentId mustInactiveSegID = msg.addSegment(XMLMessage.A_D_UNKNOWN, "MarketIssueStatistic");

			msg.addField("STAT_DEF_ID", mustInactiveSegID, "P72INADT");
			//msg.addField("STAT_CHAR_VAL_TXT", mustInactiveSegID, "N");
			msg.addField("MKT_ISS_OID", mustInactiveSegID, mktIssOid);
			//msg.addField("END_TMS", mustInactiveSegID, new Date());
			msg.addField("STAT_VAL_DTE", mustInactiveSegID,new Date());


			if (logger.isDebugEnabled())
				logger.debug(
						"CJavaP72MUSTEndDateSuccessfully added field STAT_CHAR_VAL_TXT to Segment ID:" + mustSegID);
		}

		else if("ACTIVE".equalsIgnoreCase(trading_stat_typ) && "UNKNOWN".equalsIgnoreCase(actionType))
		{
			if (logger.isDebugEnabled())
				logger.debug("CJavaP72MUSTEndDate inside Active--------------- ");

			SegmentId mustActiveSegID = msg.addSegment(XMLMessage.A_D_UNKNOWN, "MarketIssueStatistic");

			msg.addField("STAT_DEF_ID", mustActiveSegID, "ISLISTED");
			msg.addField("STAT_CHAR_VAL_TXT", mustActiveSegID, "Y");
			msg.addField("MKT_ISS_OID", mustActiveSegID, mktIssOid); 
			//msg.addField("END_TMS", mustSegID, new Date());
			//msg.addField("STAT_VAL_DTE", mustSegID,new Date());
			
			SegmentId mustActiveSegIDP72INADT = msg.addSegment(XMLMessage.A_D_UNKNOWN, "MarketIssueStatistic");

			msg.addField("STAT_DEF_ID", mustActiveSegIDP72INADT, "P72INADT");
			//msg.addField("STAT_CHAR_VAL_TXT", mustInactiveSegID, "N");
			msg.addField("MKT_ISS_OID", mustActiveSegIDP72INADT, mktIssOid);
			//msg.addField("END_TMS", mustInactiveSegID, new Date());
			msg.addField("END_TMS", mustActiveSegIDP72INADT,new Date());



			
		}
		}
		if (logger.isDebugEnabled()) logger.debug("CJavaP72MUSTEndDate After MSG: " + msg.getXMLString());
		return true;
	}

}

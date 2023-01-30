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

public class CJavaP72InsertCNTRPRIMID implements JavaRule{

	private static Logger logger = Logger.getLogger("CJavaP72InsertCNTRPRIMID");
	private List<String> msgClsList = new ArrayList<String>();

	// public CJavaP72Commons commons;

	@Override
	public boolean initialize(String[] param) {
		
		if (param.length < 1) {
			
			logger.error("Required Parameters missing for CJavaP72InsertCNTRPRIMID in StreetRefMsgSet ");
			
			return false;
		}
		if (logger.isDebugEnabled()) 
			
			logger.debug("CJavaP72InsertCNTRPRIMID | initialize | Started Initializing ....");

		msgClsList = Arrays.asList(param[0].split(","));

		if (msgClsList.size() == 0) {
			
			logger.error("Missing Required Array Parameters for Message Classification List in StreetRefMsgSet ");
			
			return false;
		}
		if (logger.isDebugEnabled()) 
			
			logger.debug("CJavaP72InsertCNTRPRIMID | initialize | Started Initializing ....");

		return true;
	}

	@Override
	public boolean process(XMLMessage msg, DatabaseObjectContainer dboc, ProcessorContext pContext,
			DatabaseAccess dbConnection, NotificationCreator nCreator) throws GSException {
		logger.info("CJavaP72InserIssid process start");
		
		if (logger.isDebugEnabled()) 
			logger.debug("CJavaP72InsertCNTRPRIMID process start");
		
		if (logger.isDebugEnabled())
			logger.debug("Before MSG: " +msg.getXMLString());

		CJavaP72Commons commons = null;
		commons = new CJavaP72Commons(msg, dboc, pContext, dbConnection, nCreator);		
		String instr_id = "";
		String iss_id = "";
		String mkt_oid = "";
		String mkt_iss_oid = "";
		String sqlOp="";
		String msgClassification = "";
		
		msgClassification = commons.getMsgClassification();

		if (!msgClsList.contains(msgClassification)) {
			
			if (logger.isDebugEnabled())
				
		   logger.debug("Exiting as Message Classification is"
		   		+ " not from the configured list. " + msgClassification);
			
			return true;
			
		}

		mkt_iss_oid = commons.getStringFieldFromMsg("MarketIssueCharacteristics", "MKT_ISS_OID");
		
		if (mkt_iss_oid == null || "".equals(mkt_iss_oid)) 
		{
			
			if (logger.isDebugEnabled()) logger.debug("No MKT_ISS_OID found in incoming message..Hence exiting..");			
			return true;
		}
		
		if (logger.isDebugEnabled()) logger.debug("mkt_iss_oid >>" +mkt_iss_oid);
		
		if (!"Y".equals(commons.getStringFromMsgDB("MarketIssueCharacteristics", "OFCL_PLACE_LISTING_IND", "MKT_ISS_OID", mkt_iss_oid)))		 
		{
			
			if (logger.isDebugEnabled()) logger.debug("Exiting as Official Place of Listing is not 'Y' ");			
			return true;
		}

		instr_id =pContext.getInstrId();
		if (logger.isDebugEnabled()) logger.debug("CJavaP72InsertCNTRPRIMID instr_id1"+instr_id);
					

		if (instr_id == null || "".equals(instr_id)) 
		{
			if (logger.isDebugEnabled()) logger.debug("No INSTR_ID found in incoming message..Hence exiting..");
			return true;
		}
		
		if (logger.isDebugEnabled()) logger.debug("instr_id >>" +instr_id);
		
		mkt_oid = commons.getStringFromMsgDB("MarketIssueCharacteristics", "MKT_OID", "MKT_ISS_OID", mkt_iss_oid);
		
		if (mkt_oid == null || "".equals(mkt_oid))
		{
			if (logger.isDebugEnabled()) logger.debug("No MKT_OID found in incoming message..Hence exiting..");
			return true;
		}
		
		if (logger.isDebugEnabled()) logger.debug("mkt_oid >>" +mkt_oid);		

	
		//Check if CNTRPRIMID already exists
		String sqlqry="select 'Y' from ft_t_isid isid, ft_t_mixr mixr "
						+ "where isid.isid_oid=mixr.isid_oid "
						+ "and isid.id_ctxt_typ='CNTRPRIMID' "	
						+ "and mixr.mkt_iss_oid=:p_mkt_iss_oid<char[11]> "											
						+ "and (isid.end_tms is  null or isid.end_tms > sysdate()) "
						+ "and (mixr.end_tms is  null or mixr.end_tms > sysdate())";
	try{	
		if (logger.isDebugEnabled()) logger.debug("Executing: " + sqlqry);

		dbConnection.setSQL(sqlqry);
		dbConnection.addParameter(mkt_iss_oid);		
		if (!dbConnection.execute()) {
			logger.error("ERROR: Failed to execute SQL statement.");
			
		}

		// Only fetch once, get the first result in case there are more
		if (!dbConnection.isEndOfStream()) {
			sqlOp = dbConnection.getNextString().trim();
			if (logger.isDebugEnabled()) 
				logger.debug("sqlOp from query>>" +sqlOp);

	}}
	catch (Exception e) {
		if (!(e instanceof GSException)) {
			
			logger.error("ERROR: " + e.getMessage());
		}
	}
	finally
	{
		if(null != dbConnection)
		{
			dbConnection.close();
		}
	}
	
		
		if ("Y".equals(sqlOp))
		{
			if (logger.isDebugEnabled()) logger.debug("ISID ID already exists for the given listing...Hence exiting");			
			return true;
		}
		
		
		String sql_iss_id="select p72getcntrprimid_mkis() from dual";
		
		try{	
			if (logger.isDebugEnabled()) logger.debug("Executing sql_iss_id: " + sql_iss_id);

			dbConnection.setSQL(sql_iss_id);
			if (!dbConnection.execute()) {
				logger.error("ERROR: Failed to execute SQL statement.");
				
			}

			// Only fetch once, get the first result in case there are more
			if (!dbConnection.isEndOfStream()) {
				iss_id = dbConnection.getNextString().trim();
				if (logger.isDebugEnabled()) 
					logger.debug("iss_id from p72getcntrprimid_mkis function>>" +iss_id);

		}}
		catch (Exception e) {
			if (!(e instanceof GSException)) {
				
				logger.error("ERROR: " + e.getMessage());
			}
		}
		finally
		{
			if(null != dbConnection)
			{
				dbConnection.close();
			}
		}
		
		
		String isidOID= pContext.getOid();
		
		if (logger.isDebugEnabled())
			
			logger.debug("Creating isidOID>>>" +isidOID);

		if (logger.isDebugEnabled())
			
			logger.debug("Creating IssueIdentifier segment");

		SegmentId isidSegID = msg.addSegment(XMLMessage.A_D_UNKNOWN, "IssueIdentifier");
		msg.addField("ISID_OID", isidSegID, isidOID);
		msg.addField("INSTR_ID", isidSegID, instr_id);
		msg.addField("ISS_ID", isidSegID, iss_id);
		msg.addField("ID_CTXT_TYP", isidSegID, "CNTRPRIMID");
		msg.addField("MKT_OID", isidSegID, mkt_oid);
		if (logger.isDebugEnabled()) 
			logger.debug("Successfully added field PSTN_ID to Segment ID:" + isidSegID);

		if (logger.isDebugEnabled()) 
			logger.debug("Creating MIXR segment");
			
		

		SegmentId mixrSegId = msg.addSegment(XMLMessage.A_D_UNKNOWN, "ISIDMarketIssueCrossReference");
		msg.addField("ISID_OID", mixrSegId, isidOID);
		msg.addField("MKT_ISS_OID", mixrSegId, mkt_iss_oid);
		
		if (logger.isDebugEnabled()) 
			
			logger.debug("Successfully added field MKT_ISS_OID to Segment ID:" + mixrSegId);


		logger.info("CJavaP72InsertCNTRPRIMID process end");
		
		if (logger.isDebugEnabled())
			
			logger.debug("After MSG: " +msg.getXMLString());

		return true;

	}
		}


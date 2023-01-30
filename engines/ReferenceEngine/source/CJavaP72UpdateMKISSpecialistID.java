
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

public class CJavaP72UpdateMKISSpecialistID implements JavaRule {
	private static Logger logger = Logger.getLogger("CJavaP72UpdateMKISSpecialistID");
	private List<String> msgClsList = new ArrayList<String>();

	@Override
	public boolean initialize(String[] param) {
		if (param.length < 1) {
			logger.error("Required Parameters missing for CJavaP72UpdateMKISSpecialistID in StreetRefMsgSet ");
			return false;
		}
		if (logger.isDebugEnabled())
			logger.debug("CJavaP72UpdateMKISSpecialistID | initialize | Started Initializing ....");

		msgClsList = Arrays.asList(param[0].split(","));

		if (msgClsList.size() == 0) {
			logger.error("Missing Required Array Parameters for Message Classification List in StreetRefMsgSet ");
			return false;
		}
		
		if (logger.isDebugEnabled())
			logger.debug("CJavaP72UpdateMKISSpecialistID | initialize | Completed Initializing ....");
		return true;

	}

	@Override
	public boolean process(XMLMessage msg, DatabaseObjectContainer dboc, ProcessorContext pContext,
			DatabaseAccess dbConnection, NotificationCreator nCreator) throws GSException {
		logger.info("CJavaP72UpdateMKISSpecialistID process start");

		if (logger.isDebugEnabled())
			logger.debug("Before MSG: " + msg.getXMLString());

		CJavaP72Commons commons = null;
		commons = new CJavaP72Commons(msg, dboc, pContext, dbConnection, nCreator);
		String msgClassification = "";
		msgClassification = commons.getMsgClassification();
		//String mkisOffcl

		if (!msgClsList.contains(msgClassification)) {
			if (logger.isDebugEnabled())
				logger.debug("Exiting as Message Classification is not from the configured list." + msgClassification);
			return true;
		}
		if (logger.isDebugEnabled())
			logger.debug("msgClassification:" + msgClassification);
		List<SegmentId> MkisSegIdList = commons.getSegmentIds("MarketIssueCharacteristics");

		if (MkisSegIdList == null || MkisSegIdList.size() == 0) {
			if (logger.isDebugEnabled())
				logger.debug("No MarketIssue Segment found in msg..exiting");
			return true;
		}

		for (SegmentId MkisSegId : MkisSegIdList) 
		{
			if (logger.isDebugEnabled()) logger.debug("MkisSegId" + MkisSegId);
			
			if ("UNKNOWN".equals(msg.getAction(MkisSegId)) || "UPDATE".equals(msg.getAction(MkisSegId))
					|| "REFERENCE".equals(msg.getAction(MkisSegId))) 
			{
				String Mktissoid = commons.getStringFieldFromMsg(MkisSegId, "MKT_ISS_OID");
				if (logger.isDebugEnabled()) logger.debug("Mktissoid :" + Mktissoid);
				
				if (Mktissoid == null || "".equals(Mktissoid)) 
				{
					if (logger.isDebugEnabled())
						logger.debug("No MarketIssOId found in incoming message..Hence exiting..");
					return true;
				} 
				
				if ("Y".equals(commons.getStringFieldFromMsg(MkisSegId, "OFCL_PLACE_LISTING_IND"))) 
				{
					if (logger.isDebugEnabled()) logger.debug("Creating Specialist ID as Official Place of Listing is  'Y' ");
					createSpecialistID(Mktissoid, msg, dbConnection);
				}
				
				else
				{
					String cntrPrimSql = "select mkis_country.mkt_iss_oid from ft_t_mkis mkis_country, ft_t_mkis mkis_local"
							+ " where ( MKIS_COUNTRY.INSTR_ID = MKIS_LOCAL.INSTR_ID or ( MKIS_COUNTRY.INSTR_ID is null and MKIS_LOCAL.INSTR_ID is null ) )"
							+ " and ( MKIS_COUNTRY.START_TMS <= sysdate() or MKIS_COUNTRY.START_TMS is null)"
							+ " and ( MKIS_COUNTRY.END_TMS >= sysdate() or MKIS_COUNTRY.END_TMS is null)"
							+ " and MKIS_COUNTRY.OFCL_PLACE_LISTING_IND = 'Y'"
							+ " and ( MKIS_LOCAL.START_TMS <= sysdate() or MKIS_LOCAL.START_TMS is null)"
							+ " and ( MKIS_LOCAL.END_TMS >= sysdate() or MKIS_LOCAL.END_TMS is null)"
							+ " and (select iss_id from fT_T_isid"
							+ " where isid_oid in (select isid_oid from ft_t_mixr"
							+ " where mkt_iss_oid = MKIS_COUNTRY.mkt_iss_oid"
							+ " and end_tms is null)"
							+ " and id_ctxt_typ = 'SEDOL'"
							+ " and end_tms is null"
							+ " limit 1) in (select iss_id from fT_T_isid"
							+ " where isid_oid in (select isid_oid from ft_t_mixr"
							+ " where mkt_iss_oid = MKIS_LOCAL.mkt_iss_oid"
							+ " and end_tms is null)"
							+ " and id_ctxt_typ = 'SEDOL'"
							+ " and end_tms is null"
							+ "	limit 1)"
							+ " and (MKIS_LOCAL.OFCL_PLACE_LISTING_IND is null or MKIS_LOCAL.OFCL_PLACE_LISTING_IND <> 'Y')"
							+ " and mkis_local.mkt_iss_oid =:p_mkt_iss_oid<char[11]>;";
					
					String primMktIssOid = "";
					try 
					{
						if (logger.isDebugEnabled()) logger.debug("Executing cntrPrimSql: " + cntrPrimSql);

						dbConnection.setSQL(cntrPrimSql);
						dbConnection.addParameter(Mktissoid);
						if (!dbConnection.execute()) {
							logger.error("ERROR: Failed to execute SQL statement.");

						}

						// Only fetch once, get the first result in case there
						// are more
						if (!dbConnection.isEndOfStream()) {
							primMktIssOid = dbConnection.getNextString().trim();
							if (logger.isDebugEnabled())
								logger.debug("Primary MKT_ISS_OID>" + primMktIssOid);

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
					
					if (primMktIssOid != null && !"".equals(primMktIssOid) )
					{
						if (logger.isDebugEnabled()) logger.debug("Creating Specialist ID for Country Primary MKT_ISS_OID:"+primMktIssOid);
						createSpecialistID(primMktIssOid, msg, dbConnection);
					}
					
				}	
				
				
				return true;

			}
		}
		if (logger.isDebugEnabled()) logger.debug("After MSG: " + msg.getXMLString());
		return true;
	}

	private boolean createSpecialistID(String mktIssOid, XMLMessage msg, DatabaseAccess dbConnection)
	{
	
		if (mktIssOid == null || "".equals(mktIssOid) )
		{
			if (logger.isDebugEnabled()) logger.debug("mktIssOid is null or blank..hence exiting");			
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
		

		if (logger.isDebugEnabled()) logger.debug("Updating MKIS segment");
		//Date sysdate;
		//sysdate = new Date();
		//if (logger.isDebugEnabled()) logger.debug("sysdate:"+sysdate);
		SegmentId newMkisSegId =   msg.addSegment(XMLMessage.A_D_UNKNOWN,"MarketIssueCharacteristics"); 					
		msg.addField("MKT_ISS_OID", newMkisSegId, mktIssOid);				
		msg.addField("SPECIALIST_ID", newMkisSegId, seqId);
		
		
		return true;
	
	}
}

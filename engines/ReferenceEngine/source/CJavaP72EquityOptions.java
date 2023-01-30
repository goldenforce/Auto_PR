
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

public class CJavaP72EquityOptions implements JavaRule {
	private static Logger logger = Logger.getLogger("CJavaP72EquityOptions");
	private List<String> msgClsList = new ArrayList<String>();

	@Override
	public boolean initialize(String[] param) {
		if (param.length < 1) {
			logger.error("Required Parameters missing for CJavaP72EquityOptions in StreetRefMsgSet ");
			return false;
		}
		if (logger.isDebugEnabled())
			logger.debug("CJavaP72EquityOptions | initialize | Started Initializing ....");

		msgClsList = Arrays.asList(param[0].split(","));

		if (msgClsList.size() == 0) {
			logger.error("Missing Required Array Parameters for Message Classification List in StreetRefMsgSet ");
			return false;
		}
		if (logger.isDebugEnabled())
			logger.debug("CJavaP72EquityOptions | initialize | Started Initializing ....");

		if (logger.isDebugEnabled())
			logger.debug("CJavaP72EquityOptions | initialize | Completed Initializing ....");
		return true;

	}

	@Override
	public boolean process(XMLMessage msg, DatabaseObjectContainer dboc, ProcessorContext pContext,
			DatabaseAccess dbConnection, NotificationCreator nCreator) throws GSException {
		logger.info("CJavaP72EquityOptions process start");

		if (logger.isDebugEnabled())
			logger.debug("Before MSG: " + msg.getXMLString());

		CJavaP72Commons commons = null;
		commons = new CJavaP72Commons(msg, dboc, pContext, dbConnection, nCreator);
		String msgClassification = "";
		msgClassification = commons.getMsgClassification();

		String p72InstTyp1 = "";
		String p72InstTyp2 = "";
		String cl_value="";
		String rissInstrid="";
		String rissMktIssOid = "";
		String cl_valueforRiss = "";
		String mkisCountry = "";
		String guId = "";
		// String instr_id = "";
		String isin = "";
		String cusip = "";
		//String mkt_oid = "";
		String positionID = "";
		String positionIDOptions="";
		String sedol = "";
		String bbunique = "";
		String instrId="";
		// Msg Classification Check
		if (!msgClsList.contains(msgClassification)) {
			if (logger.isDebugEnabled())
				logger.debug("Exiting as Message Classification is not from the configured list." + msgClassification);
			return true;
		}
		if (logger.isDebugEnabled())
			logger.debug("msgClassification:" + msgClassification);
		
		instrId = pContext.getInstrId();
		if (instrId == null || "".equals(instrId)) {
			if (logger.isDebugEnabled())
				logger.debug("Cannot fetch Instr Id from msg..hence exiting");
			return true;
		}
		if (logger.isDebugEnabled())
			logger.debug("instrId:" + instrId);
		cl_value = commons.getStringFromDB("IssueClassification", "CL_VALUE", "INDUS_CL_SET_ID", "BBSECTYP",
				"INSTR_ID", instrId);

		logger.debug(" CJavaP72EquityOptions cl_value"+cl_value);
	
		if(cl_value !=null && "Equity Option".equalsIgnoreCase(cl_value))
		{
			rissInstrid = getInstrIDforRISS(instrId,dbConnection);
			logger.debug(" CJavaP72EquityOptions rissInstrid"+rissInstrid);

			if (rissInstrid == null || "".equals(rissInstrid)) {
				if (logger.isDebugEnabled())
					logger.debug("No rissInstrid fetched..exiting");
				return true;
			}
			else
			{
				
				cl_valueforRiss = commons.getStringFromDB("IssueClassification", "CL_VALUE", "INDUS_CL_SET_ID", "INSTYPGR",
						"INSTR_ID", rissInstrid);
				logger.debug(" CJavaP72EquityOptions cl_valueforRiss"+cl_valueforRiss);
				
				if(cl_valueforRiss !=null && "Commodity ETF".equalsIgnoreCase(cl_valueforRiss))
				{
					logger.debug(" CJavaP72EquityOptions inside if segemnet ISCL");
					
					SegmentId segIdISCL = msg.addSegment(XMLMessage.A_D_UNKNOWN, "IssueClassification");
					msg.setSegmentAttribute(segIdISCL, "MATCH","ISCL_CL_VALUE");
					msg.addField("CLSF_PURP_TYP",segIdISCL, "BICLSFOUR");
					msg.addField("INSTR_ID", segIdISCL, instrId);	
					msg.addField("CL_VALUE", segIdISCL, "Commodity ETF Option");
					msg.addField("INDUS_CL_SET_ID", segIdISCL, "INSTYPGR");
					msg.addField("CLSF_OID", segIdISCL,"INSTYPG158");

					
				}
				else if(cl_valueforRiss.endsWith("ETF")  && !cl_valueforRiss.startsWith("Commodity"))
				{
					logger.debug(" CJavaP72EquityOptions inside if else segemnet ISCL");
					
					SegmentId segIdISCL = msg.addSegment(XMLMessage.A_D_UNKNOWN, "IssueClassification");
					msg.setSegmentAttribute(segIdISCL, "MATCH","ISCL_CL_VALUE");
					msg.addField("CLSF_PURP_TYP",segIdISCL, "BICLSFOUR");
					msg.addField("INSTR_ID", segIdISCL, instrId);	
					msg.addField("CL_VALUE", segIdISCL, "Non-Commodity ETF Option");
					msg.addField("INDUS_CL_SET_ID", segIdISCL, "INSTYPGR");
					msg.addField("CLSF_OID", segIdISCL,"INSTYPG159");

					
				}
				else
				{

					logger.debug(" CJavaP72EquityOptions inside  else segemnet ISCL");
					
					SegmentId segIdISCL = msg.addSegment(XMLMessage.A_D_UNKNOWN, "IssueClassification");
					msg.setSegmentAttribute(segIdISCL, "MATCH","ISCL_CL_VALUE");
					msg.addField("CLSF_PURP_TYP",segIdISCL, "BICLSFOUR");
					msg.addField("INSTR_ID", segIdISCL, instrId);	
					msg.addField("CL_VALUE", segIdISCL, "Common Stock Option");
					msg.addField("INDUS_CL_SET_ID", segIdISCL, "INSTYPGR");
					msg.addField("CLSF_OID", segIdISCL,"INSTYPG160");


					
				}
					
	}

		}
		if (logger.isDebugEnabled())
			logger.debug("Successfully processed Java Rule CJavaP72EquityOptions");
		if (logger.isDebugEnabled())
			logger.debug("XML after processing" + msg.getXMLString());
		return true;
	}
	
	
	private String getInstrIDforRISS(String instrId, DatabaseAccess dbConnection) {

		String sql = " SELECT RISS.instr_id" + " FROM FT_T_RIDF RIDF ,FT_T_RISS RISS"
				+ " WHERE RIDF.INSTR_ID = :p_instrId<char[11]>"
				+" AND RIDF.REL_TYP = 'UNDERLYG' AND RIDF.RLD_ISS_FEAT_ID = RISS.RLD_ISS_FEAT_ID AND RISS.ISS_PART_RL_TYP = 'UNDLYING'" 
				+" AND (RIDF.END_TMS IS NULL OR RIDF.END_TMS > SYSDATE())AND (RISS.END_TMS IS NULL OR RISS.END_TMS > SYSDATE())";
				

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

	
}

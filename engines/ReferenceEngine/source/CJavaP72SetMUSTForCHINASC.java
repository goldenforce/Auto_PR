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

public class CJavaP72SetMUSTForCHINASC implements JavaRule {
	private static Logger logger = Logger.getLogger("CJavaP72SetMUSTForCHINASC");
	private List<String> msgClsList  = new ArrayList<String>();
	 List<String> strList= new ArrayList<String>();

	@Override
	public boolean initialize(String[] param) {
		if (param.length < 1) {
			logger.error("Required Parameters missing for CJavaP72SetMUSTForCHINASC in StreetRefMsgSet ");
			return false;
		}
		if (logger.isDebugEnabled()) logger.debug("CJavaP72SetMUSTForCHINASC | initialize | Started Initializing ....");

		msgClsList = Arrays.asList(param[0].split(","));

		if (msgClsList.size() == 0) {
			logger.error("Missing Required Array Parameters for Message Classification List in StreetRefMsgSet ");
			return false;
		}
		if (logger.isDebugEnabled()) logger.debug("CJavaP72SetMUSTForCHINASC | initialize | Started Initializing ....");

		return true;
	}

	@Override
	public boolean process(XMLMessage msg, DatabaseObjectContainer dboc, ProcessorContext pContext, DatabaseAccess dbConnection,
			NotificationCreator nCreator) throws GSException {
		logger.info("CJavaP72SetMUSTForCHINASC process start");

		CJavaP72Commons commons = null;
		commons = new CJavaP72Commons(msg, dboc, pContext, dbConnection, nCreator);
		String msgClassification="";
		msgClassification = commons.getMsgClassification();
		String sqlOP="";
		String instr_id="";
		//String instrIssrId="";
		 String ricExt="";
		String guId="";
		String ricId="";
		String sql="";
	    String statVal="";
	    String mkt_iss_oid="";
	    String sqlIssId="";
	    String sql_guId="";
	  //  String iss_id="";
	    String isid_oid="";
	   
		if ( !msgClsList.contains(msgClassification) ) {
			if (logger.isDebugEnabled()) logger.debug("Exiting as Message Classification is not from the configured list." +msgClassification);
			return true;
		}
		if (logger.isDebugEnabled()) logger.debug("msgClassification:"+msgClassification);
		
		
		instr_id=commons.getStringFieldFromMsg("Issue", "INSTR_ID");
		if (instr_id == null || "".equals(instr_id)) {
			if (logger.isDebugEnabled()) logger.debug("No instrId found in incoming message..Hence exiting..");
			return true;
		}
		if (logger.isDebugEnabled()) logger.debug("instr_id >>" +instr_id);

		//instrIssrId=commons.getStringFieldFromMsg("ISSUE", "INSTR_ISSR_ID");
		//sqlOP="Select gu_id from ft_t_irgu where issr_gu_purp_typ='INCRPRTE' and instr_issr_id= '"+instrIssrId+"'";
		
		//fetching gu_id
		sql_guId="select gu_id from ft_t_irgu  where issr_gu_purp_typ='INCRPRTE' "
						+ "and instr_issr_id in (select instr_issr_id from ft_t_issu where instr_id=:p_instr_Id<char[11]> and (end_tms is null or end_tms >sysdate()))";
		try{	
			if (logger.isDebugEnabled()) logger.debug("Executing: " +sql_guId);

			dbConnection.setSQL(sql_guId);
			dbConnection.addParameter(instr_id);
			if (!dbConnection.execute()) {
				logger.error("ERROR: Failed to execute SQL statement.");
				
			}

			// Only fetch once, get the first result in case there are more
			if (!dbConnection.isEndOfStream()) {
				guId = dbConnection.getNextString().trim();
				if (logger.isDebugEnabled()) logger.debug("guId from query>>" +guId);

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
		
				//guId=commons.getFirstValDB(sql_qry);
				//logger.debug("guId fetched>>" +guId);
				if (guId == null || "".equals(guId)|| (!"CN".equals(guId) && !"HK".equals(guId))) {
					if (logger.isDebugEnabled()) logger.debug("No guId found OR guId is not 'CN'..Hence exiting..");
					return true;
				}
		
				//fetching iss_id and isid_oid
				sqlIssId="select iss_id || '|' || isid_oid from ft_t_isid fti  where id_ctxt_typ='RIC' and instr_id= :p_instr_Id<char[11]> and listing_symbol_ind='Y' and (END_TMS IS NULL OR END_TMS > SYSDATE())";
				try{	
					if (logger.isDebugEnabled()) logger.debug("Executing: " +sqlIssId);

					dbConnection.setSQL(sqlIssId);
					dbConnection.addParameter(instr_id);
					if (!dbConnection.execute()) {
						logger.error("ERROR: Failed to execute SQL statement.");
						
					}

					while(!dbConnection.isEndOfStream()){
					
						sqlOP = dbConnection.getNextString().trim();
						strList.add(sqlOP);
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
				
				String[] arr= strList.toArray(new String[0]);
				for(int i=0; i<arr.length;i++){
					
				String[] splt= arr[i].split("\\|");
				  ricId=splt[0];
				  isid_oid=splt[1];
		
				
				if ((ricId == null || "".equals(ricId)) || ( isid_oid==null || "".equals(isid_oid))) {
					if (logger.isDebugEnabled()) logger.debug("No ricId or isid_oid found.. Hence exiting..");
					continue;
				}
				
					//ricId =commons.getStringFieldFromMsg("IssueIdentifier", "ISS_ID", "ID_CTXT_TYP", "RIC");
					// String[] arr= ricId.split("\\.");
					 ricExt=ricId.substring(ricId.lastIndexOf(".")+1);
				    
					if(ricExt.equals("HK")){
						statVal="H";		
			       }
					else if(ricExt.equals("SZ")){
						statVal="B";
					}
					else if(ricExt.equals("SS")){
						statVal="A";
					}
					
				if(statVal==null || "".equals(statVal))	{
					if (logger.isDebugEnabled()) logger.debug("No statVal found..Hence exiting..");
					continue;
					
				}
				//fetching mkt_iss_oid based on isid
				sql="select mkt_iss_oid from ft_t_mixr where isid_oid=:p_isid_oid<char[11]> and (end_tms is null or end_tms >sysdate())";
				try{	
					if (logger.isDebugEnabled()) logger.debug("Executing: " +sql);

					dbConnection.setSQL(sql);
					dbConnection.addParameter(isid_oid);
					if (!dbConnection.execute()) {
						logger.error("ERROR: Failed to execute SQL statement.");
						
					}

					// Only fetch once, get the first result in case there are more
					if (!dbConnection.isEndOfStream()) {
						mkt_iss_oid = dbConnection.getNextString().trim();
						if (logger.isDebugEnabled()) logger.debug("mkt_iss_oid from query>>" +mkt_iss_oid);

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
				
			
					SegmentId mustSegID = msg.addSegment(XMLMessage.A_D_UNKNOWN, "MarketIssueStatistic");
					
					msg.addField("STAT_DEF_ID", mustSegID, "CHINASC");
					msg.addField("STAT_CHAR_VAL_TXT", mustSegID, statVal);
				    msg.addField("MKT_ISS_OID", mustSegID, mkt_iss_oid);
				    if (logger.isDebugEnabled()) logger.debug("Successfully added field STAT_CHAR_VAL_TXT to Segment ID:" + mustSegID);
					
				}
	
		return true;
	}

}

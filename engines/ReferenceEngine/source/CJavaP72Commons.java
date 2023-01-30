import java.io.StringReader;
import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import javax.swing.text.Segment;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.apache.log4j.Logger;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

import com.thegoldensource.jbre.DatabaseAccess;
import com.thegoldensource.jbre.DatabaseObjectContainer;
import com.thegoldensource.jbre.GSException;
import com.thegoldensource.jbre.NotificationCreator;
import com.thegoldensource.jbre.ProcessorContext;
import com.thegoldensource.jbre.SegmentId;
import com.thegoldensource.jbre.XMLMessage;


public class CJavaP72Commons {
	private static Logger logger = Logger.getLogger("CJavaP72Commons");
	
	private XMLMessage msg = null;
	private DatabaseObjectContainer dboc = null;
	private ProcessorContext pContext = null;
	private DatabaseAccess dbConnection = null;
	private NotificationCreator notificationCreator = null;
	private List<SegmentId> segIdsISID = new ArrayList<SegmentId>();
	
	public CJavaP72Commons(XMLMessage msg,
			         DatabaseObjectContainer dboc,
			         ProcessorContext pContext,
			         DatabaseAccess dbConnection,
			         NotificationCreator notificationCreator) {
		this.msg = msg;
		this.dboc = dboc;
		this.pContext = pContext;
		this.dbConnection = dbConnection;
		this.notificationCreator = notificationCreator;
	}
	
	
	
	public DatabaseAccess getDbConnection() {
		return dbConnection;
	}


	/**
	 * Get Segments of a specific Type
	 * @param msg XMLMessage
	 * @param segType Type of segement e.g. Issue, IssueIdentifier 
	 * @return A list of SegmentId objects
	 */
	public List<SegmentId> getSegmentIds(String segType) {
		List<SegmentId> segIdList = new ArrayList<SegmentId>();
		for (int i=0; i<msg.getSegmentCount(); i++) {
			SegmentId segId = new SegmentId(i);			
			if (msg.getSegmentType(segId).equals(segType)) {
				segIdList.add(segId);
			}
		}		
		return segIdList;	
	}
	
	public SegmentId getSegmentId(String segType) {
		List<SegmentId> segIdList = getSegmentIds(segType);
		if (segIdList.size()>0){
			return segIdList.get(0);
		}else {
			return null;
		}		
	}
	
	public SegmentId getSegmentId(String segType, String filterColNme, String filterColVal) {
		List<SegmentId> segIdList = getSegmentIds(segType, filterColNme, filterColVal);
		if (segIdList.size()>0){
			return segIdList.get(0);
		}else {
			return null;
		}		
	}
	
	
	public List<SegmentId> getSegmentIds(String segType, String filterColNme, String filterColVal) {
		List<SegmentId> segIdList = new ArrayList<SegmentId>();
		for (int i=0; i<msg.getSegmentCount(); i++) {
			SegmentId segId = new SegmentId(i);			
			if (msg.getSegmentType(segId).equals(segType)) {
				
				if (filterColNme!=null && !"".equalsIgnoreCase(filterColNme) && filterColVal!=null && !"".equals(filterColVal)) {
					String	fColNameStr = msg.getStringField(filterColNme, segId);
					
					if (fColNameStr == null || "".equals(fColNameStr) ){
						fColNameStr = getKeyColFromOID (segId, filterColNme);
					}
					if (fColNameStr==null){
						continue;
					}
					if ( filterColVal.equalsIgnoreCase(fColNameStr) ) {
						segIdList.add(segId);	
					}					
				}else {
					segIdList.add(segId);	
				}
			}
		}		
		return segIdList;	
	}
	
	
	
	
	
	/**
	 * Returns the message classification from the header
	 * @param msg
	 * @return
	 */
	public String getMsgClassification() {
		
		String classification = msg.getStringField("MSG_CLASSIFICATION", new SegmentId(0));
		if (classification == null){
			return "";
		}
		
		return classification;
	}
	
	/**
	 * Returns the data_src_id from the header/0th segment
	 * @param msg
	 * @return
	 */
	public String getMsgDataSourceID() {
		
		String strDataSrcID = msg.getStringField("DATA_SRC_ID", new SegmentId(0));
		if (strDataSrcID == null)
			strDataSrcID = new String("");
		
		return strDataSrcID;
	}
	
	/**
	 * Check if the given message is a message from the Web Screens
	 * @return true if a screen message, false if it is a vendor message
	 */
	public boolean isScreenMessage() {
		if ("WEBMSG".equals(getMsgClassification())) {
			return true;
		}
		
		return false;
	}
	
	/**
	 * Returns the main segemnet type e.g. Issue, Issuer, FinancialInstituion,...
	 * @return main segment type
	 */
	public String getMainEntityType() {
		String entityTableType = msg.getStringField("MAIN_ENTITY_TBL_TYP", new SegmentId(0));
		if (entityTableType == null)
			entityTableType = new String("");

		return entityTableType;
	}

	/**
	 * Returns if the message is "manually" overriden 
	 * @param msg
	 * @return
	 */
	public boolean isMsgOverride() {
		String value = msg.getStringField("DATA_ID", new SegmentId(0));
		if (value != null && "Y".equalsIgnoreCase(value)) {
			return true;
		}
		return false;
	}
	
	/**
	 * Return a Identifier with a given context if the identifier is in the message
	 * @param msg XmlMessage
	 * @param idCtxt Context
	 * @return IssueIdentifier or an empty string if there was no identifier in the message with this context
	 */	
	public String getMsgIssueIdentifier(String idCtxt) {

		if (segIdsISID.isEmpty()){
			segIdsISID = getSegmentIds("IssueIdentifier");
		}
		String id;
		String currentCtxt = null;
		
		for (SegmentId segId : segIdsISID) {		
			currentCtxt = msg.getStringField("ID_CTXT_TYP", segId);
			if (currentCtxt != null && idCtxt.equals(currentCtxt)) {
				id = msg.getStringField("ISS_ID", segId);
				logger.debug(idCtxt + "=" + id);	
				if (id!=null){
					return id;					
				} else {
					return "";
				}
			}
		}
		logger.debug(idCtxt + "=");		
		return "";
	}
	public SegmentId getMsgIssueIdentifierSegment(String idCtxt) {
		if (segIdsISID.isEmpty()){
			segIdsISID = getSegmentIds("IssueIdentifier");
		}
		String currentCtxt = null;

		for (SegmentId segId : segIdsISID) {
			currentCtxt = msg.getStringField("ID_CTXT_TYP", segId);
			if (currentCtxt != null && idCtxt.equals(currentCtxt)) {
				return segId;
			}
		}
		logger.debug(idCtxt + "=");
		return null;
	}

	
	public String getDBInstrumentIdentifier(String id, String idCtxt) {
		String instrId = new String("");
		String strDataSrcID = new String("");
		String sql = "SELECT instr_id" +
				     "  FROM ft_t_isid " +
				     " WHERE id_ctxt_typ = :p_id_ctxt_typ<char[21]>" +
				     "   AND (iss_id = :p_iss_id<char[101]>)" +				     
				     "   AND start_tms <= sysdate() AND (end_tms IS NULL OR end_tms > sysdate())";		

		
		if( pContext.isRunningInVDDBMode() )
		{
			strDataSrcID = getMsgDataSourceID();
			if( strDataSrcID == null )
				strDataSrcID = "";
			
			sql += " AND data_src_id = :p_data_src_id<char[41]>"; 
		}
		
		try {
			logger.debug("Executing: " + sql);

			dbConnection.setSQL(sql);
			dbConnection.addParameter(idCtxt);
			dbConnection.addParameter(id);

			if( pContext.isRunningInVDDBMode() )
				dbConnection.addParameter(strDataSrcID);
			
			if (!dbConnection.execute()) {
				logger.error("ERROR: Failed to execute SQL statement.");
				return "";
			}

			// Only fetch once, get the first result in case there are more
			if (!dbConnection.isEndOfStream()) {
				instrId = dbConnection.getNextString().trim();
			}

		} catch (Exception e) {
			if (!(e instanceof GSException)) {
				logger.error("ERROR: " + e.getMessage());
			}
		} 
		
		if (instrId.equals(""))
			logger.debug("getDBInstrumentIdentifier - Instrument NOT found - INSTR_ID=" + instrId + ", ID_CTXT_TYP=" + idCtxt + ", ISS_ID=" + id );
		else
			logger.debug("getDBInstrumentIdentifier - Instrument found - INSTR_ID=" + instrId + ", ID_CTXT_TYP=" + idCtxt + ", ISS_ID=" + id );
		
		return instrId;		
	}	
	
	
	public String getMsgIssueTyp() {
		String issueTyp = null;
		SegmentId segId = new SegmentId(0); 
		if (!isScreenMessage()){
			segId = new SegmentId(0);
		} else {
			for (int i=0; i<msg.getSegmentCount(); i++) {
				if ("Issue".equalsIgnoreCase(msg.getSegmentType(new SegmentId(i)))) {
					segId = new SegmentId(i);				
				}
			}		
		}

		logger.debug("Trying to determine IssueTyp...");		
		issueTyp = msg.getStringField("ISS_TYP", segId);			
		logger.debug("IssueTyp=" + issueTyp);
		if(issueTyp!=null){
			return issueTyp;
		} else {
			return "";
		}
	}	
	public Date getDateFromMsg(String segmentNme,String col_nme)
	{
		Date ret=null;
		if (segmentNme==null || "".equals(segmentNme)){
			return null;
		}
		List<SegmentId> seg = getSegmentIds(segmentNme);
		if(seg==null || seg.size() == 0)
			return null;
		else
		{	
			if (! (getSegmentProcessInd(seg.get(0)).equals("D") || getSegmentProcessInd(seg.get(0)).equals("P")) ){
				ret=msg.getDateTimeField(col_nme,seg.get(0));
			}
		}
		if(ret!=null)
			return ret;
		else
			return null;
	}
	public Date getDateFromMsgWithFilter(String segmentNme,String colNme, String filterColNme, String filterColVal)
	{
		Date rtDte=null;
		if (segmentNme==null || "".equals(segmentNme)){
			return null;
		}
		List<SegmentId> segList = getSegmentIds(segmentNme);
		if(segList==null || segList.size() == 0)
			return null;
		else
		{
			if (filterColNme!=null && !"".equalsIgnoreCase(filterColNme) && filterColVal!=null && !"".equals(filterColVal)) {
				for (SegmentId segId : segList ) {
					if (getSegmentProcessInd(segId).equals("D") || getSegmentProcessInd(segId).equals("P")){
						continue;
					}
					
					String	fColNameStr = msg.getStringField(filterColNme, segId);
					
					if (fColNameStr == null || "".equals(fColNameStr) ){
						fColNameStr = getKeyColFromOID (segId, filterColNme);
					}
					if (fColNameStr==null){
						continue;
					}
					if ( filterColVal.equalsIgnoreCase(fColNameStr) ) {
						rtDte=msg.getDateTimeField(colNme,segId);
							if (rtDte!=null ) {
							break; }	
					}
					
				}
			}else {
				if (! (getSegmentProcessInd(segList.get(0)).equals("D") || getSegmentProcessInd(segList.get(0)).equals("P")) ){
					rtDte=msg.getDateTimeField(colNme,segList.get(0));
				}
			}
		}
			return rtDte;
	}
	
	private String getStringFromMsgWithFilter(String segmentNme,String colNme, String filterColNme, String filterColVal)
	{
		String rtStr=null;
		if (logger.isDebugEnabled()) logger.debug(" segmentNme:"+segmentNme+" colNme:"+colNme+" filterColNme: "+filterColNme+" filterColVal:"+filterColVal);
		List<SegmentId> segList = getSegmentIds(segmentNme);
		if(segList==null || segList.size() == 0){
			return null;}
		else
		{
			if (filterColNme!=null && !"".equalsIgnoreCase(filterColNme) && filterColVal!=null && !"".equals(filterColVal)) {
				for (SegmentId segId : segList ) {

					if (logger.isDebugEnabled()) logger.debug(" segList.size: "+segList.size());
					
					if (logger.isDebugEnabled()) logger.debug(" segId: "+segId);
					
					if (getSegmentProcessInd(segId).equals("D") || getSegmentProcessInd(segId).equals("P")){
						continue;
					}
					String	fColNameStr = msg.getStringField(filterColNme, segId);
					if (logger.isDebugEnabled()) logger.debug(" fColNameStr"+fColNameStr);
					if (fColNameStr == null || "".equals(fColNameStr) ){
						fColNameStr = getKeyColFromOID (segId, filterColNme);
					}
					if (fColNameStr==null){
						continue;
					}
					if ( filterColVal.equalsIgnoreCase(fColNameStr) ) {
						rtStr=msg.getStringField(colNme,segId);		
							if (rtStr!=null ) {
							break; }	
					}					
				}
			}else {
				if (! (getSegmentProcessInd(segList.get(0)).equals("D") || getSegmentProcessInd(segList.get(0)).equals("P")) ){
					rtStr=msg.getStringField(colNme,segList.get(0));
					if (logger.isDebugEnabled()) logger.debug(" in else rtStr"+rtStr);
					
				}
				
			}
		}

		return rtStr;
	}
	
	public String getCLSFOidFromCLValue (String indusClSetId, String clValue){
		return getFirstValDB("SELECT CLSF_OID FROM FT_T_INCL WHERE START_TMS < sysdate() AND (END_TMS IS NULL OR END_TMS > sysdate()) AND INDUS_CL_SET_ID='"+indusClSetId+"' AND CL_VALUE ='"+clValue+"'");
	}
	
	public void addIACLSegmentToMsg(String iacl_oid,String issact_id,String indus_cl_set_id,String clsf_oid, String cl_value,String user_id,Date start_tms,Date end_tms, boolean useMatchKey)
	{
		SegmentId ibq1SegId = msg.addSegment(XMLMessage.A_D_UNKNOWN, "IADCIssueActionClassification");
				if(useMatchKey)		{			msg.setSegmentAttribute(ibq1SegId, "MATCH", "IACL_MATCH_SET_PURP");		}		if(iacl_oid!=null)
			msg.addField("IACL_OID", ibq1SegId, iacl_oid);
		
		if (issact_id != null) {			
			msg.addField("ISSACT_ID", ibq1SegId, issact_id); }
		
		if (indus_cl_set_id != null) {
		msg.addField("INDUS_CL_SET_ID", ibq1SegId, indus_cl_set_id); }
		
		if (clsf_oid != null) {
		msg.addField("CLSF_OID", ibq1SegId, clsf_oid); }
		
		if (cl_value != null) {
		msg.addField("CL_VALUE", ibq1SegId, cl_value); }
		
		if (start_tms != null) {
		msg.addField("START_TMS", ibq1SegId, start_tms); }
		
		if (end_tms != null) {
		msg.addField("END_TMS", ibq1SegId, end_tms); }
		if (user_id != null) {
		msg.addField("LAST_CHG_USR_ID", ibq1SegId, user_id); }
	}
	
	

	private List<Date> getDateFieldListFromDB(String segmentNme,String colNme,String filterColNme, String filterColVal, String oidColumnName, String oidColVal)
	{
		List<Date> dateList = new ArrayList<Date>();
		String tbl_id=null;
		Date tempDte = null;
		//GET TBL_ID FROM DB
		if (segmentNme==null || "".equals(segmentNme)){
			logger.debug("SegmentId not found for segment name  : "+segmentNme);
			return null;
		}
		if (colNme==null || "".equals(colNme)){
			logger.debug("Column Name not found for segment name  : "+colNme);
			return null;
		}
		
		tbl_id = getTblIdFromSegName(segmentNme);
		
		if (tbl_id==null || "".equals(tbl_id)){
			logger.error("Unable to get Table id for Segment : " + segmentNme);
			return null;
		}
		//GET DATE FROM DB
		String sqlGetDateFromDB = "SELECT "+colNme+" FROM FT_T_"+tbl_id+" WHERE "+oidColumnName+" = "+"'"+oidColVal+"' ";
		
		if (!tbl_id.equals("IASS")){
			sqlGetDateFromDB = sqlGetDateFromDB+" AND (END_TMS > sysdate() OR END_TMS IS NULL)";
		}
		if (filterColNme!=null && !"".equals(filterColNme)) {
			sqlGetDateFromDB = sqlGetDateFromDB + " AND "+filterColNme+"='"+filterColVal+"' ";
		}
		if (tbl_id.equals("ICD1"))	{
			sqlGetDateFromDB = "select distinct("+colNme+") from ft_t_icd1 icd1, ft_t_iad1 iad1 where icd1.iad1_oid=iad1.iad1_oid "+
								" and iad1.issact_id='"+oidColVal+"' "+
								" and (iad1.end_tms is null or iad1.end_tms>sysdate()) "+
								" and (icd1.end_tms is null or icd1.end_tms>sysdate()) ";
		}
		
		try {
			logger.debug("Executing: " + sqlGetDateFromDB);

			dbConnection.setSQL(sqlGetDateFromDB);
			
			if (!dbConnection.execute()) {
				logger.error("ERROR: Failed to execute SQL statement.");
			}

			// Only fetch once, get the first result in case there are more
			while (!dbConnection.isEndOfStream()) {
				Date dte=dbConnection.getNextDate();
				if (dte==null){
					continue;
				}				
				tempDte=new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH).parse(new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH).format(dte));
				logger.debug("Retrieved Database Date : "+tempDte);
				dateList.add(tempDte);
			}
		} catch (Exception e) {
			if (!(e instanceof GSException)) {
				logger.error("ERROR: " + e.getMessage());
			}
		} 

		return dateList;
	}
	
	public List<String> getStringListFromMsg(String segment_nme,String col_nme)
	{
		if (segment_nme==null || "".equals(segment_nme)){
			return null;
		}
		ArrayList<String> valList=new ArrayList<String>();
		List<SegmentId> segList = getSegmentIds(segment_nme);
		String tmpStr=null;
		
		for (SegmentId segId : segList){
			if (getSegmentProcessInd(segId).equals("D") || getSegmentProcessInd(segId).equals("P")){
				continue;
			}
			tmpStr = msg.getStringField(col_nme,segId);
			valList.add(tmpStr);
			logger.debug("Segment Name : "+segment_nme+" Column Name : "+col_nme+" Value :"+tmpStr);
		}
		
		return valList;
	}
	public String getStringFieldFromMsg (String segmentNme,String colNme, String filterColNme, String filterColVal)
	{ if (logger.isDebugEnabled()) logger.debug("Segment Name : "+segmentNme+" Column Name : "+colNme+" filterColNme :"+filterColNme+" filterColVal:"+filterColVal);
		return getStringFromMsgWithFilter(segmentNme, colNme, filterColNme,  filterColVal);
	}
	public String getStringFieldFromMsg(String segment_nme,String col_nme)
	{
		String val=null;
		if (logger.isDebugEnabled()) logger.debug("Segment Name : "+segment_nme+" Column Name : "+col_nme);
		
		List<SegmentId> seg = getSegmentIds(segment_nme);
		if(seg==null || seg.size()>0){
			for (SegmentId segId : seg){
				if (getSegmentProcessInd(segId).equals("D") || getSegmentProcessInd(segId).equals("P")){
					continue;
				}
				val=msg.getStringField(col_nme,segId);
				if (val!=null && !"".equals(val)){
					return val;
				}
			}
			}
		
		return val;
	}
	public BigDecimal getDecimalFieldFromMsg(String segment_nme,String col_nme)
	{
		BigDecimal val = null;
		List<SegmentId> seg = getSegmentIds(segment_nme);
		if(seg==null || seg.size()>0){
			if (! (getSegmentProcessInd(seg.get(0)).equals("D") || getSegmentProcessInd(seg.get(0)).equals("P")) ){
				val=msg.getDecimalField(col_nme,seg.get(0));
			}
			}
		
		return val;
	}
	public String getStringFieldFromMsg(SegmentId segmentId, String col_nme)
	{
		String val=null;
		if(segmentId!=null ){
			if (! (getSegmentProcessInd(segmentId).equals("D") || getSegmentProcessInd(segmentId).equals("P")) ){
				val=msg.getStringField(col_nme,segmentId);
			}
			}
		
		return val;
	}
	
	

	
	public String getNestedStringFieldFromMsg(SegmentId prntSegId, String segment_nme,String col_nme)
	{
		String val=null;
		
		if (logger.isDebugEnabled()) logger.debug("Inside getNestedStringFieldFromMsg Current SegmentId is ->"+prntSegId);
		if (prntSegId == null){
			if (logger.isDebugEnabled())logger.debug("Returning from getNestedStringFieldFromMsg as prntSegId is null ");
			return null; 
		}
		
		val = getStringFromImmediateChild(prntSegId, col_nme);
		if (val == null || "".equals(val)){
			int childCnt = msg.countSegmentChildren(prntSegId);
			if (logger.isDebugEnabled())logger.debug("Inside getNestedStringFieldFromMsg for segment->"+prntSegId+"child count is ->"+childCnt);
			if (childCnt > 0){
				for (int i=0; i<childCnt ; i++) {
					prntSegId.add(i);
					if (logger.isDebugEnabled())logger.debug("Inside getNestedStringFieldFromMsg calling nested for segment->"+prntSegId );
					val = getNestedStringFieldFromMsg(prntSegId, segment_nme, col_nme);
					if (val!=null && !"".equals(val) ){
						if (logger.isDebugEnabled())logger.debug("Inside getNestedStringFieldFromMsg returning val ->"+val);
						return val ;
					}
					prntSegId.removeLast();
					
				} 
			}
		}		
		return val;
	}
	
	
	
	private String getStringFromImmediateChild (SegmentId segId, String colNme){
			String val=null;
			
			int childCnt = msg.countSegmentChildren(segId);
			logger.debug("Inside getStringFromImmediateChild Current SegmentId is ->"+segId+ " and childs are "+childCnt);
			if (childCnt > 0){
				for (int i=0; i<childCnt ; i++) {
					segId.add(i);
					logger.debug("Inside getStringFromImmediateChild Current SegmentId is ->"+segId);
					val = getStringFieldFromMsg(segId, colNme);
					if (val!=null && !"".equals(val) ){
						logger.debug("Inside getStringFromImmediateChild returning val ->"+val);
						return val;
					}
					
				}
			}
			return val;
		
	}

	public String getValidStringFieldFromMsg(String segment_nme,String col_nme)
	{
		String val=null;
		List<SegmentId> seg = getSegmentIds(segment_nme);
		if(seg==null || seg.size()>0)
			for (SegmentId segId : seg){
				if (getSegmentProcessInd(segId).equals("D") || getSegmentProcessInd(segId).equals("P")){
					continue;
				}
			val=msg.getStringField(col_nme,segId);
			if (val!=null && !"".equals("")){
				logger.debug("Segment Name : "+segment_nme+" Column Name : "+col_nme+" Value :"+val);
				return val;
			}
			}
		
		return val;
	}
	
	public Date getDateFieldFromMsg(String segment_nme,String col_nme)
	{
		Date val=null;
		List<SegmentId> seg = getSegmentIds(segment_nme);
		if(seg==null || seg.size()>0){
			if (! (getSegmentProcessInd(seg.get(0)).equals("D") || getSegmentProcessInd(seg.get(0)).equals("P")) ){
				val=msg.getDateTimeField(col_nme,seg.get(0));
				} 			
		}	
		logger.debug("Segment Name : "+segment_nme+" Column Name : "+col_nme+" Value :"+val);
		return val;
	}
	
	private String getStringFromMsgDBWithFilter (String segment_nme,String col_nme,String filterColNme, String filterColVal, String oidColName, String oidColVal){
		
		if ((segment_nme!=null && !"".equals(segment_nme)) && (col_nme!=null && !"".equals(col_nme))){
		String val = getStringFromMsgWithFilter(segment_nme, col_nme, filterColNme, filterColVal);
		logger.debug("value for Message is "+val);
		if (val==null || "".equals(val)){			
			val = getStrFieldFromDB(segment_nme, col_nme, filterColNme, filterColVal, oidColName, oidColVal);
			logger.debug("value for Database is "+val);
			return val;			
		}else {
			return val;
		}
		}else 
			return null;
	}
	
	public String getStringFromMsgDB (String segment_nme,String col_nme, String oidColName, String oidColVal){
		return getStringFromMsgDBWithFilter (segment_nme,col_nme, null, null, oidColName, oidColVal);
		}
	public String getStringFromMsgDB (String segment_nme,String col_nme,String filterColNme, String filterColVal, String oidColName, String oidColVal){
		return getStringFromMsgDBWithFilter (segment_nme,col_nme, filterColNme, filterColVal, oidColName, oidColVal);
		}
	public String getStringFromDB (String segment_nme,String col_nme,String oidColName, String oidColVal){
		return getStrFieldFromDB (segment_nme,col_nme,  null, null, oidColName, oidColVal);
		}
	public String getStringFromDB (String segment_nme,String col_nme, String filterColNme, String filterColVal, String oidColName, String oidColVal){
		return getStrFieldFromDB (segment_nme,col_nme, filterColNme, filterColVal, oidColName, oidColVal);
		}
	public List<String> getStringListFromDB (String segment_nme,String col_nme, String filterColNme, String filterColVal, String oidColName, String oidColVal){
		return getFieldListFromDB (segment_nme,col_nme, filterColNme, filterColVal, oidColName, oidColVal);
		}
	
	public Date getDateFieldFromDB (String segment_nme,String col_nme,String oidColName, String oidColVal){
		return getDateFieldFromDB(segment_nme,col_nme,  null, null, oidColName, oidColVal);
		}
	
	private String getStrFieldFromDB(String segment_nme,String col_nme,String filterColNme, String filterColVal, String oidColName, String oidColVal)
	{
		List<String> valList = getFieldListFromDB( segment_nme, col_nme, filterColNme, filterColVal, oidColName, oidColVal);
		if (valList!=null && valList.size()>0){
			return valList.get(0);
		} else {
			return null;
		}
	}
	public Date getDateFieldFromDB(String segment_nme,String col_nme,String filterColNme, String filterColVal, String oidColName, String oidColVal)
	{
		List<Date> valList = getDateFieldListFromDB(segment_nme, col_nme, filterColNme, filterColVal, oidColName, oidColVal);
		if (valList!=null && valList.size()>0){
			return valList.get(0);
		} else {
			return null;
		}
	}
	
	private List<String> getFieldListFromDB(String segment_nme,String col_nme,String filterColNme, String filterColVal, String oidColumnName, String oidColVal)
	{
		List<String> valList = new ArrayList<String>();
		String tbl_id=null;
		//GET TBL_ID FROM DB
		if (segment_nme==null || "".equals(segment_nme)){
			logger.debug("SegmentId not found for segment name  : "+segment_nme);
			return null;
		}
		if (col_nme==null || "".equals(col_nme)){
			logger.debug("Column Name not found for segment name  : "+col_nme);
			return null;
		}

		tbl_id = getTblIdFromSegName(segment_nme);
		
		if (tbl_id==null || "".equals(tbl_id)){
			logger.error("Unable to get Table id for Segment : " + segment_nme);
			return null;
		}
		
		if (oidColumnName==null || "".equals(oidColumnName)){
			logger.error("Primary Column name undefined : " + oidColumnName);
			return null;
		}
		
		if (oidColVal==null || "".equals(oidColVal)){
			logger.error("Primary Column Value undefined : " + oidColVal);
			return null;
		}
		
		//GET FEILD FROM DB
		String sqlGetDataFromDB = "SELECT TRIM("+col_nme+") FROM FT_T_"+tbl_id+" WHERE "+oidColumnName+" = "+"'"+oidColVal+"' ";
		if (!tbl_id.equals("IASS")){
			sqlGetDataFromDB+="AND (END_TMS > sysdate() OR END_TMS IS NULL)";
		}
		if (filterColNme!=null && !"".equals(filterColNme)) {
			sqlGetDataFromDB = sqlGetDataFromDB + " AND "+filterColNme+"='"+filterColVal+"' ";
		}
		 if (tbl_id.equals("ICD1"))	{
			
			 if (!col_nme.contains(".") && !col_nme.contains("<P72DELIM>") ){
				 col_nme = "ICD1."+col_nme;
			 }
				sqlGetDataFromDB = "select distinct(TRIM("+col_nme+")) from ft_t_icd1 icd1, ft_t_iad1 iad1 where icd1.iad1_oid=iad1.iad1_oid "+
									" and "+oidColumnName+" ='"+oidColVal+"' "+
									" and (iad1.end_tms is null or iad1.end_tms>sysdate()) "+
									" and (icd1.end_tms is null or icd1.end_tms>sysdate()) ";
		}
		 
		try {
			logger.debug("Executing: " + sqlGetDataFromDB);

			dbConnection.setSQL(sqlGetDataFromDB);
			
			if (!dbConnection.execute()) {
				logger.error("ERROR: Failed to execute SQL statement.");
				return null;
			}

			// Only fetch once, get the first result in case there are more
			while (!dbConnection.isEndOfStream()) {
				valList.add(dbConnection.getNextString());
			}
		} catch (Exception e) {
			if (!(e instanceof GSException)) {
				logger.error("ERROR during executing Constructed Query: " + e.getMessage());
			}
		} 
		return valList;
	}
	
	
	private String getTblIdFromSegName (String segmentName){
		String tblId = "";
		//GET TBL_ID FROM DB
		if (segmentName==null || "".equals(segmentName)){
			logger.debug("Invalid Segment name  : "+segmentName);
			return null;
		}
		
		tblId = CJavaP72MetaDataCache.getSegDescFromName(segmentName);
		if (tblId!=null && !"".equals(tblId)){
			return tblId;
		}
		
		String sqlGetTblID = "SELECT SEGMENT_DESC FROM FT_T_XSEG XSEG WHERE XSEG.SEGMENT_NME=:segment_nme<char[255]>";
		try {
			logger.debug("Executing: " + sqlGetTblID);

			dbConnection.setSQL(sqlGetTblID);
			dbConnection.addParameter(segmentName);
			
			if (!dbConnection.execute()) {
				logger.error("ERROR: Failed to execute SQL statement.");
			}

			// Only fetch once, get the first result in case there are more
			if (!dbConnection.isEndOfStream()) {
				tblId=dbConnection.getNextString().trim();
				logger.debug("Retrieved Table ID : "+tblId);
			}
		} catch (Exception e) {
			if (!(e instanceof GSException)) {
				logger.error("ERROR: " + e.getMessage());
			}
		}
		
		CJavaP72MetaDataCache.setSegDescForName(segmentName, tblId);
		return tblId;
		
	}
	
	public String getTblAndOIDIdFromSegName (String segmentName){
		String tblId = "";
		String OidColNme = "";
		//GET TBL_ID FROM DB
		if (segmentName==null || "".equals(segmentName)){
			logger.debug("Invalid Segment name  : "+segmentName);
			return null;
		}
		
		tblId = CJavaP72MetaDataCache.getSegDescFromName(segmentName);
		if (tblId!=null && !"".equals(tblId) ) {
			OidColNme = CJavaP72MetaDataCache.getTblOidFromName(tblId);
				if (OidColNme!=null && !"".equals(OidColNme)){
					return tblId+"::"+OidColNme;
			}
		}
		
		String sqlGetTblID = " SELECT DISTINCT TIDC.TBL_ID ,TIDC.COL_NME FROM FT_T_XSEG XSEG, FT_T_TIDC TIDC, FT_T_TIDX TIDX WHERE  XSEG.SEGMENT_NME=:segment_nme<char[255]> "+
							" AND TIDC.TIDX_OID = TIDX.TIDX_OID AND XSEG.SEGMENT_DESC = TIDC.TBL_ID AND TIDC.TBL_ID = TIDX.TBL_ID AND  TBL_INDEX_TYP='P'"; 
		
		try {
			logger.debug("Executing: " + sqlGetTblID);

			dbConnection.setSQL(sqlGetTblID);
			dbConnection.addParameter(segmentName);
			
			if (!dbConnection.execute()) {
				logger.error("ERROR: Failed to execute SQL statement.");
			}

			// Only fetch once, get the first result in case there are more
			if (!dbConnection.isEndOfStream()) {
				tblId=dbConnection.getNextString().trim();
				logger.debug("Retrieved Table ID : "+tblId);
			}
			if (!dbConnection.isEndOfStream()) {
				OidColNme=dbConnection.getNextString().trim();
				logger.debug("Retrieved Table ID : "+tblId);
			}
		} catch (Exception e) {
			if (!(e instanceof GSException)) {
				logger.error("ERROR: " + e.getMessage());
			}
		}
		
		CJavaP72MetaDataCache.setTblOidForName(tblId, OidColNme);
		
		return tblId+"::"+OidColNme;
		
	}
	public Date calculateBusinessDate(Date d,int num_days,String cal_id )
	{
			return calculateBusinessDate(d,num_days,cal_id, null);
	}
	
	public Date calculateBusinessDate(Date d,int num_days,String cal_id, String direction)
	{
		logger.debug("Started Calculating business Date");
		Date r_date=null;
		String sqlGetBusinessDay =null;
		
		String str_date=new SimpleDateFormat("dd-MM-yyyy").format(d);
		if (cal_id!=null && !"".equals(cal_id)){
			
			if(num_days>0){
				if (direction==null || "".equals(direction)) {
				direction="N";
				}
			}	
			else
			{
				if (direction==null || "".equals(direction)) {
					direction="P";
					}
				num_days=num_days*-1;
			}
			
			sqlGetBusinessDay = "select getBusinessDay(to_date('"+str_date+"','DD-MM-YYYY'),"+num_days+",'"+cal_id+"','"+direction+"') from dual";
		}else {
			sqlGetBusinessDay = "select to_char( trunc(to_date('"+str_date+"','DD-MM-YYYY'))+ "+num_days+" , 'YYYY-MM-DD') from dual";	
		}
		try {
			logger.debug("Executing: " + sqlGetBusinessDay);

			dbConnection.setSQL(sqlGetBusinessDay);
			
			if (!dbConnection.execute()) {
				logger.error("ERROR: Failed to execute SQL statement.");
			}

			// Only fetch once, get the first result in case there are more
			if (!dbConnection.isEndOfStream()) {
				String dte=dbConnection.getNextString();
				if (dte!=null )
				{	
					if(dte.trim().isEmpty()==false)
					{	
						logger.debug(" Printingggggggggggg Dte"+dte);
						dte=dte.substring(0,10);
						r_date=new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH).parse(dte);
					}
				}
				logger.debug("Retrieved Database Date : "+r_date);
				return r_date;
			}
		} catch (Exception e) {
			if (!(e instanceof GSException)) {
				logger.error("ERROR: " + e.getMessage());
			}
		} 
		return null;
	}
	
	private String getKeyColFromOID (SegmentId segId,  String filterColNme){
		String oid = "";
		String oidColName = "";
		String tblName = "";
		if (segId == null || "".equals(segId)){
			logger.error("Empty segment Id ");
			return null;
		}
		String segmentName = msg.getSegmentType(segId);

		if (segmentName==null || "".equals(segmentName)){
			logger.error("Error fetching segment name for segId="+segId);
			return null;		
		}
		if (segmentName.equals("IssueClassification") ){
			oidColName = "ISS_CLSF_OID";
			tblName = "FT_T_ISCL";
		}	
		else if(segmentName.equals("IADCIssueActionCharacteristics"))
		{
			oidColName = "IAC1_OID";
			tblName = "FT_T_IAC1";
		}
		else if(segmentName.equals("IssueActionStatistic"))
		{
			oidColName = "IASS_OID";
			tblName = "FT_T_IASS";
		}
		else if(segmentName.equals("IADCIssueActionClassification"))
		{
			oidColName = "IACL_OID";
			tblName = "FT_T_IACL";
		}
		else if(segmentName.equals("FinancialInstitutionDescription"))
		{
			oidColName = "FIDE_OID";
			tblName = "FT_T_FIDE";
		}
		//STP2 JIRA 3945/3970 START
		else if(segmentName.equals("ISSUIssueActionInformation"))
		{
			oidColName = "IAIN_OID";
			tblName = "FT_T_IAIN";
		}
		//STP2 JIRA 3945/3970 END
		else if(segmentName.equals("RelatedIssue"))
		{
			oidColName = "RISS_OID";
			tblName = "FT_T_RISS";
		}
		
		else
		{	
			logger.error("kindly provide details of SegmentName"+segmentName+" filterColName"+filterColNme);
		}
		
			oid = getStringFieldFromMsg(segId, oidColName);
			if (oid==null || "".equals(oid)){
				return null;
			}
			return getFirstValDB("SELECT "+filterColNme+" FROM "+tblName+" WHERE "+oidColName+" = '"+oid+"' ");
		
	}
	
	public boolean hasMsgValueModified(String segmentName ,String colNme ){
		return hasMsgValueModified( segmentName , colNme, null , null );
	}
	
	public boolean hasMsgValueModified(String segmentName ,String colNme, String filterColNme, String filterColVal){
		
		List<SegmentId> segIdList ;
		segIdList = getSegmentIds(segmentName);
		return hasMsgValueModified(segIdList ,colNme, filterColNme, filterColVal);
	}
	
	public boolean hasMsgValueModified(SegmentId segId ,String colNme, String filterColNme, String filterColVal){
		
		List<SegmentId> segIdList = new ArrayList<SegmentId>(); 
		segIdList.add(segId);
		return hasMsgValueModified(segIdList ,colNme, filterColNme, filterColVal);
	}
		
	public boolean hasMsgValueModified(List<SegmentId> segIdList ,String colNme, String filterColNme, String filterColVal){	
		String tempStr = null;
		String segProcessedInd = null;
		String fColNameStr = null;
		
		if (segIdList ==null){
			logger.debug("segIdList is null");
			return false;
		}
		for ( SegmentId segId : segIdList ) {
			segProcessedInd = msg.getSegmentAttribute(segId,"SEGPROCESSEDIND");
			if (filterColNme!=null && !"".equalsIgnoreCase(filterColNme) && filterColVal!=null && !"".equals(filterColVal)) {
					fColNameStr = msg.getStringField(filterColNme, segId);
					
					if (fColNameStr == null || "".equals(fColNameStr) ){
						fColNameStr = getKeyColFromOID (segId, filterColNme);
					}
					if (fColNameStr==null){
						return true;
					}
					if ( filterColVal.equalsIgnoreCase(fColNameStr) ){
						tempStr =  msg.getFieldAttribute(colNme, segId, "OLD_VALUE");		
						if (segProcessedInd!=null && ( segProcessedInd.equals("C") ||  segProcessedInd.equals("D") ||  segProcessedInd.equals("P")) ){
							logger.debug("New Segment in condition returing true "+segProcessedInd);
							return true;
						}
					}					
			}else {
				tempStr =  msg.getFieldAttribute(colNme, segId, "OLD_VALUE");
				if (segProcessedInd!=null && ( segProcessedInd.equals("C")  ||  segProcessedInd.equals("D") ||  segProcessedInd.equals("P")) ){
					logger.debug("New Segment returing true "+segProcessedInd);
					return true;
				}
			}
			
	   if (tempStr == null) {
		   logger.debug("before Continue "+tempStr);
			continue;
		} else {
			logger.debug("returing true "+tempStr);
			return true;
		}
		}
		return false;
	}
	
	
	public String getOldStringValue(String segmentName ,String colNme ){
		return getOldStringValue( segmentName , colNme, null , null );
	}
	
	public String getOldStringValue(String segmentName ,String colNme, String filterColNme, String filterColVal){
		
		List<SegmentId> segIdList = null; 
		segIdList = getSegmentIds(segmentName, filterColNme, filterColVal);
		String tempStr = "";
		String segProcessedInd = null;
		for ( SegmentId segId : segIdList ) {
			segProcessedInd = msg.getSegmentAttribute(segId,"SEGPROCESSEDIND");
			if (filterColNme!=null && !"".equalsIgnoreCase(filterColNme) && filterColVal!=null && !"".equals(filterColVal)) {

				String	fColNameStr = msg.getStringField(filterColNme, segId);
				
				if (fColNameStr == null || "".equals(fColNameStr) ){
					fColNameStr = getKeyColFromOID (segId, filterColNme);
				}
				if (fColNameStr==null){
					continue;
				}
				if ( filterColVal.equalsIgnoreCase(fColNameStr) ) {
						tempStr =  msg.getFieldAttribute(colNme, segId, "OLD_VALUE");		
						if (segProcessedInd!=null && ( segProcessedInd.equals("C")  ||  segProcessedInd.equals("D") ||  segProcessedInd.equals("P")) ){
							logger.debug("New Segment in condition returing true "+segProcessedInd);
							return "";
						}
					}					
			}else {
				tempStr =  msg.getFieldAttribute(colNme, segId, "OLD_VALUE");
				if (segProcessedInd!=null && ( segProcessedInd.equals("C")  ||  segProcessedInd.equals("D") ||  segProcessedInd.equals("P")) ){
					logger.debug("New Segment returing true "+segProcessedInd);
					return "";
				}
			}
			
	   if (tempStr == null) {
		   logger.debug("before Continue "+tempStr);
			continue;
		} else {
			logger.debug("returing  "+tempStr);
			return tempStr;
		}
		}
		return tempStr;
	}


	
	public String getIssactTyp(String issactId){
		String issactTyp = msg.getStringField("ISSACT_TYP",new SegmentId(0));
		
		return (issactTyp != null) ? issactTyp : getDBIssactTyp(issactId);
	}
	
	public String getDBIssactTyp(String issact_id) {
		String issact_typ="";
		String sql = "SELECT trim(ISSACT_TYP) " +
				     "  FROM ft_t_iadc " +
				     " WHERE ISSACT_ID = :p_issact_id<char[11]>" +			     
				     "  AND (END_TMS IS NULL or end_tms >sysdate())";		

		try {
			logger.debug("Executing: " + sql);

			dbConnection.setSQL(sql);
			dbConnection.addParameter(issact_id);
			
			if (!dbConnection.execute()) {
				logger.error("ERROR: Failed to execute SQL statement.");
			}

			// Only fetch once, get the first result in case there are more
			if (!dbConnection.isEndOfStream()) {
				issact_typ = dbConnection.getNextString();
			}

		} catch (Exception e) {
			if (!(e instanceof GSException)) {
				logger.error("ERROR: " + e.getMessage());
			}
		} 	
		return issact_typ;
	}
	
	
	public List<String> getFirstColListDB(String query) {
		if (query==null || "".equals(query)){
			return null;
		}
		
		logger.debug("Executing: " + query);
		
		List<String>  resltList = new ArrayList<String>();
		try {
			dbConnection.setSQL(query);
			
			if (!dbConnection.execute()) {
				logger.error("ERROR: Failed to execute SQL statement.");
			}
			while (!dbConnection.isEndOfStream()) {
				resltList.add(dbConnection.getNextString());
			}
		} catch (Exception e) {
			if (!(e instanceof GSException)) {
				logger.error("ERROR: " + e.getMessage());
			}
		} 	
		return resltList;
	}
	
	public String getFirstValDB(String query) {
		
		if (query==null || "".equals(query)){
			return null;
		}
		
		logger.debug("Executing: " + query);
		
		try {
			dbConnection.setSQL(query);
			
			if (!dbConnection.execute()) {
				logger.error("ERROR: Failed to execute SQL statement.");
			}
			if (!dbConnection.isEndOfStream()) {
				return dbConnection.getNextString().trim();
			}
		} catch (Exception e) {
			if (!(e instanceof GSException)) {
				logger.error("ERROR: " + e.getMessage());
			}
		} 	
		return null;
		
		}
	
public Date getFirstDateValDB(String query) {
		
		if (query==null || "".equals(query)){
			return null;
		}
		
		logger.debug("Executing: " + query);
		
		try {
			dbConnection.setSQL(query);
			
			if (!dbConnection.execute()) {
				logger.error("ERROR: Failed to execute SQL statement.");
			}
			if (!dbConnection.isEndOfStream()) {
				return dbConnection.getNextDate();
			}
		} catch (Exception e) {
			if (!(e instanceof GSException)) {
				logger.error("ERROR: " + e.getMessage());
			}
		} 	
		return null;
		
		}
	
	
	/**
	 * Checks if the instrument in the message is in scope of OE
	 * @param msg
	 * @param db
	 * @param context
	 * @return
	 */
	
	
	/**
	 * This function Drills down the nested segments to three child levels.
	 * @param segId - original segment Id
	 * @param lst - list containing list of all three levels
	 * @param maxVal - number of segments at each level
	 * @return
	 */
	public List<List<String>> findNestedIdentifiers(SegmentId segId, int maxVal){
		logger.debug("processing findNestedIdentifiers()");
		List<String> firstLevel = new ArrayList<String>();
		List<String> secondLevel = new ArrayList<String>();
		List<String> thirdLevel = new ArrayList<String>();
		List<List<String>> mList = new ArrayList<List<String>>();
		String s = null;
		int MAXVAL = maxVal;
		logger.debug("Looping for getting all nested Segment Ids : start");
		for(int p = 0 ; p < MAXVAL ; p++){
			for(int n = 0 ; n < MAXVAL ; n++){
				for(int m = 0 ; m < MAXVAL ; m++){
				s = segId + "-" + p + "-" + n + "-" + m;
					if(!thirdLevel.contains(s)){
						thirdLevel.add(s);
					}
						for(int l = 0 ; l < MAXVAL ; l++){
							for(int k = 0 ; k < MAXVAL ; k++){
								s = segId + "-" + l + "-" + k;
								if(!secondLevel.contains(s)){
									secondLevel.add(s);
									}
								for(int j = 0 ; j < MAXVAL ; j++){
									s = segId + "-" + String.valueOf(j);
									if(!firstLevel.contains(s)){
										firstLevel.add(s);
									}
								}
							}
						}
						
					}
				}
			}
		logger.debug("Looping for getting all nested Segment Ids : start");
		Collections.sort(firstLevel);
		Collections.sort(secondLevel);
		Collections.sort(thirdLevel);
		logger.debug("Sorted all Lists containing segment Id's");
		//System.out.println("printing firstLevel segments :" +firstLevel);
		//System.out.println("printing secondLevel segments:" +secondLevel);
		//System.out.println("printing thirdLevel segments:" +thirdLevel);
		mList.add(firstLevel);
		mList.add(secondLevel);
		mList.add(thirdLevel);
		logger.debug("Returning List of all three nested segment lists");
		return mList;
	}
	
	public String getNextSeqValue(String seq) {

		String sqlFetchID = null;
		sqlFetchID = "SELECT " + seq + ".nextval FROM DUAL";
		String strId = null;
		try {
			dbConnection.setSQL(sqlFetchID);
			dbConnection.execute();
			while (!dbConnection.isEndOfStream()) {
				strId = dbConnection.getNextString();
			}
			dbConnection.close();
		} catch (Exception e) {
			logger.error("SQL query ("+sqlFetchID+") to get Next sequence failed, message = '" + e.getMessage() + "'");
			logger.debug(e);
		}
		return strId;
	}
	
	
	
	public String getLastChgUsrId (){
		String firstVal = parseXMLFetchFirstAttibuteValue( msg.getXMLString(), "LASTCHGUSRID", "VALUE");
		if (firstVal == null || "".equals(firstVal)){
			String usrId = msg.getStringField("LAST_CHG_USR_ID",new SegmentId(0));
			if (usrId == null || "".equals(usrId) ){
				return "";
			}else {
				return usrId;
			}
		} else {
			return firstVal;
		}
	}
	
	public String parseXMLFetchFirstAttibuteValue(String xmlString, String fieldName, String attributeName )
    {
		Document document;
        DocumentBuilder documentBuilder;
        DocumentBuilderFactory documentBuilderFactory;
        NodeList nodeList;
        String tempVal ="";
        ArrayList<String> arList = new ArrayList<String>();
        try
        {
            documentBuilderFactory = DocumentBuilderFactory.newInstance();
            documentBuilder = documentBuilderFactory.newDocumentBuilder();
            InputSource ist = new InputSource(new StringReader(xmlString));
            document = documentBuilder.parse(ist);
            nodeList = document.getElementsByTagName("*");
            document.getDocumentElement().normalize();

            for (int index = 0; index < nodeList.getLength(); index++)
            {
                Node node = nodeList.item(index);
                if (node.getNodeType() == Node.ELEMENT_NODE)
                {   Element element = (Element) node;
                	
                if (element.getTagName().startsWith(fieldName))
                {
                    tempVal = element.getAttribute(attributeName);
                    if (tempVal != null && !"".equals(tempVal) ) {
                    	logger.debug("parseXMLFetchAttibuteValueList : Value : " + tempVal+" for fieldName:"+fieldName+" attributeName:"+attributeName);
	                    return tempVal;
                    }
                }
                }
            }
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return null;
        }
        return tempVal;
    }
	

	
	boolean verifyISINCode(String isinCode12){
		if (isinCode12 == null || isinCode12.length()!=12){
			return false;
		}
		String isinCode = isinCode12.substring(0, 11);
		int s = 0;
		int a = (isinCode.length() == 12) ? 1 : 2;
		for (int i = isinCode.length() - 1; i >= 0; i--) {
			int c = isinCode.charAt(i);
			if (c > '9') {
				// Character
				c -= ('A' - 10);
				s += (3 - a) * (c / 10) + a * c + (a - 1) * (c % 10) / 5;
			} else {
				// Number
				c -= '0';
				s += a * c + (a - 1) * (c / 5);
				a = 3 - a;
			}
		}
		s %= 10;
		s = (10 - s % 10) % 10;
		logger.debug("Inside ISIN Verification check digit ="+s);
		try {
		
		logger.debug("and actual is ="+Integer.parseInt(isinCode12.substring(11)));
		if( s == Integer.parseInt(isinCode12.substring(11)))
			return true;
		else		
			return false;
			}
			catch (Exception ex){
			return false;
			}
	}
	
	public String getSegmentProcessInd (SegmentId segId){
	String segProcessedInd = msg.getSegmentAttribute(segId,"SEGPROCESSEDIND");
	if (logger.isDebugEnabled()) logger.debug("segProcessedInd:"+segProcessedInd);
		if (segProcessedInd==null){
			return "";
		}else {
			return segProcessedInd;
		}
	
	}
	
	//STP2 Changes
	
	public void addISCLSegmentToMsg(String segAction, String iscl_oid,String instr_id,String indus_cl_set_id,String clsf_oid, String cl_value,String user_id,Date start_tms,Date end_tms, boolean useMatchKey)
	{
		SegmentId ibq1SegId = msg.addSegment(segAction, "IssueClassification");
				if(useMatchKey)		{			msg.setSegmentAttribute(ibq1SegId, "MATCH", "ISCL_MATCH_SET_PURP");		}		if(iscl_oid!=null)
			msg.addField("IACL_OID", ibq1SegId, iscl_oid);
		
		if (instr_id != null) {			
			msg.addField("INSTR_ID", ibq1SegId, instr_id); }
		
		if (indus_cl_set_id != null) {
		msg.addField("INDUS_CL_SET_ID", ibq1SegId, indus_cl_set_id); }
		
		if (clsf_oid != null) {
		msg.addField("CLSF_OID", ibq1SegId, clsf_oid); }
		
		if (cl_value != null) {
		msg.addField("CL_VALUE", ibq1SegId, cl_value); }
		
		if (start_tms != null) {
		msg.addField("START_TMS", ibq1SegId, start_tms);
		msg.setFieldAttribute("START_TMS", ibq1SegId, "INSERT_ONLY", "Y"); }
		
		if (end_tms != null) {
		msg.addField("END_TMS", ibq1SegId, end_tms); }
		if (user_id != null) {
		msg.addField("LAST_CHG_USR_ID", ibq1SegId, user_id); }
	}
	
	
	public void addISSTSegmentToMsg(String segAction, String stat_id, String instr_id, String stat_def_id, String stat_char_val_txt, Date stat_val_dte, Date stat_val_tms, BigDecimal stat_int_val_num, BigDecimal stat_val_camt, String user_id,Date start_tms,Date end_tms, boolean useMatchKey)
	{
		SegmentId isstSegId = msg.addSegment(segAction, "IssueStatistic");					
		if(useMatchKey)
		{
			msg.setSegmentAttribute(isstSegId, "MATCH", "ISST_MATCH_1");
		}
		
		if(stat_id!=null)
		msg.addField("STAT_ID", isstSegId, stat_id);
		
		if (instr_id != null) {			
			msg.addField("INSTR_ID", isstSegId, instr_id); }
		
		if (stat_def_id != null) {
		msg.addField("STAT_DEF_ID", isstSegId, stat_def_id); }
		
		if (stat_char_val_txt != null) {
		msg.addField("STAT_CHAR_VAL_TXT", isstSegId, stat_char_val_txt); }
		
		if (stat_val_dte != null) {
		msg.addField("STAT_VAL_DTE", isstSegId, stat_val_dte); }
			
		if (stat_val_tms != null) {
		msg.addField("STAT_VAL_TMS", isstSegId, stat_val_tms); }
			
		if (stat_int_val_num != null) {
		msg.addField("STAT_INT_VAL_NUM", isstSegId, stat_int_val_num); }
		
		if (stat_val_camt != null) {
		msg.addField("STAT_VAL_CAMT", isstSegId, stat_val_camt); }
		
		if (start_tms != null) {			
		msg.addField("START_TMS", isstSegId, start_tms); 
		msg.setFieldAttribute("START_TMS", isstSegId, "INSERT_ONLY", "Y");}
		
		if (end_tms != null) {
		msg.addField("END_TMS", isstSegId, end_tms); }
		if (user_id != null) {
		msg.addField("LAST_CHG_USR_ID", isstSegId, user_id); }
	}
	
	
	public Date getDateFieldFromMsg(SegmentId segmentId, String col_nme)
	{
		Date val=null;
		if(segmentId!=null ){
			if (! (getSegmentProcessInd(segmentId).equals("D") || getSegmentProcessInd(segmentId).equals("P")) ){
				val=msg.getDateTimeField(col_nme,segmentId); 
			}
			}
		
		return val;
	}
	
	

	
	//added a custom function for point72 for nested segments -filters added. getting child segments at same level

	public String getNestedStringFieldFromMsg(SegmentId prntSegId, String segment_nme,String col_nme, String filterColNme, String filterColVal)
	{
		//This function fetches value from multiple child segments at same level
		String val=null;
		String filterval=null;
		
		if (logger.isDebugEnabled()) logger.debug("Inside getNestedStringFieldFromMsgNew Current SegmentId is ->"+prntSegId);
		if (prntSegId == null){
			if (logger.isDebugEnabled())logger.debug("Returning from getNestedStringFieldFromMsgNew as prntSegId is null ");
			return null; 
		}
		
		
			int childCnt = msg.countSegmentChildren(prntSegId);
			if (logger.isDebugEnabled())logger.debug("Inside getNestedStringFieldFromMsgNew for segment->"+prntSegId+"child count is ->"+childCnt);
			if (childCnt > 0){
				for (int i=0; i<childCnt ; i++) {
					prntSegId.add(i);
					if (segment_nme.equals(msg.getSegmentType(prntSegId)))
					{	
					
						if (logger.isDebugEnabled())logger.debug("Inside getNestedStringFieldFromMsgNew calling nested for segment->"+prntSegId );
						filterval = getStringFieldFromMsg(prntSegId, filterColNme);
						logger.debug("Retrieved " +filterColNme+ "->"+filterval);
						
						if (filterval.equals(filterColVal))
						{
							val = getStringFieldFromMsg(prntSegId, col_nme);
						}
											
						if (val!=null && !"".equals(val) ){
							logger.debug("Inside getStringFromImmediateChildnew returning val ->"+val);
							prntSegId.removeLast();
							return val;
						}
					
					}	
						prntSegId.removeLast();
					
					
				} 
			}
				
		return val;
	}
	
	public String getP72InstrTyp(String instrID, String strlevel) {

		String sql = "select GETP72INSTRTYPE(:p_instrID<char[11]>,:p_level<char[2]>)  from dual ";
		
		String sqlOP="";
		
		if (logger.isDebugEnabled()) logger.debug("instrID:"+instrID);
		if (logger.isDebugEnabled()) logger.debug("strlevel:"+strlevel);
		
		if (instrID==null || "".equals(instrID) || strlevel==null || "".equals(strlevel)) {
			if (logger.isDebugEnabled()) logger.debug("Either Instr Id or Level is null..hence returning null");
			return null;
		}
		
			
			try{	
				if (logger.isDebugEnabled()) logger.debug("Executing: " + sql);
			
				dbConnection.setSQL(sql);
				dbConnection.addParameter(instrID);
				dbConnection.addParameter(strlevel);
				
				if (!dbConnection.execute()) {
					logger.error("ERROR: Failed to execute SQL statement.");
					
				}
			
				// Only fetch once, get the first result in case there are more
				if (!dbConnection.isEndOfStream()) {
					sqlOP = dbConnection.getNextString().trim();
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
		return sqlOP;
	}
	
	public void addMUSTSegmentToMsg(String segAction, String stat_id, String mkt_iss_oid, String stat_def_id, 
									String stat_char_val_txt, Date stat_val_dte, Date stat_val_tms, 
									BigDecimal stat_int_val_num, BigDecimal stat_val_camt, String user_id,
									Date start_tms,Date end_tms, boolean useMatchKey)
	{
		SegmentId mustSegId = msg.addSegment(segAction, "MarketIssueStatistic");					
		/*if(useMatchKey)
		{
			msg.setSegmentAttribute(mustSegId, "MATCH", "ISST_MATCH_1");
		}*/
		
		if(stat_id!=null)
		msg.addField("STAT_ID", mustSegId, stat_id);
		
		if (mkt_iss_oid != null) {			
			msg.addField("MKT_ISS_OID", mustSegId, mkt_iss_oid); }
		
		if (stat_def_id != null) {
		msg.addField("STAT_DEF_ID", mustSegId, stat_def_id); }
		
		if (stat_char_val_txt != null) {
		msg.addField("STAT_CHAR_VAL_TXT", mustSegId, stat_char_val_txt); }
		
		if (stat_val_dte != null) {
		msg.addField("STAT_VAL_DTE", mustSegId, stat_val_dte); }
			
		if (stat_val_tms != null) {
		msg.addField("STAT_VAL_TMS", mustSegId, stat_val_tms); }
			
		if (stat_int_val_num != null) {
		msg.addField("STAT_INT_VAL_NUM", mustSegId, stat_int_val_num); }
		
		if (stat_val_camt != null) {
		msg.addField("STAT_VAL_CAMT", mustSegId, stat_val_camt); }
		
		if (start_tms != null) {			
		msg.addField("START_TMS", mustSegId, start_tms); 
		msg.setFieldAttribute("START_TMS", mustSegId, "INSERT_ONLY", "Y");}
		
		if (end_tms != null) {
		msg.addField("END_TMS", mustSegId, end_tms); }
		if (user_id != null) {
		msg.addField("LAST_CHG_USR_ID", mustSegId, user_id); }
	}
	
	
	public BigDecimal getDecimalFieldFromDB(String segment_nme,String col_nme,String filterColNme, String filterColVal, String oidColName, String oidColVal)
	{
		List<BigDecimal> valList = getDecimalFieldListFromDB( segment_nme, col_nme, filterColNme, filterColVal, oidColName, oidColVal);
		if (valList!=null && valList.size()>0){
			return valList.get(0);
		} else {
			return null;
		}
	}

	
	private List<BigDecimal> getDecimalFieldListFromDB(String segmentNme,String colNme,String filterColNme, String filterColVal, String oidColumnName, String oidColVal)
	{
		List<BigDecimal> decimallValList = new ArrayList<BigDecimal>();
		String tbl_id=null;
		
		//GET TBL_ID FROM DB
		if (segmentNme==null || "".equals(segmentNme)){
			logger.debug("SegmentId not found for segment name  : "+segmentNme);
			return null;
		}
		if (colNme==null || "".equals(colNme)){
			logger.debug("Column Name not found for segment name  : "+colNme);
			return null;
		}
		
		tbl_id = getTblIdFromSegName(segmentNme);
		
		if (tbl_id==null || "".equals(tbl_id)){
			logger.error("Unable to get Table id for Segment : " + segmentNme);
			return null;
		}
		//GET DATE FROM DB
		String sqlGetDecimalFromDB = "SELECT "+colNme+" FROM FT_T_"+tbl_id+" WHERE "+oidColumnName+" = "+"'"+oidColVal+"' ";
		
		if (!tbl_id.equals("IASS")){
			sqlGetDecimalFromDB = sqlGetDecimalFromDB+" AND (END_TMS > sysdate() OR END_TMS IS NULL)";
		}
		if (filterColNme!=null && !"".equals(filterColNme)) {
			sqlGetDecimalFromDB = sqlGetDecimalFromDB + " AND "+filterColNme+"='"+filterColVal+"' ";
		}		
		
		try {
			logger.debug("Executing: " + sqlGetDecimalFromDB);

			dbConnection.setSQL(sqlGetDecimalFromDB);
			
			if (!dbConnection.execute()) {
				logger.error("ERROR: Failed to execute SQL statement.");
				return null;
			}

			// Only fetch once, get the first result in case there are more
			while (!dbConnection.isEndOfStream()) {
				decimallValList.add(dbConnection.getNextDecimal());
			}
		}  catch (Exception e) {
			if (!(e instanceof GSException)) {
				logger.error("ERROR: " + e.getMessage());
			}
		} 

		return decimallValList;
	}
		
	
}
 
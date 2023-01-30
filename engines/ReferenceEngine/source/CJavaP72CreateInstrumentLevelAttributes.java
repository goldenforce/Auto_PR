import java.util.ArrayList;
import java.util.Arrays;
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


public class CJavaP72CreateInstrumentLevelAttributes implements JavaRule {
	
	private static Logger logger = Logger.getLogger("CJavaP72CreateInstrumentLevelAttributes");	
	private String msgClsList  = null;
	private Map<String, String> msgClsTypeMap = null;
	private CJavaP72Commons commons = null;
	private String panoSecTypAsn="PANOSECTYP";

	


@Override
public boolean initialize(String[] param) 
{	
	
	if (param.length<1 || param == null ){
		logger.error("Required Parameters missing for CJavaP72CreateInstrumentLevelAttributes in StreetRefMsgSet ");
	return false;
	}
	if (logger.isDebugEnabled()) logger.debug("CJavaP72CreateInstrumentLevelAttributes | initialize | Started Initializing ....");
	
	msgClsList = param[0];
	
	//<PARAM>PANOINCT:BB,RTEQDSEP;PANOSECTYP:BB,RTEQDSEP</PARAM>
	this.msgClsTypeMap = new HashMap<String, String>();
	String[] msgClsTypes = msgClsList.split(";");	
	for (String msgClsType : msgClsTypes) 
	{
		String attrName = msgClsType.split(":")[0];
		String msgClsfcn = msgClsType.split(":")[1];
		this.msgClsTypeMap.put(attrName, msgClsfcn);
		
	}
	
	if (logger.isDebugEnabled()) logger.debug(this.msgClsTypeMap.toString());
	
	if (logger.isDebugEnabled()) logger.debug("CJavaP72CreateInstrumentLevelAttributes | initialize | Completed Initializing ....");
	return true;	
}


@Override
public boolean process(XMLMessage msg, DatabaseObjectContainer dboc,ProcessorContext pContext, DatabaseAccess dbConnection, NotificationCreator nCreator)
		throws GSException 
{
	logger.info("CJavaP72CreateInstrumentLevelAttributes process start");
	
	if (logger.isDebugEnabled()) logger.debug("Before MSG: "+msg.getXMLString());
	
	this.commons = new CJavaP72Commons(msg, dboc, pContext, dbConnection, nCreator);
	String instrId= pContext.getInstrId();
	List<SegmentId> segIdList = new ArrayList<SegmentId>();

	String msgClassification=commons.getMsgClassification();

	boolean secTypAsnClass =false;

	String panoSecTypAsnClsf=null;
	
	
	
	segIdList =  commons.getSegmentIds("Issue");
	
	if (segIdList.isEmpty())
	{
		if (logger.isDebugEnabled()) logger.debug("No ISSU Segment found in msg..exiting");
		return true;
	}	
	
	if (logger.isDebugEnabled()) logger.debug("instr_id is>>" +instrId);
	
		

	panoSecTypAsnClsf = this.msgClsTypeMap.get(panoSecTypAsn);


	
	if (panoSecTypAsnClsf != null && !"".equals(panoSecTypAsnClsf) && panoSecTypAsnClsf.contains(msgClassification))
	{
		secTypAsnClass=true;
		if (logger.isDebugEnabled()) logger.debug("secTypAsnClass>>>"+secTypAsnClass);
	}
	if (logger.isDebugEnabled()) logger.debug("panoSecTypAsnClsf is>>" +panoSecTypAsnClsf);
	
	

	for (int i=0; i<segIdList.size(); i++)
	{
	

		if (secTypAsnClass)
		{	
			if (logger.isDebugEnabled()) logger.debug("Calling method createPanoSecTypeAssign");
			createPanoSecTypeAssign(instrId, commons, msg, dbConnection);	
		}	
		
}
		
	

	if (logger.isDebugEnabled()) logger.debug("Successfully processed Java Rule CJavaP72CreateInstrumentLevelAttributes");
	if (logger.isDebugEnabled()) logger.debug("XML after processing" +msg.getXMLString());
	return true;
	
}


private boolean createPanoSecTypeAssign(String instrID,
		CJavaP72Commons commons, XMLMessage msg, DatabaseAccess dbConnection)
{
	if (logger.isDebugEnabled()) logger.debug("Inside method createPanoSecTypeAssign()");

		String isclVal="";
		
		// check if  id already exists on mkt_iss_oid
		String sql = "select GETP72PANOSECTYPASGN(:p_instr_id<char[11]>) from dual";
		
		try
		{	
			if (logger.isDebugEnabled()) logger.debug("Executing: " + sql);
			
			dbConnection.setSQL(sql);
			dbConnection.addParameter(instrID);								
			if (!dbConnection.execute()) {
				logger.error("ERROR: Failed to execute SQL statement.");
			
			}
			
			// Only fetch once, get the first result in case there are more
			if (!dbConnection.isEndOfStream()) 
			{
				isclVal = dbConnection.getNextString().trim();
				if (logger.isDebugEnabled()) logger.debug("sqlOp from query>>" +isclVal);		
			}
		}
		catch (Exception e) {
		if (!(e instanceof GSException)) {
		logger.error("ERROR: " + e.getMessage());
		}
		}
		finally{
			if(null != dbConnection)
			{
				dbConnection.close();
			}
		}
		
		if ( !"".equals(isclVal) && isclVal != null)
		{
			//Adding isclVal segment
			SegmentId isclSegID = msg.addSegment(XMLMessage.A_D_UNKNOWN, "IssueClassification");
			msg.addField("INSTR_ID", isclSegID, instrID);	
			msg.addField("CL_VALUE", isclSegID, isclVal);
			msg.addField("INDUS_CL_SET_ID", isclSegID, panoSecTypAsn);
			msg.addField("CLSF_OID", isclSegID, commons.getCLSFOidFromCLValue(panoSecTypAsn, isclVal));
			if (logger.isDebugEnabled()) logger.debug("Successfully added iscl Segment");
		
		}
		
		else 
		{
			if (logger.isDebugEnabled()) logger.debug("No value returned by sql function.");
		}
		return true;
}




}
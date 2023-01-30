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

public class CJavaP72CAConvertNewISIDToUpdate implements JavaRule {
	private static Logger logger = Logger.getLogger("CJavaP72CAConvertNewISIDToUpdate");
	private List<String> msgClsList = new ArrayList<String>();
	private List<String> idCtxtTypList  = new ArrayList<String>();

	@Override
	public boolean initialize(String[] param) {
		if (param.length < 2) {
			logger.error("Required Parameters missing for CJavaP72CAConvertNewISIDToUpdate in StreetRefMsgSet ");
			return false;
		}
		if (logger.isDebugEnabled())
			logger.debug("CJavaP72CAConvertNewISIDToUpdate | initialize | Started Initializing ....");

		msgClsList = Arrays.asList(param[0].split(","));

		if (msgClsList.size() == 0) {
			logger.error("Missing Required Array Parameters for Message Classification List in StreetRefMsgSet ");
			return false;
		}
		
		idCtxtTypList = Arrays.asList(param[1].split(","));
		
		if(idCtxtTypList.size()==0)
		{
			logger.error("Missing Required Array Parameters for ID Context Type List in StreetRefMsgSet ");
			return false;
		}
		
		if (logger.isDebugEnabled())
			logger.debug("CJavaP72CAConvertNewISIDToUpdate | initialize | Completed Initializing ....");
		return true;

	}

	@Override
	public boolean process(XMLMessage msg, DatabaseObjectContainer dboc, ProcessorContext pContext,
			DatabaseAccess dbConnection, NotificationCreator nCreator) throws GSException {
		logger.info("CJavaP72CAConvertNewISIDToUpdate process start");

		if (logger.isDebugEnabled())
			logger.debug("Before MSG: " + msg.getXMLString());

		CJavaP72Commons commons = null;
		commons = new CJavaP72Commons(msg, dboc, pContext, dbConnection, nCreator);
		String msgClassification = "";
		msgClassification = commons.getMsgClassification();
		List<SegmentId> isidSegIdList = new ArrayList<SegmentId>();
		//String isidOid="";
		
		//String oldID="";
		String idCtxtTyp="";
		String instrID=pContext.getInstrId();
		if (logger.isDebugEnabled())
			logger.debug("instrID:" + instrID);

		
		if (!msgClsList.contains(msgClassification)) {
			if (logger.isDebugEnabled())
				logger.debug("Exiting as Message Classification is not from the configured list." + msgClassification);
			return true;
		}
		if (logger.isDebugEnabled())
			logger.debug("msgClassification:" + msgClassification);

		for (int i=0; i<idCtxtTypList.size(); i++)
		{
			if (logger.isDebugEnabled()) logger.debug("Counter i:"+i);
			if (logger.isDebugEnabled()) logger.debug("idCtxtTypList.size():"+idCtxtTypList.size());
			SegmentId newIsidSegId=new SegmentId(0);
			SegmentId oldIsidSegId=new SegmentId(0);
			String isidOid="";
			String oldID="";
			idCtxtTyp=idCtxtTypList.get(i);
			isidSegIdList = commons.getSegmentIds("IssueIdentifier", "ID_CTXT_TYP", idCtxtTyp);
			if (isidSegIdList.isEmpty())
			{
				if (logger.isDebugEnabled()) logger.debug("No "+idCtxtTyp+ " Segment found in msg..exiting");
				continue;
			}	
			if (logger.isDebugEnabled()) logger.debug("Looping for ID_CTXT_TYP:"+idCtxtTyp);
			
			for (int j = 0; j < isidSegIdList.size(); j++) 
			{
				if (logger.isDebugEnabled()) logger.debug("Counter j:"+j);
				if (logger.isDebugEnabled()) logger.debug("isidSegIdList.size():"+isidSegIdList.size());
				
				String vendorMnem = msg.getFieldAttribute("ISS_ID", isidSegIdList.get(j), "VENDOR_MNEMONIC");
				String idCtxtTypOld="Old"+idCtxtTyp;
				String idCtxtTypNew="New"+idCtxtTyp;
				
				if (vendorMnem.toUpperCase().contains(idCtxtTypNew.toUpperCase())) 
				{
					if (logger.isDebugEnabled()) logger.debug("New ISID segment with id_ctxt_typ: "+idCtxtTyp);						
					newIsidSegId=isidSegIdList.get(j);					
					
				}
				else if (vendorMnem.toUpperCase().contains(idCtxtTypOld.toUpperCase())) 
				{	
					oldIsidSegId=isidSegIdList.get(j);
					if (logger.isDebugEnabled()) logger.debug("oldIsidSegId:"+oldIsidSegId);
					
					if (logger.isDebugEnabled()) logger.debug("Fetching old ISID_OID from db...");
					
					String sql = "select isid_oid from ft_t_isid "
								+ "where id_ctxt_typ=:p_id_ctxt_typ<char[21]> "
								+ "and iss_id=:p_iss_id<char[101]> "
								+ "and instr_id=:p_instr_id<char[11]> "
								+ "and (end_tms is null or end_tms > sysdate())";
					
					oldID=commons.getStringFieldFromMsg(isidSegIdList.get(j), "ISS_ID");
					
					if (oldID == null && "".equals(oldID))
					{
						if (logger.isDebugEnabled()) logger.debug("Cannot fetch old "+idCtxtTyp+" from msg..hence exiting");
						break;
					}
					if (logger.isDebugEnabled()) logger.debug("oldID:"+oldID);
					
					try {
						if (logger.isDebugEnabled()) logger.debug("Executing: " + sql);
		
						dbConnection.setSQL(sql);
						dbConnection.addParameter(idCtxtTyp);
						dbConnection.addParameter(oldID);
						dbConnection.addParameter(instrID);					
						if (!dbConnection.execute()) {
							logger.error("ERROR: Failed to execute SQL statement.");
		
						}
		
						// Only fetch once, get the first result in case there are more
						if (!dbConnection.isEndOfStream()) {
							isidOid = dbConnection.getNextString().trim();
							if (logger.isDebugEnabled()) logger.debug("sqlOp from query>>" + isidOid);
		
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
	
				}
				
				if (isidOid != null && !"".equals(isidOid) && !"0".equals(newIsidSegId.toString()))
				{
					
					if (logger.isDebugEnabled()) logger.debug("Setting isid_oid to segment_id:"+newIsidSegId);
					
					//msg.setFieldValue("ISID_OID", newIsidSegId, isidOid);
					msg.addField("ISID_OID", newIsidSegId, isidOid);
					if (logger.isDebugEnabled()) logger.debug("Removing END_TMS from Seg ID:"+oldIsidSegId);
					msg.removeField("END_TMS", oldIsidSegId);
					msg.setAction(oldIsidSegId, "UPDATE");
					break;
				}
			}
		}
		if (logger.isDebugEnabled())
			logger.debug("After MSG: " + msg.getXMLString());

		
		return true;
	}
}

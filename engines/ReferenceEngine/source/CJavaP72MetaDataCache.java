import java.util.HashMap;


public class CJavaP72MetaDataCache {
	
	private static CJavaP72MetaDataCache singletonDataCache = new CJavaP72MetaDataCache( );
	private static HashMap<String, String> segNameDescMap = new HashMap<String, String>();
	private static HashMap<String, String> tblNameOidMap = new HashMap<String, String>();
	
	private CJavaP72MetaDataCache(){ }
	

	public static String getSegDescFromName (String segmentName){
		if (segNameDescMap!=null && segNameDescMap.containsKey(segmentName) && segNameDescMap.get(segmentName)!=null){
			return segNameDescMap.get(segmentName);
		}
		return null;
	}
	
	public static void setSegDescForName (String segmentName, String tblId){
			segNameDescMap.put(segmentName, tblId);
	}
	
	public static String getTblOidFromName (String tblName){
		if (tblNameOidMap!=null && tblNameOidMap.containsKey(tblName) && tblNameOidMap.get(tblName)!=null){
			return tblNameOidMap.get(tblName);
		}
		return null;
	}
	
	public static void setTblOidForName (String tblName, String tblOid){
		tblNameOidMap.put(tblName, tblOid);
	}
	
}

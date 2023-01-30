CREATE OR REPLACE FUNCTION GETIBESTKRCMPOSITEMKTOID(P_INSTRID VARCHAR DEFAULT NULL, 										
											 P_GUID VARCHAR DEFAULT NULL,											 
											 P_MSGCLSFCN VARCHAR DEFAULT NULL)
RETURNS text
LANGUAGE plpgsql
AS $function$
DECLARE
V_COUNT NUMERIC;
V_OUTPUT text;
	
BEGIN
	IF P_GUID ='' THEN P_GUID:=NULL; END IF;	
	IF P_MSGCLSFCN ='' THEN P_MSGCLSFCN:=NULL; END IF;
	
	
		 SELECT STRING_AGG(MKIS.MKT_OID||'|'||MKIS.MKT_ISS_OID ,'<P72DEL>') INTO V_OUTPUT
										FROM FT_T_ISSU ISSU, FT_T_MKIS MKIS
										WHERE ISSU.INSTR_ID=MKIS.INSTR_ID
											  AND MKIS.OFCL_PLACE_LISTING_IND='Y'
											  AND (ISSU.END_TMS IS NULL OR ISSU.END_TMS > SYSDATE())
											  AND (MKIS.END_TMS IS NULL OR MKIS.END_TMS > SYSDATE())
											  AND (P_GUID IS NULL OR MKIS.GU_ID=P_GUID)
											  AND ISSU.INSTR_ID=P_INSTRID;		
		
		
			RETURN V_OUTPUT;
		

END;
$function$
;
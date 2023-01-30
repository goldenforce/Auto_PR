CREATE OR REPLACE FUNCTION GETP72INSTRTYPE(P_INSTRID VARCHAR DEFAULT NULL, 										   
										   P_LEVEL VARCHAR DEFAULT NULL)
RETURNS VARCHAR
LANGUAGE PLPGSQL
AS $FUNCTION$
DECLARE
V_OUTPUT VARCHAR(254):= NULL;

BEGIN
	

	
    IF P_INSTRID IS NOT NULL AND P_LEVEL IS NOT NULL THEN
	
		IF P_LEVEL ='4' THEN
		
				BEGIN
				
					SELECT CL_VALUE INTO V_OUTPUT
						FROM FT_T_INCL INCL
						WHERE INCL.INDUS_CL_SET_ID='INSTYPGR'
						AND (INCL.END_TMS IS NULL OR INCL.END_TMS > SYSDATE())
						AND LEVEL_NUM =4 
						AND CL_VALUE = (SELECT CL_VALUE 
											FROM FT_T_ISCL ISCL
											WHERE ISCL.INDUS_CL_SET_ID='INSTYPGR'
											AND (ISCL.END_TMS IS NULL OR ISCL.END_TMS > SYSDATE())
											AND ISCL.INSTR_ID=P_INSTRID
										);
											
					EXCEPTION
							WHEN NO_DATA_FOUND THEN V_OUTPUT := NULL;
				
				
				END;
			
		
		ELSIF P_LEVEL ='3' THEN
		
				BEGIN
				
				
				SELECT INCL3.CL_VALUE INTO V_OUTPUT
						FROM FT_T_INCL INCL3
						WHERE INCL3.INDUS_CL_SET_ID='INSTYPGR'
						AND (INCL3.END_TMS IS NULL OR INCL3.END_TMS > SYSDATE())
						AND INCL3.LEVEL_NUM =3 
						AND INCL3.CLSF_OID =(SELECT INCL4.PRNT_CLSF_OID
												FROM FT_T_INCL INCL4
												WHERE INCL4.INDUS_CL_SET_ID='INSTYPGR'
												AND (INCL4.END_TMS IS NULL OR INCL4.END_TMS > SYSDATE())
												AND INCL4.LEVEL_NUM =4 
												AND CL_VALUE = (SELECT ISCL.CL_VALUE 
																	FROM FT_T_ISCL ISCL
																	WHERE ISCL.INDUS_CL_SET_ID='INSTYPGR'
																	AND (ISCL.END_TMS IS NULL OR ISCL.END_TMS > SYSDATE())
																	AND ISCL.INSTR_ID=P_INSTRID
																)
											);
											
					EXCEPTION
							WHEN NO_DATA_FOUND THEN V_OUTPUT := NULL;
				
				
				END;
				
		ELSIF P_LEVEL ='2' THEN
		
				BEGIN
				
				SELECT INCL2.CL_VALUE INTO V_OUTPUT
						FROM FT_T_INCL INCL2
						WHERE INCL2.INDUS_CL_SET_ID='INSTYPGR'
						AND (INCL2.END_TMS IS NULL OR INCL2.END_TMS > SYSDATE())
						AND INCL2.LEVEL_NUM =2 
						AND INCL2.CLSF_OID = (SELECT INCL3.PRNT_CLSF_OID
													FROM FT_T_INCL INCL3
													WHERE INCL3.INDUS_CL_SET_ID='INSTYPGR'
													AND (INCL3.END_TMS IS NULL OR INCL3.END_TMS > SYSDATE())
													AND INCL3.LEVEL_NUM =3
													AND INCL3.CLSF_OID =(SELECT INCL4.PRNT_CLSF_OID
																			FROM FT_T_INCL INCL4
																			WHERE INCL4.INDUS_CL_SET_ID='INSTYPGR'
																			AND (INCL4.END_TMS IS NULL OR INCL4.END_TMS > SYSDATE())
																			AND INCL4.LEVEL_NUM =4 
																			AND CL_VALUE = (SELECT ISCL.CL_VALUE 
																								FROM FT_T_ISCL ISCL
																								WHERE ISCL.INDUS_CL_SET_ID='INSTYPGR'
																								AND (ISCL.END_TMS IS NULL OR ISCL.END_TMS > SYSDATE())
																								AND ISCL.INSTR_ID=P_INSTRID
																							)
																		)
												);
											
					EXCEPTION
							WHEN NO_DATA_FOUND THEN V_OUTPUT := NULL;
				
				
				END;
				
		ELSIF P_LEVEL ='1' THEN
		
				BEGIN
				SELECT INCL1.CL_VALUE INTO V_OUTPUT
						FROM FT_T_INCL INCL1
						WHERE INCL1.INDUS_CL_SET_ID='INSTYPGR'
						AND (INCL1.END_TMS IS NULL OR INCL1.END_TMS > SYSDATE())
						AND INCL1.LEVEL_NUM =1 
						AND INCL1.CLSF_OID =(SELECT INCL2.PRNT_CLSF_OID
													FROM FT_T_INCL INCL2
													WHERE INCL2.INDUS_CL_SET_ID='INSTYPGR'
													AND (INCL2.END_TMS IS NULL OR INCL2.END_TMS > SYSDATE())
													AND INCL2.LEVEL_NUM =2 
													AND INCL2.CLSF_OID = (SELECT INCL3.PRNT_CLSF_OID
																				FROM FT_T_INCL INCL3
																				WHERE INCL3.INDUS_CL_SET_ID='INSTYPGR'
																				AND (INCL3.END_TMS IS NULL OR INCL3.END_TMS > SYSDATE())
																				AND INCL3.LEVEL_NUM =3 
																				AND INCL3.CLSF_OID =(SELECT INCL4.PRNT_CLSF_OID
																										FROM FT_T_INCL INCL4
																										WHERE INCL4.INDUS_CL_SET_ID='INSTYPGR'
																										AND (INCL4.END_TMS IS NULL OR INCL4.END_TMS > SYSDATE())
																										AND INCL4.LEVEL_NUM =4 
																										AND INCL4.CL_VALUE = (SELECT ISCL.CL_VALUE 
																															FROM FT_T_ISCL ISCL
																															WHERE ISCL.INDUS_CL_SET_ID='INSTYPGR'
																															AND (ISCL.END_TMS IS NULL OR ISCL.END_TMS > SYSDATE())
																															AND ISCL.INSTR_ID=P_INSTRID
																														)
																									)
																			)
											);
											
					EXCEPTION
							WHEN NO_DATA_FOUND THEN V_OUTPUT := NULL;
				
				
				END;		
		END IF;
    END IF;


RETURN V_OUTPUT;

END;
$FUNCTION$
;

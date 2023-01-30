CREATE OR REPLACE FUNCTION GETISGPCMPOSITEMKTOID(P_SEDOL VARCHAR DEFAULT NULL, 
											 P_RIC VARCHAR DEFAULT NULL,
											 P_TICKER VARCHAR DEFAULT NULL,
											 P_BBGLOBAL VARCHAR DEFAULT NULL,
											 P_ISIN VARCHAR DEFAULT NULL,
											 P_CUSIP VARCHAR DEFAULT NULL,
											 P_CINS VARCHAR DEFAULT NULL,											 
											 P_GUID VARCHAR DEFAULT NULL,
											 P_CURRCDE VARCHAR DEFAULT NULL,
											 P_MSGCLSFCN VARCHAR DEFAULT NULL)
RETURNS VARCHAR
LANGUAGE plpgsql
AS $function$
DECLARE
V_OUTPUT VARCHAR(254):= NULL;
V_COUNT NUMERIC;
	
BEGIN
	IF P_GUID ='' THEN P_GUID:=NULL; END IF;
	IF P_CURRCDE ='' THEN P_CURRCDE:=NULL; END IF;
	IF P_MSGCLSFCN ='' THEN P_MSGCLSFCN:=NULL; END IF;	

	
    IF P_SEDOL IS NOT NULL AND P_SEDOL !='' THEN
	
		SELECT COUNT(MKIS.MKT_ISS_OID) INTO V_COUNT
            FROM FT_T_ISID ISID, FT_T_MIXR MIXR, FT_T_MKIS MKIS
			WHERE ISID.ISID_OID=MIXR.ISID_OID
				  AND MIXR.MKT_ISS_OID=MKIS.MKT_ISS_OID
				  AND MKIS.OFCL_PLACE_LISTING_IND='Y'
				  AND (ISID.END_TMS IS NULL OR ISID.END_TMS > SYSDATE())
				  AND (MIXR.END_TMS IS NULL OR MIXR.END_TMS > SYSDATE())
				  AND (MKIS.END_TMS IS NULL OR MKIS.END_TMS > SYSDATE())
				  AND ISID.ID_CTXT_TYP='SEDOL'
				  AND (P_GUID IS NULL OR MKIS.GU_ID=P_GUID)
				  AND ISID.ISS_ID=P_SEDOL;
		
		IF V_COUNT = 1 THEN
		
			SELECT MKIS.MKT_OID||'|'||MKIS.MKT_ISS_OID INTO V_OUTPUT
										FROM FT_T_ISID ISID, FT_T_MIXR MIXR, FT_T_MKIS MKIS
										WHERE ISID.ISID_OID=MIXR.ISID_OID
											  AND MIXR.MKT_ISS_OID=MKIS.MKT_ISS_OID
											  AND MKIS.OFCL_PLACE_LISTING_IND='Y'
											  AND (ISID.END_TMS IS NULL OR ISID.END_TMS > SYSDATE())
											  AND (MIXR.END_TMS IS NULL OR MIXR.END_TMS > SYSDATE())
											  AND (MKIS.END_TMS IS NULL OR MKIS.END_TMS > SYSDATE())
											  AND ISID.ID_CTXT_TYP='SEDOL'
											  AND (P_GUID IS NULL OR MKIS.GU_ID=P_GUID)
											  AND ISID.ISS_ID=P_SEDOL;		
		
		
			RETURN V_OUTPUT;
		
		ELSIF V_COUNT > 1 THEN
		
			SELECT COUNT(MKIS.MKT_ISS_OID) INTO V_COUNT
							FROM FT_T_ISID ISID, FT_T_MIXR MIXR, FT_T_MKIS MKIS
							WHERE ISID.ISID_OID=MIXR.ISID_OID
								  AND MIXR.MKT_ISS_OID=MKIS.MKT_ISS_OID
								  AND MKIS.OFCL_PLACE_LISTING_IND='Y'
								  AND (ISID.END_TMS IS NULL OR ISID.END_TMS > SYSDATE())
								  AND (MIXR.END_TMS IS NULL OR MIXR.END_TMS > SYSDATE())
								  AND (MKIS.END_TMS IS NULL OR MKIS.END_TMS > SYSDATE())
								  AND ISID.ID_CTXT_TYP='SEDOL'
								  AND (P_GUID IS NULL OR MKIS.GU_ID=P_GUID)
								  AND (P_CURRCDE IS NULL OR MKIS.TRDNG_CURR_CDE=P_CURRCDE)
								  AND ISID.ISS_ID=P_SEDOL;	
			
			IF V_COUNT = 1 THEN
			
				SELECT MKIS.MKT_OID||'|'||MKIS.MKT_ISS_OID INTO V_OUTPUT
								FROM FT_T_ISID ISID, FT_T_MIXR MIXR, FT_T_MKIS MKIS
								WHERE ISID.ISID_OID=MIXR.ISID_OID
									  AND MIXR.MKT_ISS_OID=MKIS.MKT_ISS_OID
									  AND MKIS.OFCL_PLACE_LISTING_IND='Y'
									  AND (ISID.END_TMS IS NULL OR ISID.END_TMS > SYSDATE())
									  AND (MIXR.END_TMS IS NULL OR MIXR.END_TMS > SYSDATE())
									  AND (MKIS.END_TMS IS NULL OR MKIS.END_TMS > SYSDATE())
									  AND ISID.ID_CTXT_TYP='SEDOL'
									  AND (P_GUID IS NULL OR MKIS.GU_ID=P_GUID)
									  AND (P_CURRCDE IS NULL OR MKIS.TRDNG_CURR_CDE=P_CURRCDE)
									  AND ISID.ISS_ID=P_SEDOL;	
			
			
				RETURN V_OUTPUT;

			END IF;
		END IF;
	
	END IF;

	
	IF P_RIC IS NOT NULL AND P_RIC !='' THEN
	
		SELECT COUNT(MKIS.MKT_ISS_OID) INTO V_COUNT
            FROM FT_T_ISID ISID, FT_T_MIXR MIXR, FT_T_MKIS MKIS
			WHERE ISID.ISID_OID=MIXR.ISID_OID
				  AND MIXR.MKT_ISS_OID=MKIS.MKT_ISS_OID
				  AND MKIS.OFCL_PLACE_LISTING_IND='Y'
				  AND (ISID.END_TMS IS NULL OR ISID.END_TMS > SYSDATE())
				  AND (MIXR.END_TMS IS NULL OR MIXR.END_TMS > SYSDATE())
				  AND (MKIS.END_TMS IS NULL OR MKIS.END_TMS > SYSDATE())
				  AND ISID.ID_CTXT_TYP='RIC'				  
				  AND ISID.ISS_ID=P_RIC;
		
		IF V_COUNT = 1 THEN
		
			SELECT MKIS.MKT_OID||'|'||MKIS.MKT_ISS_OID INTO V_OUTPUT
										FROM FT_T_ISID ISID, FT_T_MIXR MIXR, FT_T_MKIS MKIS
										WHERE ISID.ISID_OID=MIXR.ISID_OID
											  AND MIXR.MKT_ISS_OID=MKIS.MKT_ISS_OID
											  AND MKIS.OFCL_PLACE_LISTING_IND='Y'
											  AND (ISID.END_TMS IS NULL OR ISID.END_TMS > SYSDATE())
											  AND (MIXR.END_TMS IS NULL OR MIXR.END_TMS > SYSDATE())
											  AND (MKIS.END_TMS IS NULL OR MKIS.END_TMS > SYSDATE())
											  AND ISID.ID_CTXT_TYP='RIC'											  
											  AND ISID.ISS_ID=P_RIC;		
		
		
			RETURN V_OUTPUT;
		
		ELSIF V_COUNT > 1 THEN
		
			SELECT COUNT(MKIS.MKT_ISS_OID) INTO V_COUNT
							FROM FT_T_ISID ISID, FT_T_MIXR MIXR, FT_T_MKIS MKIS
							WHERE ISID.ISID_OID=MIXR.ISID_OID
								  AND MIXR.MKT_ISS_OID=MKIS.MKT_ISS_OID
								  AND MKIS.OFCL_PLACE_LISTING_IND='Y'
								  AND (ISID.END_TMS IS NULL OR ISID.END_TMS > SYSDATE())
								  AND (MIXR.END_TMS IS NULL OR MIXR.END_TMS > SYSDATE())
								  AND (MKIS.END_TMS IS NULL OR MKIS.END_TMS > SYSDATE())
								  AND ISID.ID_CTXT_TYP='RIC'
								  AND (P_CURRCDE IS NULL OR MKIS.TRDNG_CURR_CDE=P_CURRCDE)
								  AND ISID.ISS_ID=P_RIC;	
			
			IF V_COUNT = 1 THEN
			
				SELECT MKIS.MKT_OID||'|'||MKIS.MKT_ISS_OID INTO V_OUTPUT
								FROM FT_T_ISID ISID, FT_T_MIXR MIXR, FT_T_MKIS MKIS
								WHERE ISID.ISID_OID=MIXR.ISID_OID
									  AND MIXR.MKT_ISS_OID=MKIS.MKT_ISS_OID
									  AND MKIS.OFCL_PLACE_LISTING_IND='Y'
									  AND (ISID.END_TMS IS NULL OR ISID.END_TMS > SYSDATE())
									  AND (MIXR.END_TMS IS NULL OR MIXR.END_TMS > SYSDATE())
									  AND (MKIS.END_TMS IS NULL OR MKIS.END_TMS > SYSDATE())
									  AND ISID.ID_CTXT_TYP='RIC'
									  AND (P_CURRCDE IS NULL OR MKIS.TRDNG_CURR_CDE=P_CURRCDE)
									  AND ISID.ISS_ID=P_RIC;	
			
			
				RETURN V_OUTPUT;

			END IF;
		END IF;
	END IF;

	IF P_TICKER IS NOT NULL AND P_TICKER !='' THEN
	
				SELECT COUNT(MKIS.MKT_ISS_OID) INTO V_COUNT
						FROM FT_T_ISID ISID, FT_T_MIXR MIXR, FT_T_MKIS MKIS
						WHERE ISID.ISID_OID=MIXR.ISID_OID
							  AND MIXR.MKT_ISS_OID=MKIS.MKT_ISS_OID
							  AND MKIS.OFCL_PLACE_LISTING_IND='Y'
							  AND (ISID.END_TMS IS NULL OR ISID.END_TMS > SYSDATE())
							  AND (MIXR.END_TMS IS NULL OR MIXR.END_TMS > SYSDATE())
							  AND (MKIS.END_TMS IS NULL OR MKIS.END_TMS > SYSDATE())
							  AND ISID.ID_CTXT_TYP='TICKER'
							  AND (P_GUID IS NULL  OR MKIS.GU_ID=P_GUID)				
							  AND ISID.ISS_ID=P_TICKER;
					
					IF V_COUNT = 1 THEN
					
						SELECT MKIS.MKT_OID||'|'||MKIS.MKT_ISS_OID INTO V_OUTPUT
													FROM FT_T_ISID ISID, FT_T_MIXR MIXR, FT_T_MKIS MKIS
													WHERE ISID.ISID_OID=MIXR.ISID_OID
														  AND MIXR.MKT_ISS_OID=MKIS.MKT_ISS_OID
														  AND MKIS.OFCL_PLACE_LISTING_IND='Y'
														  AND (ISID.END_TMS IS NULL OR ISID.END_TMS > SYSDATE())
														  AND (MIXR.END_TMS IS NULL OR MIXR.END_TMS > SYSDATE())
														  AND (MKIS.END_TMS IS NULL OR MKIS.END_TMS > SYSDATE())
														  AND ISID.ID_CTXT_TYP='TICKER'
														  AND (P_GUID IS NULL OR MKIS.GU_ID=P_GUID)									  
														  AND ISID.ISS_ID=P_TICKER;		
					
					
						RETURN V_OUTPUT;
					
					ELSIF V_COUNT > 1 THEN
					
						SELECT COUNT(MKIS.MKT_ISS_OID) INTO V_COUNT
										FROM FT_T_ISID ISID, FT_T_MIXR MIXR, FT_T_MKIS MKIS
										WHERE ISID.ISID_OID=MIXR.ISID_OID
											  AND MIXR.MKT_ISS_OID=MKIS.MKT_ISS_OID
											  AND MKIS.OFCL_PLACE_LISTING_IND='Y'
											  AND (ISID.END_TMS IS NULL OR ISID.END_TMS > SYSDATE())
											  AND (MIXR.END_TMS IS NULL OR MIXR.END_TMS > SYSDATE())
											  AND (MKIS.END_TMS IS NULL OR MKIS.END_TMS > SYSDATE())
											  AND ISID.ID_CTXT_TYP='TICKER'
											  AND (P_GUID IS NULL OR MKIS.GU_ID=P_GUID)								  
											  AND (P_CURRCDE IS NULL OR MKIS.TRDNG_CURR_CDE=P_CURRCDE)
											  AND ISID.ISS_ID=P_TICKER;	
						
						IF V_COUNT = 1 THEN
						
							SELECT MKIS.MKT_OID||'|'||MKIS.MKT_ISS_OID INTO V_OUTPUT
											FROM FT_T_ISID ISID, FT_T_MIXR MIXR, FT_T_MKIS MKIS
											WHERE ISID.ISID_OID=MIXR.ISID_OID
												  AND MIXR.MKT_ISS_OID=MKIS.MKT_ISS_OID
												  AND MKIS.OFCL_PLACE_LISTING_IND='Y'
												  AND (ISID.END_TMS IS NULL OR ISID.END_TMS > SYSDATE())
												  AND (MIXR.END_TMS IS NULL OR MIXR.END_TMS > SYSDATE())
												  AND (MKIS.END_TMS IS NULL OR MKIS.END_TMS > SYSDATE())
												  AND ISID.ID_CTXT_TYP='TICKER'
												  AND (P_GUID IS NULL OR MKIS.GU_ID=P_GUID)									  
												  AND (P_CURRCDE IS NULL OR MKIS.TRDNG_CURR_CDE=P_CURRCDE)
												  AND ISID.ISS_ID=P_TICKER;	
						
						
							RETURN V_OUTPUT;

						END IF;
					END IF;
	END IF;
	
	IF P_BBGLOBAL IS NOT NULL AND P_BBGLOBAL !='' THEN
	
		SELECT COUNT(MKIS.MKT_ISS_OID) INTO V_COUNT
            FROM FT_T_ISID ISID, FT_T_MIXR MIXR, FT_T_MKIS MKIS
			WHERE ISID.ISID_OID=MIXR.ISID_OID
				  AND MIXR.MKT_ISS_OID=MKIS.MKT_ISS_OID
				  AND MKIS.OFCL_PLACE_LISTING_IND='Y'
				  AND (ISID.END_TMS IS NULL OR ISID.END_TMS > SYSDATE())
				  AND (MIXR.END_TMS IS NULL OR MIXR.END_TMS > SYSDATE())
				  AND (MKIS.END_TMS IS NULL OR MKIS.END_TMS > SYSDATE())
				  AND ISID.ID_CTXT_TYP='BBGLOBAL'				  
				  AND ISID.ISS_ID=P_BBGLOBAL;
		
		IF V_COUNT = 1 THEN
		
			SELECT MKIS.MKT_OID||'|'||MKIS.MKT_ISS_OID INTO V_OUTPUT
										FROM FT_T_ISID ISID, FT_T_MIXR MIXR, FT_T_MKIS MKIS
										WHERE ISID.ISID_OID=MIXR.ISID_OID
											  AND MIXR.MKT_ISS_OID=MKIS.MKT_ISS_OID
											  AND MKIS.OFCL_PLACE_LISTING_IND='Y'
											  AND (ISID.END_TMS IS NULL OR ISID.END_TMS > SYSDATE())
											  AND (MIXR.END_TMS IS NULL OR MIXR.END_TMS > SYSDATE())
											  AND (MKIS.END_TMS IS NULL OR MKIS.END_TMS > SYSDATE())
											  AND ISID.ID_CTXT_TYP='BBGLOBAL'											  
											  AND ISID.ISS_ID=P_BBGLOBAL;		
		
		
			RETURN V_OUTPUT;
		
		ELSIF V_COUNT > 1 THEN
		
			SELECT COUNT(MKIS.MKT_ISS_OID) INTO V_COUNT
							FROM FT_T_ISID ISID, FT_T_MIXR MIXR, FT_T_MKIS MKIS
							WHERE ISID.ISID_OID=MIXR.ISID_OID
								  AND MIXR.MKT_ISS_OID=MKIS.MKT_ISS_OID
								  AND MKIS.OFCL_PLACE_LISTING_IND='Y'
								  AND (ISID.END_TMS IS NULL OR ISID.END_TMS > SYSDATE())
								  AND (MIXR.END_TMS IS NULL OR MIXR.END_TMS > SYSDATE())
								  AND (MKIS.END_TMS IS NULL OR MKIS.END_TMS > SYSDATE())
								  AND ISID.ID_CTXT_TYP='BBGLOBAL'
								  AND (P_CURRCDE IS NULL OR MKIS.TRDNG_CURR_CDE=P_CURRCDE)
								  AND ISID.ISS_ID=P_BBGLOBAL;	
			
			IF V_COUNT = 1 THEN
			
				SELECT MKIS.MKT_OID||'|'||MKIS.MKT_ISS_OID INTO V_OUTPUT
								FROM FT_T_ISID ISID, FT_T_MIXR MIXR, FT_T_MKIS MKIS
								WHERE ISID.ISID_OID=MIXR.ISID_OID
									  AND MIXR.MKT_ISS_OID=MKIS.MKT_ISS_OID
									  AND MKIS.OFCL_PLACE_LISTING_IND='Y'
									  AND (ISID.END_TMS IS NULL OR ISID.END_TMS > SYSDATE())
									  AND (MIXR.END_TMS IS NULL OR MIXR.END_TMS > SYSDATE())
									  AND (MKIS.END_TMS IS NULL OR MKIS.END_TMS > SYSDATE())
									  AND ISID.ID_CTXT_TYP='BBGLOBAL'
									  AND (P_CURRCDE IS NULL OR MKIS.TRDNG_CURR_CDE=P_CURRCDE)
									  AND ISID.ISS_ID=P_BBGLOBAL;	
			
			
				RETURN V_OUTPUT;

			END IF;
		END IF;
	END IF;
	
	IF P_ISIN IS NOT NULL AND P_ISIN !='' THEN
	
		 SELECT COUNT(MKIS.MKT_ISS_OID) INTO V_COUNT
            FROM FT_T_ISID ISID, FT_T_MKIS MKIS
			WHERE ISID.INSTR_ID=MKIS.INSTR_ID
				  AND MKIS.OFCL_PLACE_LISTING_IND='Y'
				  AND (ISID.END_TMS IS NULL OR ISID.END_TMS > SYSDATE())				  					
				  AND (MKIS.END_TMS IS NULL OR MKIS.END_TMS > SYSDATE())
				  AND ISID.ID_CTXT_TYP='ISIN'
				  AND (P_GUID IS NULL OR MKIS.GU_ID=P_GUID)
				  AND ISID.ISS_ID=P_ISIN;	
		
		IF V_COUNT = 1 THEN
		
			SELECT MKIS.MKT_OID||'|'||MKIS.MKT_ISS_OID INTO V_OUTPUT
										FROM FT_T_ISID ISID, FT_T_MKIS MKIS
										WHERE ISID.INSTR_ID=MKIS.INSTR_ID
											  AND MKIS.OFCL_PLACE_LISTING_IND='Y'
											  AND (ISID.END_TMS IS NULL OR ISID.END_TMS > SYSDATE())
											  AND (MKIS.END_TMS IS NULL OR MKIS.END_TMS > SYSDATE())
											  AND ISID.ID_CTXT_TYP='ISIN'
											  AND (P_GUID IS NULL OR MKIS.GU_ID=P_GUID)
											  AND ISID.ISS_ID=P_ISIN;			
		
		
			RETURN V_OUTPUT;
		
		ELSIF V_COUNT > 1 THEN
		
			SELECT COUNT(MKIS.MKT_ISS_OID) INTO V_COUNT
							FROM FT_T_ISID ISID, FT_T_MKIS MKIS
							WHERE ISID.INSTR_ID=MKIS.INSTR_ID
							  AND MKIS.OFCL_PLACE_LISTING_IND='Y'
							  AND (ISID.END_TMS IS NULL OR ISID.END_TMS > SYSDATE())
							  AND (MKIS.END_TMS IS NULL OR MKIS.END_TMS > SYSDATE())
							  AND ISID.ID_CTXT_TYP='ISIN'
							  AND (P_GUID IS NULL OR MKIS.GU_ID=P_GUID)
							  AND ISID.ISS_ID=P_ISIN
							  AND (P_CURRCDE IS NULL OR MKIS.TRDNG_CURR_CDE=P_CURRCDE);	
							
			
			IF V_COUNT = 1 THEN
			
				SELECT MKIS.MKT_OID||'|'||MKIS.MKT_ISS_OID INTO V_OUTPUT
								FROM FT_T_ISID ISID, FT_T_MKIS MKIS
								WHERE ISID.INSTR_ID=MKIS.INSTR_ID
								  AND MKIS.OFCL_PLACE_LISTING_IND='Y'
								  AND (ISID.END_TMS IS NULL OR ISID.END_TMS > SYSDATE())
								  AND (MKIS.END_TMS IS NULL OR MKIS.END_TMS > SYSDATE())
								  AND ISID.ID_CTXT_TYP='ISIN'
								  AND (P_GUID IS NULL OR MKIS.GU_ID=P_GUID)
								  AND ISID.ISS_ID=P_ISIN
								  AND (P_CURRCDE IS NULL OR MKIS.TRDNG_CURR_CDE=P_CURRCDE);		
			
			
				RETURN V_OUTPUT;

			END IF;
		END IF;
	END IF;
	
	
	IF P_CUSIP IS NOT NULL AND P_CUSIP !='' THEN
	
		 SELECT COUNT(MKIS.MKT_ISS_OID) INTO V_COUNT
            FROM FT_T_ISID ISID, FT_T_MKIS MKIS
			WHERE ISID.INSTR_ID=MKIS.INSTR_ID
				  AND MKIS.OFCL_PLACE_LISTING_IND='Y'
				  AND (ISID.END_TMS IS NULL OR ISID.END_TMS > SYSDATE())
				  AND (MKIS.END_TMS IS NULL OR MKIS.END_TMS > SYSDATE())
				  AND ISID.ID_CTXT_TYP='CUSIP'
				  AND (P_GUID IS NULL OR MKIS.GU_ID=P_GUID)
				  AND ISID.ISS_ID=P_CUSIP;	
		
		IF V_COUNT = 1 THEN
		
			SELECT MKIS.MKT_OID||'|'||MKIS.MKT_ISS_OID INTO V_OUTPUT
										FROM FT_T_ISID ISID, FT_T_MKIS MKIS
										WHERE ISID.INSTR_ID=MKIS.INSTR_ID
											  AND MKIS.OFCL_PLACE_LISTING_IND='Y'
											  AND (ISID.END_TMS IS NULL OR ISID.END_TMS > SYSDATE())
											  AND (MKIS.END_TMS IS NULL OR MKIS.END_TMS > SYSDATE())
											  AND ISID.ID_CTXT_TYP='CUSIP'
											  AND (P_GUID IS NULL OR MKIS.GU_ID=P_GUID)
											  AND ISID.ISS_ID=P_CUSIP;			
		
		
			RETURN V_OUTPUT;
		
		ELSIF V_COUNT > 1 THEN
		
			SELECT COUNT(MKIS.MKT_ISS_OID) INTO V_COUNT
							FROM FT_T_ISID ISID, FT_T_MKIS MKIS
							WHERE ISID.INSTR_ID=MKIS.INSTR_ID
							  AND MKIS.OFCL_PLACE_LISTING_IND='Y'
							  AND (ISID.END_TMS IS NULL OR ISID.END_TMS > SYSDATE())
							  AND (MKIS.END_TMS IS NULL OR MKIS.END_TMS > SYSDATE())
							  AND ISID.ID_CTXT_TYP='CUSIP'
							  AND (P_GUID IS NULL OR MKIS.GU_ID=P_GUID)
							  AND ISID.ISS_ID=P_CUSIP
							  AND (P_CURRCDE IS NULL OR MKIS.TRDNG_CURR_CDE=P_CURRCDE);	
							
			
			IF V_COUNT = 1 THEN
			
				SELECT MKIS.MKT_OID||'|'||MKIS.MKT_ISS_OID INTO V_OUTPUT
								FROM FT_T_ISID ISID, FT_T_MKIS MKIS
								WHERE ISID.INSTR_ID=MKIS.INSTR_ID
								  AND MKIS.OFCL_PLACE_LISTING_IND='Y'
								  AND (ISID.END_TMS IS NULL OR ISID.END_TMS > SYSDATE())
								  AND (MKIS.END_TMS IS NULL OR MKIS.END_TMS > SYSDATE())
								  AND ISID.ID_CTXT_TYP='CUSIP'
								  AND (P_GUID IS NULL OR MKIS.GU_ID=P_GUID)
								  AND ISID.ISS_ID=P_CUSIP
								  AND (P_CURRCDE IS NULL OR MKIS.TRDNG_CURR_CDE=P_CURRCDE);		
			
			
				RETURN V_OUTPUT;

			END IF;
		END IF;
	END IF;
	
	IF P_CINS IS NOT NULL AND P_CINS !='' THEN
		
			 SELECT COUNT(MKIS.MKT_ISS_OID) INTO V_COUNT
				FROM FT_T_ISID ISID, FT_T_MKIS MKIS
				WHERE ISID.INSTR_ID=MKIS.INSTR_ID
					  AND MKIS.OFCL_PLACE_LISTING_IND='Y'
					  AND (ISID.END_TMS IS NULL OR ISID.END_TMS > SYSDATE())
					  AND (MKIS.END_TMS IS NULL OR MKIS.END_TMS > SYSDATE())
					  AND ISID.ID_CTXT_TYP='CINS'
					  AND (P_GUID IS NULL OR MKIS.GU_ID=P_GUID)
					  AND ISID.ISS_ID=P_CINS;	
			
			IF V_COUNT = 1 THEN
			
				SELECT MKIS.MKT_OID||'|'||MKIS.MKT_ISS_OID INTO V_OUTPUT
											FROM FT_T_ISID ISID, FT_T_MKIS MKIS
											WHERE ISID.INSTR_ID=MKIS.INSTR_ID
												  AND MKIS.OFCL_PLACE_LISTING_IND='Y'
												  AND (ISID.END_TMS IS NULL OR ISID.END_TMS > SYSDATE())
												  AND (MKIS.END_TMS IS NULL OR MKIS.END_TMS > SYSDATE())
												  AND ISID.ID_CTXT_TYP='CINS'
												  AND (P_GUID IS NULL OR MKIS.GU_ID=P_GUID)
												  AND ISID.ISS_ID=P_CINS;			
			
			
				RETURN V_OUTPUT;
			
			ELSIF V_COUNT > 1 THEN
			
				SELECT COUNT(MKIS.MKT_ISS_OID) INTO V_COUNT
								FROM FT_T_ISID ISID, FT_T_MKIS MKIS
								WHERE ISID.INSTR_ID=MKIS.INSTR_ID
								  AND MKIS.OFCL_PLACE_LISTING_IND='Y'
								  AND (ISID.END_TMS IS NULL OR ISID.END_TMS > SYSDATE())
								  AND (MKIS.END_TMS IS NULL OR MKIS.END_TMS > SYSDATE())
								  AND ISID.ID_CTXT_TYP='CINS'
								  AND (P_GUID IS NULL OR MKIS.GU_ID=P_GUID)
								  AND ISID.ISS_ID=P_CINS
								  AND (P_CURRCDE IS NULL OR MKIS.TRDNG_CURR_CDE=P_CURRCDE);	
								
				
				IF V_COUNT = 1 THEN
				
					SELECT MKIS.MKT_OID||'|'||MKIS.MKT_ISS_OID INTO V_OUTPUT
									FROM FT_T_ISID ISID, FT_T_MKIS MKIS
									WHERE ISID.INSTR_ID=MKIS.INSTR_ID
									  AND MKIS.OFCL_PLACE_LISTING_IND='Y'
									  AND (ISID.END_TMS IS NULL OR ISID.END_TMS > SYSDATE())
									  AND (MKIS.END_TMS IS NULL OR MKIS.END_TMS > SYSDATE())
									  AND ISID.ID_CTXT_TYP='CINS'
									  AND (P_GUID IS NULL OR MKIS.GU_ID=P_GUID)
									  AND ISID.ISS_ID=P_CINS
									  AND (P_CURRCDE IS NULL OR MKIS.TRDNG_CURR_CDE=P_CURRCDE);		
				
				
					RETURN V_OUTPUT;

				END IF;
			END IF;
		END IF;

RETURN V_OUTPUT;

END;
$function$
;
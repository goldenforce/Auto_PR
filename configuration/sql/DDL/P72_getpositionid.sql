CREATE OR REPLACE FUNCTION getpositionid(p_instrid VARCHAR DEFAULT NULL::character varying, p_ric VARCHAR DEFAULT NULL::character varying, p_country VARCHAR DEFAULT NULL::character varying, p_when_issued VARCHAR DEFAULT 'N'::character varying)
 RETURNS VARCHAR
 LANGUAGE plpgsql
AS $function$
        DECLARE
                V_OUTPUT VARCHAR(254):= NULL;				
				V_LEVEL1 VARCHAR(254):= NULL;
				V_LEVEL2 VARCHAR(254):= NULL;
				V_LEVEL3 VARCHAR(254):= NULL;
				V_CLASS VARCHAR(254):= NULL;
				V_BBSECTYP VARCHAR(254):= NULL;
				V_UNDPOSID VARCHAR(254):= NULL;
				V_NEWUNDPOSID VARCHAR(254):= NULL;
				V_DUPCHECKFLAG VARCHAR(2) :='N';
				V_UNDISSTYP VARCHAR(254) :=NULL;
				V_NEWCHAR VARCHAR(10) :=NULL;
				V_OLDCHAR VARCHAR(10) :=NULL;
				V_STRKE_CPRC decimal;
				V_CALL_PUT_TYP VARCHAR(4) :=NULL;
				V_MAT_EXP_TMS FT_T_ISSU.MAT_EXP_TMS%TYPE:=NULL;
				V_COMPUTED_POS_ID VARCHAR(254) := null;
				V_BBG_TICK VARCHAR(254) := null;
				V_LAST_CHAR_LOWER VARCHAR(1) := null;
        BEGIN
		
		
		select GETP72INSTRTYPE(P_INSTRID,'1') INTO V_LEVEL1 from DUAL;
		select GETP72INSTRTYPE(P_INSTRID,'2') INTO V_LEVEL2 from DUAL;
		select GETP72INSTRTYPE(P_INSTRID,'3') INTO V_LEVEL3 from DUAL;
		select CL_TYP,mat_exp_tms INTO V_CLASS,V_MAT_EXP_TMS from FT_T_ISSU WHERE INSTR_ID=P_INSTRID;
		
		select CL_VALUE INTO V_BBSECTYP 
			from FT_T_ISCL 
			WHERE INSTR_ID=P_INSTRID 
			AND INDUS_CL_SET_ID='BBSECTYP' 
			AND CLSF_PURP_TYP='BBISSTYP'
			AND (END_TMS IS NULL OR END_TMS > SYSDATE()) 
			LIMIT 1;
		
		
                IF (V_BBSECTYP='Unit' OR V_LEVEL2 ='MLP') AND P_RIC IS NOT NULL AND P_COUNTRY IN ('US') AND P_WHEN_ISSUED = 'N' THEN
                        SELECT
                                SPLIT_PART(P_RIC,'.',1)
                        INTO
                                V_OUTPUT
                        FROM
                                DUAL;                
                     
                               
                ELSIF (V_BBSECTYP='Unit' OR V_LEVEL2 ='MLP') AND P_RIC IS NOT NULL AND P_COUNTRY IN ('US') AND P_WHEN_ISSUED = 'Y' THEN
                        SELECT
                                REPLACE(CONCAT(SPLIT_PART(P_RIC,'.',1),'.WI'),'_w','')
                        INTO
                                V_OUTPUT
                        FROM
                                DUAL;
                               
                ELSIF (V_BBSECTYP='Unit' OR V_LEVEL2 ='MLP') AND P_RIC IS NOT NULL AND P_COUNTRY NOT IN ('US') AND P_WHEN_ISSUED = 'N'  THEN
                        SELECT
                               P_RIC
                        INTO
                                V_OUTPUT
                        FROM
                                DUAL;      
				
				ELSIF V_LEVEL1 in ('Fixed Income/Bond') THEN
						
						IF P_COUNTRY  IN ('US','CA') THEN
							
							SELECT
								ISS_ID
							INTO
								V_OUTPUT
							FROM
								FT_T_ISID
							WHERE
								ID_CTXT_TYP = 'CUSIP'
								AND END_TMS IS NULL
								AND INSTR_ID = P_INSTRID;							
						          	
						ELSE
						 
							SELECT
								ISS_ID
							INTO
								V_OUTPUT
							FROM
								FT_T_ISID
							WHERE
								ID_CTXT_TYP = 'ISIN'
								AND END_TMS IS NULL
								AND INSTR_ID = P_INSTRID;
						END IF;
				
				ELSIF V_LEVEL2 IN ('Equity Rights','Equity Warrants') /*AND P_RIC IS NOT NULL*/ THEN
					
					SELECT ISID.ISS_ID INTO V_UNDPOSID FROM FT_T_ISID ISID, FT_T_RIDF RIDF, FT_T_RISS RISS
					WHERE RIDF.INSTR_ID=P_INSTRID
					AND RIDF.REL_TYP IN ('UNDERLYG')
					AND RIDF.RLD_ISS_FEAT_ID=RISS.RLD_ISS_FEAT_ID
					AND RISS.ISS_PART_RL_TYP='UNDLYING'
					AND RISS.INSTR_ID=ISID.INSTR_ID
					AND ISID.ID_CTXT_TYP='GSPOSITIONID'
					AND (ISID.END_TMS IS NULL OR ISID.END_TMS > SYSDATE())
					AND (RIDF.END_TMS IS NULL OR RIDF.END_TMS > SYSDATE())
					AND (RISS.END_TMS IS NULL OR RISS.END_TMS > SYSDATE());
					
					IF V_UNDPOSID IS NOT NULL AND V_LEVEL2='Equity Rights' AND P_COUNTRY IN ('US') AND P_WHEN_ISSUED = 'N' THEN
					
					V_UNDPOSID:= CONCAT(SPLIT_PART(V_UNDPOSID,'.',1),'.RTS');
					
					ELSIF V_UNDPOSID IS NOT NULL AND V_LEVEL2='Equity Rights' AND P_COUNTRY IN ('US') AND P_WHEN_ISSUED = 'Y' THEN
					
					V_UNDPOSID:= REPLACE(CONCAT(SPLIT_PART(V_UNDPOSID,'.',1),'.WI.RTS'),'_w','');
					
					ELSIF V_UNDPOSID IS NOT NULL AND V_LEVEL2='Equity Rights' AND P_COUNTRY NOT IN ('US') THEN
					
					V_UNDPOSID:= CONCAT(V_UNDPOSID,'.RTS');
					
					ELSIF V_UNDPOSID IS NOT NULL AND V_LEVEL2='Equity Warrants' AND P_COUNTRY IN ('US') AND P_WHEN_ISSUED = 'N' THEN
					
					V_UNDPOSID:= CONCAT(SPLIT_PART(V_UNDPOSID,'.',1),'.WT');
					
					ELSIF V_UNDPOSID IS NOT NULL AND V_LEVEL2='Equity Warrants' AND P_COUNTRY IN ('US') AND P_WHEN_ISSUED = 'Y' THEN
					
					V_UNDPOSID:= REPLACE(CONCAT(SPLIT_PART(V_UNDPOSID,'.',1),'.WI.WT'),'_w','');
					
					ELSIF V_UNDPOSID IS NOT NULL AND V_LEVEL2='Equity Warrants' AND P_COUNTRY NOT IN ('US') THEN
					
					V_UNDPOSID:= CONCAT(V_UNDPOSID,'.WT');
					
					END IF;
					
					V_NEWUNDPOSID:=V_UNDPOSID;
					
						SELECT 'Y' INTO V_DUPCHECKFLAG
								FROM FT_T_ISID 
								WHERE ISS_ID=V_NEWUNDPOSID 
								AND ID_CTXT_TYP='GSPOSITIONID' 
								AND (END_TMS IS NULL OR END_TMS > SYSDATE());
						
						IF (V_DUPCHECKFLAG='Y') THEN
							
							IF SUBSTR(V_NEWUNDPOSID,position('.' in V_NEWUNDPOSID) -2,1) ~ '^[A-Z]$' THEN
										
										V_NEWCHAR:='1';
										
										ELSE 
										
										V_NEWCHAR:='A';
							END IF;
							
							V_OLDCHAR:=V_NEWCHAR;
							
							WHILE TRUE
							LOOP
																	
								IF V_OLDCHAR!=V_NEWCHAR THEN
								
									IF V_NEWCHAR ~ '^[A-Z]$' THEN									
								
									V_NEWCHAR:= ASCII(V_NEWCHAR)-63 ;
									
									ELSIF V_NEWCHAR = 'Z' THEN
									
									V_NEWCHAR:=1;
									
									ELSE
									
									V_NEWCHAR:=V_NEWCHAR+1;
									
									END IF;
									
									V_NEWUNDPOSID:=CONCAT(CONCAT(SUBSTR(V_NEWUNDPOSID,1,position('.' in V_NEWUNDPOSID)-2),V_NEWCHAR),
													SUBSTR(V_NEWUNDPOSID,position('.' in V_NEWUNDPOSID),LENGTH(V_NEWUNDPOSID)));
								ELSE
								
									V_NEWUNDPOSID:=CONCAT(CONCAT(SUBSTR(V_NEWUNDPOSID,1,position('.' in V_NEWUNDPOSID)-1),V_NEWCHAR),
													SUBSTR(V_NEWUNDPOSID,position('.' in V_NEWUNDPOSID),LENGTH(V_NEWUNDPOSID)));
								
								END IF;		
								
								
								SELECT 'Y' INTO V_DUPCHECKFLAG
									FROM FT_T_ISID 
									WHERE ISS_ID=V_NEWUNDPOSID 
									AND ID_CTXT_TYP='GSPOSITIONID' 
									AND (END_TMS IS NULL OR END_TMS > SYSDATE());
									
									IF (V_DUPCHECKFLAG!='Y') THEN
										V_OUTPUT:=	V_NEWUNDPOSID;
										EXIT;
									END IF;
						
							V_OLDCHAR:='XXX';
							END LOOP;
							
						ELSE
							
							V_OUTPUT:=	V_NEWUNDPOSID;
						
						END IF;
				
				ELSIF V_LEVEL2 = 'Preferred Stock' AND P_RIC IS NOT NULL AND P_COUNTRY IN ('US','CA') AND P_WHEN_ISSUED = 'Y' THEN
							
					SELECT	REPLACE(CONCAT(A1,CHK, '.WI.PFD'),'_w','') INTO	V_OUTPUT 
						FROM (SELECT
									A1,
									CASE								
										WHEN ALPHA ~ '^[a-z]$'	THEN 
										CAST(ASCII(ALPHA) -96 AS VARCHAR)
									END CHK
								FROM ( SELECT
											CASE 
											WHEN POSITION('_' IN P_RIC) > 1 THEN
												SUBSTR(P_RIC,1,POSITION('_' IN P_RIC)-1) 
											ELSE
												SPLIT_PART(P_RIC,'.',1) 
											END A1,
											CASE
												WHEN POSITION('_p' IN P_RIC) >1 THEN
													SUBSTR(P_RIC,POSITION('_p' IN P_RIC) +2,1) 
												ELSE
													''
												END ALPHA
											FROM
											DUAL
									)A2
							)A3;
				
				ELSIF V_LEVEL2 = 'Preferred Stock' AND P_RIC IS NOT NULL AND P_COUNTRY IN ('US','CA') AND P_WHEN_ISSUED = 'N' THEN
							
					SELECT	CONCAT(A1,CHK, '.PFD') INTO	V_OUTPUT 
						FROM (SELECT
									A1,
									CASE								
										WHEN ALPHA ~ '^[a-z]$'	THEN 
										CAST(ASCII(ALPHA) -96 AS VARCHAR)
									END CHK
								FROM ( SELECT
											CASE 
											WHEN POSITION('_' IN P_RIC) > 1 THEN
												SUBSTR(P_RIC,1,POSITION('_' IN P_RIC)-1) 
											ELSE
												SPLIT_PART(P_RIC,'.',1) 
											END A1,
											CASE
												WHEN POSITION('_p' IN P_RIC) >1 THEN
													SUBSTR(P_RIC,POSITION('_p' IN P_RIC) +2,1) 
												ELSE
													''
												END ALPHA
											FROM
											DUAL
									)A2
							)A3;
							
				ELSIF V_LEVEL2 = 'Preferred Stock' AND P_RIC IS NOT NULL AND P_COUNTRY NOT IN ('US','CA') THEN
					SELECT
							concat(REPLACE(P_RIC,'_p',''),'.PFD')
							INTO
									V_OUTPUT
							FROM
									DUAL;	
									
				ELSIF	V_LEVEL2 = 'Preference' AND P_RIC IS NOT NULL AND P_COUNTRY IN ('US') AND P_WHEN_ISSUED = 'Y' THEN	   
					SELECT
							REPLACE(CONCAT(SPLIT_PART(P_RIC,'.',1),'.WI.PRF'),'_w','')
							INTO
									V_OUTPUT
							FROM
									DUAL;
									
				ELSIF	V_LEVEL2 = 'Preference' AND P_RIC IS NOT NULL AND P_COUNTRY IN ('US') AND P_WHEN_ISSUED = 'N' THEN	   
					SELECT
							CONCAT(SPLIT_PART(P_RIC,'.',1),'.PRF')
							INTO
									V_OUTPUT
							FROM
									DUAL;
				ELSIF	V_LEVEL2 = 'Preference' AND P_RIC IS NOT NULL AND P_COUNTRY NOT IN ('US')  THEN	   
					SELECT
							concat(P_RIC,'.PRF')
							INTO
									V_OUTPUT
							FROM
									DUAL;
									
				ELSIF V_LEVEL2 = 'Depository Receipts'  AND P_RIC IS NOT NULL THEN
				
						IF 	P_COUNTRY ='US' AND P_WHEN_ISSUED = 'Y' THEN
											
						SELECT
									REPLACE(CONCAT(SPLIT_PART(P_RIC,'.',1),'.WI'),'_w','')
							INTO
									V_OUTPUT
							FROM
									DUAL; 
									
						ELSIF P_COUNTRY ='US' AND P_WHEN_ISSUED = 'N' THEN
											
						SELECT
								   SPLIT_PART(P_RIC,'.',1)
							INTO
									V_OUTPUT
							FROM
									DUAL;
									
						ELSIF 	P_COUNTRY !='US' THEN
											
						SELECT
								   P_RIC
							INTO
									V_OUTPUT
							FROM
									DUAL;
						END IF;
						
						SELECT GETP72INSTRTYPE(RISS.INSTR_ID,'2') INTO V_UNDISSTYP FROM FT_T_RIDF RIDF, FT_T_RISS RISS
							WHERE RIDF.INSTR_ID=P_INSTRID
							AND RIDF.REL_TYP='UNDERLYG'
							AND RIDF.RLD_ISS_FEAT_ID=RISS.RLD_ISS_FEAT_ID
							AND RISS.ISS_PART_RL_TYP='UNDLYING'					
							AND (RIDF.END_TMS IS NULL OR RIDF.END_TMS > SYSDATE())
							AND (RISS.END_TMS IS NULL OR RISS.END_TMS > SYSDATE());	
							
						IF V_UNDISSTYP='Preference' THEN
						
						V_OUTPUT:=CONCAT(V_OUTPUT,'.PRF');
						
						END IF;
				
				ELSIF V_LEVEL1 in ('Equity','Funds') AND P_RIC IS NOT NULL AND P_COUNTRY IN ('US') AND P_WHEN_ISSUED = 'N' THEN
                        SELECT
                               SPLIT_PART(P_RIC,'.',1)
                        INTO
                                V_OUTPUT
                        FROM
                                DUAL;                 
                               
                ELSIF V_LEVEL1 in ('Equity','Funds') AND P_RIC IS NOT NULL AND  P_COUNTRY IN ('US') AND P_WHEN_ISSUED = 'Y' THEN
                        SELECT
                                REPLACE(CONCAT(SPLIT_PART(P_RIC,'.',1),'.WI'),'_w','')
                        INTO
                                V_OUTPUT
                        FROM
                                DUAL;
                               
                ELSIF V_LEVEL1 in ('Equity','Funds') AND P_RIC IS NOT NULL AND P_COUNTRY NOT IN ('US') THEN
                        SELECT
                                P_RIC
                        INTO
                                V_OUTPUT
                        FROM
                                DUAL; 		
                               
				ELSIF V_LEVEL3='Equity Options' then
				
				RAISE INFO 'V_LEVEL3 -->%',V_LEVEL3;
					   
							SELECT
								ISID.ISS_ID 
							INTO
								V_UNDPOSID
							FROM
								FT_T_ISID ISID ,
								FT_T_RIDF RIDF ,
								FT_T_RISS RISS ,
								FT_T_MIXR MIXR
							WHERE
								RIDF.INSTR_ID = P_INSTRID
								AND RIDF.REL_TYP = 'UNDERLYG'
								AND RIDF.RLD_ISS_FEAT_ID = RISS.RLD_ISS_FEAT_ID
								AND RISS.INSTR_ID = ISID.INSTR_ID
								AND RISS.ISS_PART_RL_TYP = 'UNDLYING'
								AND RISS.MKT_ISS_OID = MIXR.MKT_ISS_OID
								and MIXR.isid_oid =ISID.isid_oid 
								AND (ISID.END_TMS IS NULL
									OR ISID.END_TMS > SYSDATE())
								AND (RIDF.END_TMS IS NULL
									OR RIDF.END_TMS > SYSDATE())
								AND (RISS.END_TMS IS NULL
									OR RISS.END_TMS > SYSDATE())
								and ISID.id_ctxt_typ ='GSPOSITIONID';
					
							RAISE INFO 'V_UNDPOSID -->%',V_UNDPOSID;
						select
								round(STRKE_CPRC,3),
								case
									when call_put_typ = 'C' then 'Call'
									when call_put_typ = 'P' then 'Put'
								end
						into
								V_STRKE_CPRC,
								V_CALL_PUT_TYP
							from
								ft_t_opch
							where
								instr_id = P_INSTRID
								and end_tms is null;
					
							--Format is <Underlying's PositionID> + ".:"  + ".:" + <Expiry> + <Put/Call> + ':' + <Strike>



						V_OUTPUT := V_UNDPOSID || '.:' || To_CHAR(V_MAT_EXP_TMS,'DDMonYY') ||':' || V_CALL_PUT_TYP || ':' || V_STRKE_CPRC ;
					
					ELSIF V_LEVEL3='Index Options' then
					
					SELECT
								substring(ISID.ISS_ID,2) 
							INTO
								V_UNDPOSID
							FROM
								FT_T_ISID ISID ,
								FT_T_RIDF RIDF ,
								FT_T_RISS RISS ,
								FT_T_MIXR MIXR
							WHERE
								RIDF.INSTR_ID = P_INSTRID
								AND RIDF.REL_TYP = 'UNDERLYG'
								AND RIDF.RLD_ISS_FEAT_ID = RISS.RLD_ISS_FEAT_ID
								AND RISS.INSTR_ID = ISID.INSTR_ID
								AND RISS.ISS_PART_RL_TYP = 'UNDLYING'
								AND RISS.MKT_ISS_OID = MIXR.MKT_ISS_OID
								and MIXR.isid_oid =ISID.isid_oid 
								AND (ISID.END_TMS IS NULL
									OR ISID.END_TMS > SYSDATE())
								AND (RIDF.END_TMS IS NULL
									OR RIDF.END_TMS > SYSDATE())
								AND (RISS.END_TMS IS NULL
									OR RISS.END_TMS > SYSDATE())
								and ISID.id_ctxt_typ ='GSPOSITIONID';
								
								
					select
								round(STRKE_CPRC,3),
								case
									when call_put_typ = 'C' then 'Call'
									when call_put_typ = 'P' then 'Put'
								end
						into
								V_STRKE_CPRC,
								V_CALL_PUT_TYP
							from
								ft_t_opch
							where
								instr_id = P_INSTRID
								and end_tms is null;
					
					V_OUTPUT := V_UNDPOSID || '.:' || To_CHAR(V_MAT_EXP_TMS,'DDMonYY') ||':' || V_CALL_PUT_TYP || ':' || V_STRKE_CPRC ;
										
				ELSIF V_LEVEL2='Futures' and V_BBSECTYP='SINGLE STOCK FUTURE'  then
						
						select iss_id 
						into V_UNDPOSID
						from ft_t_isid 
						where id_ctxt_typ ='P72DERID'
						and INSTR_ID=P_INSTRID
						and (end_tms is null or END_TMS > SYSDATE());
					
						V_OUTPUT := V_UNDPOSID || ':' || To_CHAR(V_MAT_EXP_TMS,'MONYY');				
				END IF;
				
				
               	V_COMPUTED_POS_ID := upper(REPLACE(translate(V_OUTPUT,'-',''),'_',''));
                --Changes for DATAENGREF-769
                if ((ascii(right(V_OUTPUT,1)) >=97) AND (ascii(right(V_OUTPUT ,1) )<=122)) then
                	V_LAST_CHAR_LOWER :='Y';
                end if;

              	if ((substring(V_OUTPUT,'_') is not  null) OR (V_LAST_CHAR_LOWER ='Y'))  then
               					select ISID.ISS_ID into V_BBG_TICK
								FROM
								FT_T_ISID ISID ,
								FT_T_MKIS MKIS,
								FT_T_MIXR MIXR
								where 
								MKIS.INSTR_ID = ISID.INSTR_ID
								and MKIS.MKT_ISS_OID = MIXR.MKT_ISS_OID
								and MIXR.isid_oid =ISID.isid_oid 
								AND (ISID.END_TMS IS null OR ISID.END_TMS > SYSDATE())
								and ISID.id_ctxt_typ ='BBCPTICK'
								and MKIS.instr_id =P_INSTRID and ISID.mkt_oid in (select mkt_oid from ft_t_isid where iss_id=P_RIC);
				
					
					if ((substring(V_BBG_TICK,'/') is not  null) and  (substring(V_OUTPUT,'_') is not  null))  then
					 	 V_COMPUTED_POS_ID := upper(REPLACE(translate(V_OUTPUT,'-',''),'_','.'));
					 end if;
					
					if ( (V_LAST_CHAR_LOWER ='Y') and  (substring(V_OUTPUT,'_') is null) 
						 and (V_LEVEL1 in ('Equity','Funds')) and (P_COUNTRY IN ('US','CA'))
					   ) then
					    
						V_COMPUTED_POS_ID := upper(REPLACE(translate((substring(V_OUTPUT,1,length(V_OUTPUT)-1) ||'.'|| right(V_OUTPUT,1)) ,'-',''),'_',''));
					end if;
					
				end if;
				--end of DATAENGREF-769
			return  V_COMPUTED_POS_ID;
							
	EXCEPTION
         WHEN OTHERS THEN
            return null;			
END;
 $function$
;

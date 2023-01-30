CREATE OR REPLACE FUNCTION gc_own.p72_define_geneva_print_group(p_instr_id character varying)
 RETURNS character varying
 LANGUAGE plpgsql
AS $function$
DECLARE 
   C1 CURSOR FOR
        SELECT YKEY,
               PERPETUAL,
               COUNTRY,
               CALC_TYP_DES,
               INFLATION_LINKED_INDICATOR,
               CONVERTIBLE,
               OBLIGOR_NAME,
               ISSUER,
               ISSUER_INDUSTRY,
               STRUCTURED_NOTE,
               GENEVA_PRINT_GRP,
               SEQ_NO
          FROM FT_T_GPG1
		  WHERE END_DATE IS NULL		  
		  ORDER BY SEQ_NO;

   str_SQL        VARCHAR (10000);
   V_WHERE        VARCHAR (5000);
   V_TMP_WHERE    VARCHAR (1000);
   V_DBINSTR_ID   VARCHAR (10);
   V_GENEVA_PRINT_GRP VARCHAR(500);
BEGIN
   str_SQL :=
         'WITH DERIVE_TBL AS (select  INSTR_ID,
     (SElECT CL_VALUE FROM FT_T_ISCL WHERE INDUS_CL_SET_ID = '''
      || 'BBMKTSCT'
      || ''''
      || ' AND (END_TMS IS NULL OR END_TMS > CURRENT_TIMESTAMP) AND INSTR_ID=I.INSTR_ID) YKEY,
    (SElECT STAT_CHAR_VAL_TXT FROM FT_T_ISST WHERE STAT_DEF_ID = '''
      || 'CALTYDSC'
      || ''''
      || ' AND (END_TMS IS NULL OR END_TMS > CURRENT_TIMESTAMP) AND INSTR_ID=I.INSTR_ID) CALC_TYP_DES,
    (SELECT INFLATION_PROTECTED_IND FROM FT_T_BDCH WHERE INSTR_ID=I.INSTR_ID AND (END_TMS IS NULL OR END_TMS > CURRENT_TIMESTAMP)) INFLATION_LINKED_INDICATOR,
    (SElECT CONVERTIBLE_IND FROM FT_T_ISAS WHERE (END_TMS IS NULL OR END_TMS > CURRENT_TIMESTAMP) AND INSTR_ID=I.INSTR_ID) CONVERTIBLE,
    (SElECT STAT_CHAR_VAL_TXT FROM FT_T_ISST WHERE STAT_DEF_ID = '''
      || 'OBLIGORN'
      || ''''
      || ' AND (END_TMS IS NULL OR END_TMS > CURRENT_TIMESTAMP) AND INSTR_ID=I.INSTR_ID) OBLIGOR_NAME,
    (SELECT ISSR_NME FROM FT_T_ISSR WHERE INSTR_ISSR_ID=I.INSTR_ISSR_ID AND (END_TMS IS NULL OR END_TMS > CURRENT_TIMESTAMP)) ISSUER,
    (SELECT IRCL.CL_VALUE FROM FT_T_ISSR ISSR, FT_T_IRCL IRCL WHERE ISSR.INSTR_ISSR_ID=I.INSTR_ISSR_ID AND ISSR.INSTR_ISSR_ID = IRCL.INSTR_ISSR_ID AND IRCL.INSTR_ID=I.INSTR_ID AND (ISSR.END_TMS IS NULL OR ISSR.END_TMS > CURRENT_TIMESTAMP) AND (IRCL.END_TMS IS NULL OR IRCL.END_TMS > CURRENT_TIMESTAMP) AND IRCL.INDUS_CL_SET_ID = '''
      || 'BBINDCLS'
      || ''''
      || ') ISSUER_INDUSTRY,
    (SELECT STRUCTURED_IND FROM FT_T_BDCH WHERE INSTR_ID=I.INSTR_ID AND (END_TMS IS NULL OR END_TMS > CURRENT_TIMESTAMP)) STRUCTURED_NOTE,
    (SELECT CASE WHEN RDM_SCHM_TYP=''' || 'PERPETUAL' || '''' || ' THEN ''' || 'Y' || '''' || ' ELSE ''' || 'N' || '''' || ' END FROM FT_T_BDCH WHERE INSTR_ID=I.INSTR_ID AND (END_TMS IS NULL OR END_TMS > CURRENT_TIMESTAMP)) PERPETUAL,
    (SELECT CASE WHEN IRGU.GU_ID <> ''' || 'US' || '''' || ' THEN ''' || 'NON-US' || '''' || ' ELSE ''' || 'US' || '''' || ' END FROM FT_T_ISSR ISSR, FT_T_IRGU IRGU WHERE ISSR.INSTR_ISSR_ID=I.INSTR_ISSR_ID AND ISSR.INSTR_ISSR_ID = IRGU.INSTR_ISSR_ID AND (ISSR.END_TMS IS NULL OR ISSR.END_TMS > CURRENT_TIMESTAMP) AND (IRGU.END_TMS IS NULL OR IRGU.END_TMS > CURRENT_TIMESTAMP) AND IRGU.ISSR_GU_PURP_TYP = '''
      || 'INCRPRTE'
      || ''''
      || ' and IRGU.GU_TYP = '''
      || 'COUNTRY'
      || ''''
      || ' and IRGU.GU_CNT = 1) COUNTRY
    from FT_T_ISSU I
    WHERE I.INSTR_ID = '''
      || P_INSTR_ID
      || ''')
    SELECT INSTR_ID FROM DERIVE_TBL WHERE INSTR_ID = '''
      || P_INSTR_ID
      || '''';

	RAISE INFO 'Initial SQL: %',str_SQL;

 	  FOR R1 IN C1 LOOP

      V_WHERE := '';

	 --GENEVA_PRINT_GRP
     RAISE INFO 'GENEVA_PRINT_GRP: %',R1.GENEVA_PRINT_GRP;
	 
      -- YKEY
      RAISE INFO 'YKEY: %',R1.YKEY;
      IF (R1.YKEY IS NOT NULL AND R1.YKEY != 'ALL' AND R1.YKEY != 'N/A')
      THEN
         V_TMP_WHERE := '';

         IF (SUBSTRING (R1.YKEY, 1, 1) = '"')
         THEN
            -- ADD as is
            V_TMP_WHERE :=
               ' YKEY ' || SUBSTRING (R1.YKEY, 2, LENGTH (R1.YKEY) - 2);
         ELSE
            V_TMP_WHERE := ' YKEY = ''' || R1.YKEY || '''';
         END IF;

         IF (LENGTH (V_TMP_WHERE) > 0)
         THEN
            V_WHERE := V_WHERE || ' AND ' || V_TMP_WHERE;
         END IF;
      END IF;
	  
	   -- CALC_TYP_DES
	  RAISE INFO 'CALC_TYP_DES: %',R1.CALC_TYP_DES;
      IF (R1.CALC_TYP_DES IS NOT NULL AND R1.CALC_TYP_DES != 'ALL' AND R1.CALC_TYP_DES != 'N/A')
      THEN
         V_TMP_WHERE := '';

         IF (SUBSTRING (R1.CALC_TYP_DES, 1, 1) = '"')
         THEN
            -- ADD as is
            V_TMP_WHERE :=
               ' CALC_TYP_DES ' || SUBSTRING (R1.CALC_TYP_DES, 2, LENGTH (R1.CALC_TYP_DES) - 2);
         ELSE
            V_TMP_WHERE := ' CALC_TYP_DES = ''' || R1.CALC_TYP_DES || '''';
         END IF;

         IF (LENGTH (V_TMP_WHERE) > 0)
         THEN
            V_WHERE := V_WHERE || ' AND ' || V_TMP_WHERE;
         END IF;
      END IF;
	  
	   -- INFLATION_LINKED_INDICATOR
      RAISE INFO 'INFLATION_LINKED_INDICATOR: %', R1.INFLATION_LINKED_INDICATOR;
      IF (R1.INFLATION_LINKED_INDICATOR IS NOT NULL AND R1.INFLATION_LINKED_INDICATOR != 'ALL' AND R1.INFLATION_LINKED_INDICATOR != 'N/A')
      THEN
         V_TMP_WHERE := '';

         IF (SUBSTRING (R1.INFLATION_LINKED_INDICATOR, 1, 1) = '"')
         THEN
            -- ADD as is
            V_TMP_WHERE :=
               ' INFLATION_LINKED_INDICATOR ' || SUBSTRING (R1.INFLATION_LINKED_INDICATOR, 2, LENGTH (R1.INFLATION_LINKED_INDICATOR) - 2);
         ELSE
            V_TMP_WHERE := ' INFLATION_LINKED_INDICATOR = ''' || R1.INFLATION_LINKED_INDICATOR || '''';
         END IF;

         IF (LENGTH (V_TMP_WHERE) > 0)
         THEN
            V_WHERE := V_WHERE || ' AND ' || V_TMP_WHERE;
         END IF;
      END IF;
	  
	   -- CONVERTIBLE
      RAISE INFO 'CONVERTIBLE: %', R1.CONVERTIBLE;
      IF (R1.CONVERTIBLE IS NOT NULL AND R1.CONVERTIBLE != 'ALL' AND R1.CONVERTIBLE != 'N/A')
      THEN
         V_TMP_WHERE := '';

         IF (SUBSTRING (R1.CONVERTIBLE, 1, 1) = '"')
         THEN
            -- ADD as is
            V_TMP_WHERE :=
               ' CONVERTIBLE ' || SUBSTRING (R1.CONVERTIBLE, 2, LENGTH (R1.CONVERTIBLE) - 2);
         ELSE
            V_TMP_WHERE := ' CONVERTIBLE = ''' || R1.CONVERTIBLE || '''';
         END IF;

         IF (LENGTH (V_TMP_WHERE) > 0)
         THEN
            V_WHERE := V_WHERE || ' AND ' || V_TMP_WHERE;
         END IF;
      END IF;
	  
	   -- OBLIGOR_NAME
      RAISE INFO 'OBLIGOR_NAME: %', R1.OBLIGOR_NAME;
      IF (R1.OBLIGOR_NAME IS NOT NULL AND R1.OBLIGOR_NAME != 'ALL' AND R1.OBLIGOR_NAME != 'N/A')
      THEN
         V_TMP_WHERE := '';

         IF (SUBSTRING (R1.OBLIGOR_NAME, 1, 1) = '"')
         THEN
            -- ADD as is
            V_TMP_WHERE :=
               ' OBLIGOR_NAME ' || SUBSTRING (R1.OBLIGOR_NAME, 2, LENGTH (R1.OBLIGOR_NAME) - 2);
         ELSE
            V_TMP_WHERE := ' OBLIGOR_NAME = ''' || R1.OBLIGOR_NAME || '''';
         END IF;

         IF (LENGTH (V_TMP_WHERE) > 0)
         THEN
            V_WHERE := V_WHERE || ' AND ' || V_TMP_WHERE;
         END IF;
      END IF;
	  
	   -- ISSUER
      RAISE INFO 'ISSUER: %', R1.ISSUER;
      IF (R1.ISSUER IS NOT NULL AND R1.ISSUER != 'ALL' AND R1.ISSUER != 'N/A')
      THEN
         V_TMP_WHERE := '';

         IF (SUBSTRING (R1.ISSUER, 1, 1) = '"')
         THEN
            -- ADD as is
            V_TMP_WHERE :=
               ' ISSUER ' || SUBSTRING (R1.ISSUER, 2, LENGTH (R1.ISSUER) - 2);
         ELSE
            V_TMP_WHERE := ' ISSUER = ''' || R1.ISSUER || '''';
         END IF;

         IF (LENGTH (V_TMP_WHERE) > 0)
         THEN
            V_WHERE := V_WHERE || ' AND ' || V_TMP_WHERE;
         END IF;
      END IF;
	  
	  -- ISSUER_INDUSTRY
      RAISE INFO 'ISSUER_INDUSTRY: %', R1.ISSUER_INDUSTRY;
      IF (R1.ISSUER_INDUSTRY IS NOT NULL AND R1.ISSUER_INDUSTRY != 'ALL' AND R1.ISSUER_INDUSTRY != 'N/A')
      THEN
         V_TMP_WHERE := '';

         IF (SUBSTRING (R1.ISSUER_INDUSTRY, 1, 1) = '"')
         THEN
            -- ADD as is
            V_TMP_WHERE :=
               ' ISSUER_INDUSTRY ' || SUBSTRING (R1.ISSUER_INDUSTRY, 2, LENGTH (R1.ISSUER_INDUSTRY) - 2);
         ELSE
            V_TMP_WHERE := ' ISSUER_INDUSTRY = ''' || R1.ISSUER_INDUSTRY || '''';
         END IF;

         IF (LENGTH (V_TMP_WHERE) > 0)
         THEN
            V_WHERE := V_WHERE || ' AND ' || V_TMP_WHERE;
         END IF;
      END IF;
	  
	   -- STRUCTURED_NOTE
      RAISE INFO 'STRUCTURED_NOTE: %', R1.STRUCTURED_NOTE;
      IF (R1.STRUCTURED_NOTE IS NOT NULL AND R1.STRUCTURED_NOTE != 'ALL' AND R1.STRUCTURED_NOTE != 'N/A')
      THEN
         V_TMP_WHERE := '';

         IF (SUBSTRING (R1.STRUCTURED_NOTE, 1, 1) = '"')
         THEN
            -- ADD as is
            V_TMP_WHERE :=
               ' STRUCTURED_NOTE ' || SUBSTRING (R1.STRUCTURED_NOTE, 2, LENGTH (R1.STRUCTURED_NOTE) - 2);
         ELSE
            V_TMP_WHERE := ' STRUCTURED_NOTE = ''' || R1.STRUCTURED_NOTE || '''';
         END IF;

         IF (LENGTH (V_TMP_WHERE) > 0)
         THEN
            V_WHERE := V_WHERE || ' AND ' || V_TMP_WHERE;
         END IF;
      END IF;
	  
	   -- PERPETUAL
      RAISE INFO 'PERPETUAL: %', R1.PERPETUAL;
      IF (R1.PERPETUAL IS NOT NULL AND R1.PERPETUAL != 'ALL' AND R1.PERPETUAL != 'N/A')
      THEN
         V_TMP_WHERE := '';

         IF (SUBSTRING (R1.PERPETUAL, 1, 1) = '"')
         THEN
            -- ADD as is
            V_TMP_WHERE :=
               ' PERPETUAL ' || SUBSTRING (R1.PERPETUAL, 2, LENGTH (R1.PERPETUAL) - 2);
         ELSE
            V_TMP_WHERE := ' PERPETUAL = ''' || R1.PERPETUAL || '''';
         END IF;

         IF (LENGTH (V_TMP_WHERE) > 0)
         THEN
            V_WHERE := V_WHERE || ' AND ' || V_TMP_WHERE;
         END IF;
      END IF;
	  
	   -- COUNTRY
      RAISE INFO 'COUNTRY: %', R1.COUNTRY;
      IF (R1.COUNTRY IS NOT NULL AND R1.COUNTRY != 'ALL' AND R1.COUNTRY != 'N/A')
      THEN
         V_TMP_WHERE := '';

         IF (SUBSTRING (R1.COUNTRY, 1, 1) = '"')
         THEN
            -- ADD as is
            V_TMP_WHERE :=
               ' COUNTRY ' || SUBSTRING (R1.COUNTRY, 2, LENGTH (R1.COUNTRY) - 2);
         ELSE
            V_TMP_WHERE := ' COUNTRY = ''' || R1.COUNTRY || '''';
         END IF;

         IF (LENGTH (V_TMP_WHERE) > 0)
         THEN
            V_WHERE := V_WHERE || ' AND ' || V_TMP_WHERE;
         END IF;
      END IF;

	-- Prepare final sql	
      DECLARE
         str_FinalSQL   VARCHAR (10000);
      BEGIN
         str_FinalSQL := str_SQL;
         V_DBINSTR_ID := '';

         IF (LENGTH (V_WHERE) > 0)
         THEN
            str_FinalSQL := str_FinalSQL || V_WHERE;
         END IF;

         RAISE INFO 'Final SQL: %', str_FinalSQL;

         -- Run the sql
         EXECUTE str_FinalSQL INTO V_DBINSTR_ID;

         IF (LENGTH (V_DBINSTR_ID) > 0)
         THEN
           RAISE INFO 'RECORD MATCH: %', R1.GENEVA_PRINT_GRP;
            V_GENEVA_PRINT_GRP := R1.GENEVA_PRINT_GRP;
            EXIT;
         END IF;
      EXCEPTION
         WHEN NO_DATA_FOUND
         THEN
            RAISE INFO 'NO DATA FOUND: %', SQLERRM;
         WHEN TOO_MANY_ROWS
         THEN
            RAISE INFO 'TOO MANY ROWS %', SQLERRM;
            V_GENEVA_PRINT_GRP := R1.GENEVA_PRINT_GRP;
            EXIT;
      END;
   END LOOP;
   RETURN V_GENEVA_PRINT_GRP;

EXCEPTION
   WHEN OTHERS
   THEN
      RAISE NOTICE 'SQL ERROR: %', SQLERRM;
	  
END;
$function$
;

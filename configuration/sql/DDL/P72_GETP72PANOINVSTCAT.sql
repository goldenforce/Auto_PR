CREATE OR REPLACE FUNCTION GETP72PANOINVSTCAT(P_INSTRID VARCHAR DEFAULT NULL,
												P_COUNTRYISO VARCHAR DEFAULT NULL)
RETURNS VARCHAR
LANGUAGE PLPGSQL
AS $FUNCTION$
DECLARE
V_OUTPUT VARCHAR(254):= NULL;
V_LEVEL1 VARCHAR(254):= NULL;
V_LEVEL2 VARCHAR(254):= NULL;

BEGIN
	

	
    IF P_INSTRID IS NOT NULL AND P_COUNTRYISO IS NOT NULL THEN
	
	
		select GETP72INSTRTYPE(P_INSTRID,'1') INTO V_LEVEL1 from DUAL;
		
		select GETP72INSTRTYPE(P_INSTRID,'2') INTO V_LEVEL2 from DUAL;
		

		IF V_LEVEL1 IS NOT NULL OR V_LEVEL2 IS NOT NULL THEN
		
						
				IF V_LEVEL1 = 'Equity' AND V_LEVEL2 IN ('Preference', 'Preferred Stock') AND P_COUNTRYISO = 'US' THEN
				
				V_OUTPUT := 'EQT:US Preferred Stock';
			
				ELSIF V_LEVEL1 = 'Equity' AND V_LEVEL2 IN ('Preference', 'Preferred Stock') AND P_COUNTRYISO != 'US' THEN
				
				V_OUTPUT := 'EQT:Fr Preferred Stock';
				
				ELSIF V_LEVEL1 = 'Equity' AND V_LEVEL2 NOT IN ('Preference', 'Preferred Stock') AND P_COUNTRYISO = 'US' THEN
			
				V_OUTPUT := 'EQT:US Common Stock';
				
				ELSIF V_LEVEL1 = 'Equity' AND V_LEVEL2 NOT IN ('Preference', 'Preferred Stock') AND P_COUNTRYISO != 'US' THEN
			
				V_OUTPUT := 'EQT:Fr Common Stock';			
					
				ELSIF  (V_LEVEL1 = 'Funds' OR V_LEVEL2 IN ('Equity Rights','Equity Warrants')) AND P_COUNTRYISO='US' THEN
				
				V_OUTPUT := 'EQT:US Common Stock';
				
				ELSIF  (V_LEVEL1 = 'Funds' OR V_LEVEL2 IN ('Equity Rights','Equity Warrants')) AND P_COUNTRYISO!='US' THEN
				
				V_OUTPUT := 'EQT:Fr Common Stock';
				
				END IF;
		
		
		END IF;
		
    END IF;


RETURN V_OUTPUT;

END;
$FUNCTION$
;

CREATE OR REPLACE
VIEW FT_V_IDC1
AS
SELECT
	issact_id,
	case
		WHEN STRING_AGG(CTXT_TXT, ',' ORDER BY CTXT_TXT) IN ('NEWTKR,OLDTKR,RIC') THEN 'CHG_TKR,CHG_RIC'
		WHEN (STRING_AGG(CTXT_TXT, ',' ORDER BY CTXT_TXT) IN ('NEWTKR,OLDTKR') or STRING_AGG(CTXT_TXT, ',' ORDER BY CTXT_TXT)='NEWTKR' or STRING_AGG(CTXT_TXT, ',' ORDER BY CTXT_TXT)='OLDTKR' ) THEN 'CHG_TKR'
		WHEN STRING_AGG(CTXT_TXT, ',' ORDER BY CTXT_TXT) = 'RIC' THEN 'CHG_RIC'	
		WHEN STRING_AGG(CTXT_TXT, ',' ORDER BY CTXT_TXT) = 'CHG_NAME' THEN 'CHG_NAME'
	END derived_value
FROM
	(
	SELECT
		IAIC.ISSACT_ID ,
		IAIC.FLD_CTXT_TXT CTXT_TXT
	FROM
		FT_T_IADC IADC,
		FT_T_IAIC IAIC
	WHERE
		IADC.ISSACT_ID = IAIC.ISSACT_ID
		AND IAIC.FLD_CTXT_TXT = 'RIC'
		AND IAIC.END_TMS IS NULL
		AND IADC.END_TMS IS NULL
UNION
	SELECT
		IACM.ISSACT_ID ,
		IACM.CMNT_REAS_TYP CTXT_TXT
	FROM
		FT_T_IADC IADC,
		FT_T_IACM IACM
	WHERE
		IADC.ISSACT_ID = IACM.ISSACT_ID
		AND IACM.CMNT_REAS_TYP IN ('NEWTKR', 'OLDTKR')
		AND IADC.END_TMS IS NULL
		AND IACM.END_TMS IS NULL
UNION
	SELECT
		IADC.ISSACT_ID ,
		EIAT.EXT_ISSACT_TYP_TXT CTXT_TXT
	FROM
		FT_T_IADC IADC ,
		FT_T_EIAT EIAT
	WHERE
		IADC.EIAT_OID = EIAT.EIAT_OID
		AND EIAT.EXT_ISSACT_TYP_TXT = 'CHG_NAME'
		)IDCHANGE
GROUP BY
	ISSACT_ID
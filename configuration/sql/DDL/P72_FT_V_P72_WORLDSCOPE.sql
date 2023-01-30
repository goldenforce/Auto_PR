CREATE or REPLACE VIEW FT_V_P72_WORLDSCOPE
AS 
SELECT  CUSTOM_ID, 
		COALESCE(CUSTOM_ID,'') || '|' ||
		COALESCE(SEDOL ,'')|| '|' ||
		COALESCE(ISIN,'') || '|' ||
		COALESCE(CUSIP,'') || '|' ||
		COALESCE(START_DATE,'') || '|' ||
		COALESCE (END_DATE,'') AS OP
FROM FT_T_WID1
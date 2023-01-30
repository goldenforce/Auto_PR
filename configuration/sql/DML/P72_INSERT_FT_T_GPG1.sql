--SET DEFINE OFF;
--SQL Statement which produced this data:
--
--  select * from fT_T_gpg1;
--

delete from  FT_T_GPG1;

Insert into FT_T_GPG1
   (GPG1_OID, YKEY, PERPETUAL, COUNTRY, CALC_TYP_DES, 
    INFLATION_LINKED_INDICATOR, CONVERTIBLE, OBLIGOR_NAME, ISSUER, ISSUER_INDUSTRY, 
    STRUCTURED_NOTE, GENEVA_PRINT_GRP, SEQ_NO, START_DATE, END_DATE, 
    LAST_CHG_USR_ID, LAST_CHG_TMS)
 Values
   (new_OID(), 'Govt', 'ALL', 'ALL', '"NOT LIKE ''' || '%LOAN%' || '''"', 
    'N', 'N', '"NOT IN (''' || 'Resolution Funding Corp' || ''',''' || 'Tennessee Valley Authority' || ''')"', '"NOT IN (''' || 'FARMER MAC' || ''',''' || 'FREDDIE MAC' || ''',''' || 'FANNIE MAE' || ''',''' || 'FEDERAL FARM CREDIT BANK' || ''',''' || 'FEDERAL HOME LOAN BANK' || ''')"', 'GOVT AGENCY', 
    'ALL', 'Agency Debt', 1, '02-09-22', NULL, 
    'GS', SYSDATE());
Insert into FT_T_GPG1
   (GPG1_OID, YKEY, PERPETUAL, COUNTRY, CALC_TYP_DES, 
    INFLATION_LINKED_INDICATOR, CONVERTIBLE, OBLIGOR_NAME, ISSUER, ISSUER_INDUSTRY, 
    STRUCTURED_NOTE, GENEVA_PRINT_GRP, SEQ_NO, START_DATE, END_DATE, 
    LAST_CHG_USR_ID, LAST_CHG_TMS)
 Values
   (new_OID(), 'Corp', 'ALL', 'ALL', '"NOT LIKE ''' || '%LOAN%' || '''"', 
    'N', 'N', '"NOT IN (''' || 'Resolution Funding Corp' || ''',''' || 'Tennessee Valley Authority' || ''')"', 'ALL', 'SPECIAL PURPOSE', 
    'ALL', 'Agency Debt', 2, '02-09-22', NULL, 
    'GS', SYSDATE());
Insert into FT_T_GPG1
   (GPG1_OID, YKEY, PERPETUAL, COUNTRY, CALC_TYP_DES, 
    INFLATION_LINKED_INDICATOR, CONVERTIBLE, OBLIGOR_NAME, ISSUER, ISSUER_INDUSTRY, 
    STRUCTURED_NOTE, GENEVA_PRINT_GRP, SEQ_NO, START_DATE, END_DATE, 
    LAST_CHG_USR_ID, LAST_CHG_TMS)
 Values
   (new_OID(), 'Govt', 'ALL', 'US', '"NOT LIKE ''' || '%LOAN%' || '''"', 
    'N', 'N', '" IN (''' || 'Resolution Funding Corp' || ''',''' || 'Tennessee Valley Authority' || ''')"', 'ALL', 'GOVT AGENCY', 
    'ALL', 'Agency Debt Tax Exempt', 3, '02-09-22', NULL, 
    'GS', SYSDATE());
Insert into FT_T_GPG1
   (GPG1_OID, YKEY, PERPETUAL, COUNTRY, CALC_TYP_DES, 
    INFLATION_LINKED_INDICATOR, CONVERTIBLE, OBLIGOR_NAME, ISSUER, ISSUER_INDUSTRY, 
    STRUCTURED_NOTE, GENEVA_PRINT_GRP, SEQ_NO, START_DATE, END_DATE, 
    LAST_CHG_USR_ID, LAST_CHG_TMS)
 Values
   (new_OID(), 'Corp', 'ALL', 'US', '"NOT LIKE ''' || '%LOAN%' || '''"', 
    'N', 'N', '" IN (''' || 'Resolution Funding Corp' || ''',''' || 'Tennessee Valley Authority' || ''')"', 'ALL', 'SPECIAL PURPOSE', 
    'ALL', 'Agency Debt Tax Exempt', 4, '02-09-22', NULL, 
    'GS', SYSDATE());
Insert into FT_T_GPG1
   (GPG1_OID, YKEY, PERPETUAL, COUNTRY, CALC_TYP_DES, 
    INFLATION_LINKED_INDICATOR, CONVERTIBLE, OBLIGOR_NAME, ISSUER, ISSUER_INDUSTRY, 
    STRUCTURED_NOTE, GENEVA_PRINT_GRP, SEQ_NO, START_DATE, END_DATE, 
    LAST_CHG_USR_ID, LAST_CHG_TMS)
 Values
   (new_OID(), 'Corp', 'ALL', 'ALL', '"NOT LIKE ''' || '%LOAN%' || '''"', 
    'Y', 'ALL', 'ALL', 'ALL', 'ALL', 
    'ALL', 'Corporate Inflation Linked', 5, '02-09-22', NULL, 
    'GS', SYSDATE());
Insert into FT_T_GPG1
   (GPG1_OID, YKEY, PERPETUAL, COUNTRY, CALC_TYP_DES, 
    INFLATION_LINKED_INDICATOR, CONVERTIBLE, OBLIGOR_NAME, ISSUER, ISSUER_INDUSTRY, 
    STRUCTURED_NOTE, GENEVA_PRINT_GRP, SEQ_NO, START_DATE, END_DATE, 
    LAST_CHG_USR_ID, LAST_CHG_TMS)
 Values
   (new_OID(), 'Corp', 'ALL', 'NON-US', '"NOT LIKE ''' || '%LOAN%' || '''"', 
    'N', 'Y', 'ALL', 'ALL', 'ALL', 
    'ALL', 'Foreign Convertible Bond', 6, '02-09-22', NULL, 
    'GS', SYSDATE());
Insert into FT_T_GPG1
   (GPG1_OID, YKEY, PERPETUAL, COUNTRY, CALC_TYP_DES, 
    INFLATION_LINKED_INDICATOR, CONVERTIBLE, OBLIGOR_NAME, ISSUER, ISSUER_INDUSTRY, 
    STRUCTURED_NOTE, GENEVA_PRINT_GRP, SEQ_NO, START_DATE, END_DATE, 
    LAST_CHG_USR_ID, LAST_CHG_TMS)
 Values
   (new_OID(), 'Govt', 'ALL', 'NON-US', '"NOT LIKE ''' || '%LOAN%' || '''"', 
    'N', 'Y', 'ALL', 'ALL', 'ALL', 
    'ALL', 'Foreign Convertible Bond', 7, '02-09-22', NULL, 
    'GS', SYSDATE());
Insert into FT_T_GPG1
   (GPG1_OID, YKEY, PERPETUAL, COUNTRY, CALC_TYP_DES, 
    INFLATION_LINKED_INDICATOR, CONVERTIBLE, OBLIGOR_NAME, ISSUER, ISSUER_INDUSTRY, 
    STRUCTURED_NOTE, GENEVA_PRINT_GRP, SEQ_NO, START_DATE, END_DATE, 
    LAST_CHG_USR_ID, LAST_CHG_TMS)
 Values
   (new_OID(), 'Corp', 'N', 'NON-US', '"NOT LIKE ''' || '%LOAN%' || '''"', 
    'N', 'N', 'ALL', 'ALL', '"NOT IN (''' || 'SPECIAL PURPOSE' || ''',''' || 'SUPRA-NATIONAL' || ''')"', 
    'N', 'Foreign Corporate Debt', 8, '02-09-22', NULL, 
    'GS', SYSDATE());
Insert into FT_T_GPG1
   (GPG1_OID, YKEY, PERPETUAL, COUNTRY, CALC_TYP_DES, 
    INFLATION_LINKED_INDICATOR, CONVERTIBLE, OBLIGOR_NAME, ISSUER, ISSUER_INDUSTRY, 
    STRUCTURED_NOTE, GENEVA_PRINT_GRP, SEQ_NO, START_DATE, END_DATE, 
    LAST_CHG_USR_ID, LAST_CHG_TMS)
 Values
   (new_OID(), 'Govt', 'N', 'NON-US', '"NOT LIKE ''' || '%LOAN%' || '''"', 
    'N', 'N', 'ALL', 'ALL', '"NOT IN (''' || 'GOVT AGENCY' || ''')"', 
    'N', 'Foreign Government Debt', 9, '02-09-22', NULL, 
    'GS', SYSDATE());
Insert into FT_T_GPG1
   (GPG1_OID, YKEY, PERPETUAL, COUNTRY, CALC_TYP_DES, 
    INFLATION_LINKED_INDICATOR, CONVERTIBLE, OBLIGOR_NAME, ISSUER, ISSUER_INDUSTRY, 
    STRUCTURED_NOTE, GENEVA_PRINT_GRP, SEQ_NO, START_DATE, END_DATE, 
    LAST_CHG_USR_ID, LAST_CHG_TMS)
 Values
   (new_OID(), 'Govt', 'ALL', 'NON-US', '"NOT LIKE ''' || '%LOAN%' || '''"', 
    'Y', 'ALL', 'ALL', 'ALL', 'ALL', 
    'ALL', 'Foreign Inflation-Protected Securities', 10, '02-09-22', NULL, 
    'GS', SYSDATE());
Insert into FT_T_GPG1
   (GPG1_OID, YKEY, PERPETUAL, COUNTRY, CALC_TYP_DES, 
    INFLATION_LINKED_INDICATOR, CONVERTIBLE, OBLIGOR_NAME, ISSUER, ISSUER_INDUSTRY, 
    STRUCTURED_NOTE, GENEVA_PRINT_GRP, SEQ_NO, START_DATE, END_DATE, 
    LAST_CHG_USR_ID, LAST_CHG_TMS)
 Values
   (new_OID(), 'Muni', 'N/A', 'NON-US', '"NOT LIKE ''' || '%LOAN%' || '''"', 
    'N/A', 'N/A', 'ALL', 'ALL', 'ALL', 
    'N/A', 'Foreign Municipal Debt', 11, '02-09-22', NULL, 
    'GS', SYSDATE());
Insert into FT_T_GPG1
   (GPG1_OID, YKEY, PERPETUAL, COUNTRY, CALC_TYP_DES, 
    INFLATION_LINKED_INDICATOR, CONVERTIBLE, OBLIGOR_NAME, ISSUER, ISSUER_INDUSTRY, 
    STRUCTURED_NOTE, GENEVA_PRINT_GRP, SEQ_NO, START_DATE, END_DATE, 
    LAST_CHG_USR_ID, LAST_CHG_TMS)
 Values
   (new_OID(), 'Govt', 'Y', 'NON-US', '"NOT LIKE ''' || '%LOAN%' || '''"', 
    'N', 'N', 'ALL', 'ALL', '"NOT IN (''' || 'GOVT AGENCY' || ''')"', 
    'N', 'Foreign Perpetual Debt', 12, '02-09-22', NULL, 
    'GS', SYSDATE());
Insert into FT_T_GPG1
   (GPG1_OID, YKEY, PERPETUAL, COUNTRY, CALC_TYP_DES, 
    INFLATION_LINKED_INDICATOR, CONVERTIBLE, OBLIGOR_NAME, ISSUER, ISSUER_INDUSTRY, 
    STRUCTURED_NOTE, GENEVA_PRINT_GRP, SEQ_NO, START_DATE, END_DATE, 
    LAST_CHG_USR_ID, LAST_CHG_TMS)
 Values
   (new_OID(), 'Corp', 'Y', 'NON-US', '"NOT LIKE ''' || '%LOAN%' || '''"', 
    'N', 'N', 'ALL', 'ALL', '"NOT IN (''' || 'SPECIAL PURPOSE' || ''',''' || 'SUPRA-NATIONAL' || ''')"', 
    'N', 'Foreign Perpetual Debt', 13, '02-09-22', NULL, 
    'GS', SYSDATE());
Insert into FT_T_GPG1
   (GPG1_OID, YKEY, PERPETUAL, COUNTRY, CALC_TYP_DES, 
    INFLATION_LINKED_INDICATOR, CONVERTIBLE, OBLIGOR_NAME, ISSUER, ISSUER_INDUSTRY, 
    STRUCTURED_NOTE, GENEVA_PRINT_GRP, SEQ_NO, START_DATE, END_DATE, 
    LAST_CHG_USR_ID, LAST_CHG_TMS)
 Values
   (new_OID(), 'Govt', 'ALL', 'NON-US', '"NOT LIKE ''' || '%LOAN%' || '''"', 
    'N', 'N', 'ALL', 'ALL', '"NOT IN (''' || 'GOVT AGENCY' || ''')"', 
    'Y', 'Foreign Structured Notes', 14, '02-09-22', NULL, 
    'GS', SYSDATE());
Insert into FT_T_GPG1
   (GPG1_OID, YKEY, PERPETUAL, COUNTRY, CALC_TYP_DES, 
    INFLATION_LINKED_INDICATOR, CONVERTIBLE, OBLIGOR_NAME, ISSUER, ISSUER_INDUSTRY, 
    STRUCTURED_NOTE, GENEVA_PRINT_GRP, SEQ_NO, START_DATE, END_DATE, 
    LAST_CHG_USR_ID, LAST_CHG_TMS)
 Values
   (new_OID(), 'Corp', 'ALL', 'NON-US', '"NOT LIKE ''' || '%LOAN%' || '''"', 
    'N', 'N', 'ALL', 'ALL', '"NOT IN (''' || 'SPECIAL PURPOSE' || ''',''' || 'SUPRA-NATIONAL' || ''')"', 
    'Y', 'Foreign Structured Notes', 15, '02-09-22', NULL, 
    'GS', SYSDATE());
Insert into FT_T_GPG1
   (GPG1_OID, YKEY, PERPETUAL, COUNTRY, CALC_TYP_DES, 
    INFLATION_LINKED_INDICATOR, CONVERTIBLE, OBLIGOR_NAME, ISSUER, ISSUER_INDUSTRY, 
    STRUCTURED_NOTE, GENEVA_PRINT_GRP, SEQ_NO, START_DATE, END_DATE, 
    LAST_CHG_USR_ID, LAST_CHG_TMS)
 Values
   (new_OID(), 'Govt', 'ALL', 'US', '"NOT LIKE ''' || '%LOAN%' || '''"', 
    'N', 'N', '"NOT IN (''' || 'Resolution Funding Corp' || ''',''' || 'Tennessee Valley Authority' || ''')"', '"IN (''' || 'FARMER MAC' || ''',''' || 'FREDDIE MAC' || ''',''' || 'FANNIE MAE' || ''')"', 
	'GOVT AGENCY', 
    'ALL', 'GSE Debt Non-Tax Exempt', 16, '02-09-22', NULL, 
    'GS', SYSDATE());
Insert into FT_T_GPG1
   (GPG1_OID, YKEY, PERPETUAL, COUNTRY, CALC_TYP_DES, 
    INFLATION_LINKED_INDICATOR, CONVERTIBLE, OBLIGOR_NAME, ISSUER, ISSUER_INDUSTRY, 
    STRUCTURED_NOTE, GENEVA_PRINT_GRP, SEQ_NO, START_DATE, END_DATE, 
    LAST_CHG_USR_ID, LAST_CHG_TMS)
 Values
   (new_OID(), 'Govt', 'ALL', 'US', '"NOT LIKE ''' || '%LOAN%' || '''"', 
    'N', 'N', '"NOT IN (''' || 'Resolution Funding Corp' || ''',''' || 'Tennessee Valley Authority' || ''')"', '"IN (''' || 'FEDERAL FARM CREDIT BANK' || ''',''' || 'FEDERAL HOME LOAN BANK' || ''')"', 
	'GOVT AGENCY', 
    'ALL', 'GSE Debt Tax Exempt', 17, '02-09-22', NULL, 
    'GS', SYSDATE());
Insert into FT_T_GPG1
   (GPG1_OID, YKEY, PERPETUAL, COUNTRY, CALC_TYP_DES, 
    INFLATION_LINKED_INDICATOR, CONVERTIBLE, OBLIGOR_NAME, ISSUER, ISSUER_INDUSTRY, 
    STRUCTURED_NOTE, GENEVA_PRINT_GRP, SEQ_NO, START_DATE, END_DATE, 
    LAST_CHG_USR_ID, LAST_CHG_TMS)
 Values
   (new_OID(), 'Corp', 'ALL', 'SNAT', '"NOT LIKE ''' || '%LOAN%' || '''"', 
    'N', 'N', 'ALL', 'ALL', 'SUPRA-NATIONAL',
    'ALL', 'Supranational Debt', 18, '02-09-22', NULL, 
    'GS', SYSDATE());
Insert into FT_T_GPG1
   (GPG1_OID, YKEY, PERPETUAL, COUNTRY, CALC_TYP_DES, 
    INFLATION_LINKED_INDICATOR, CONVERTIBLE, OBLIGOR_NAME, ISSUER, ISSUER_INDUSTRY, 
    STRUCTURED_NOTE, GENEVA_PRINT_GRP, SEQ_NO, START_DATE, END_DATE, 
    LAST_CHG_USR_ID, LAST_CHG_TMS)
 Values
   (new_OID(), 'Corp', 'N/A', 'ALL', '"LIKE ''' || '%LOAN%' || '''"', 
    'N/A', 'N/A', 'ALL', 'ALL', 'ALL',
    'N/A', 'Term Loan', 19, '02-09-22', NULL, 
    'GS', SYSDATE());
Insert into FT_T_GPG1
   (GPG1_OID, YKEY, PERPETUAL, COUNTRY, CALC_TYP_DES, 
    INFLATION_LINKED_INDICATOR, CONVERTIBLE, OBLIGOR_NAME, ISSUER, ISSUER_INDUSTRY, 
    STRUCTURED_NOTE, GENEVA_PRINT_GRP, SEQ_NO, START_DATE, END_DATE, 
    LAST_CHG_USR_ID, LAST_CHG_TMS)
 Values
   (new_OID(), 'Corp', 'ALL', 'US', '"NOT LIKE ''' || '%LOAN%' || '''"', 
    'N', 'Y', 'ALL', 'ALL', 'ALL',
    'ALL', 'US Convertible Bond', 20, '02-09-22', NULL, 
    'GS', SYSDATE());
Insert into FT_T_GPG1
   (GPG1_OID, YKEY, PERPETUAL, COUNTRY, CALC_TYP_DES, 
    INFLATION_LINKED_INDICATOR, CONVERTIBLE, OBLIGOR_NAME, ISSUER, ISSUER_INDUSTRY, 
    STRUCTURED_NOTE, GENEVA_PRINT_GRP, SEQ_NO, START_DATE, END_DATE, 
    LAST_CHG_USR_ID, LAST_CHG_TMS)
 Values
   (new_OID(), 'Govt', 'ALL', 'US', '"NOT LIKE ''' || '%LOAN%' || '''"', 
    'N', 'Y', 'ALL', 'ALL', 'ALL',
    'ALL', 'US Convertible Bond', 21, '02-09-22', NULL, 
    'GS', SYSDATE());
Insert into FT_T_GPG1
   (GPG1_OID, YKEY, PERPETUAL, COUNTRY, CALC_TYP_DES, 
    INFLATION_LINKED_INDICATOR, CONVERTIBLE, OBLIGOR_NAME, ISSUER, ISSUER_INDUSTRY, 
    STRUCTURED_NOTE, GENEVA_PRINT_GRP, SEQ_NO, START_DATE, END_DATE, 
    LAST_CHG_USR_ID, LAST_CHG_TMS)
 Values
   (new_OID(), 'Corp', 'N', 'US', '"NOT LIKE ''' || '%LOAN%' || '''"', 
    'N', 'N', 'ALL', 'ALL', '"NOT IN (''' || 'SPECIAL PURPOSE' || ''',''' || 'SUPRA-NATIONAL' || ''')"',
    'N', 'US Corporate Debt', 22, '02-09-22', NULL, 
    'GS', SYSDATE());
Insert into FT_T_GPG1
   (GPG1_OID, YKEY, PERPETUAL, COUNTRY, CALC_TYP_DES, 
    INFLATION_LINKED_INDICATOR, CONVERTIBLE, OBLIGOR_NAME, ISSUER, ISSUER_INDUSTRY, 
    STRUCTURED_NOTE, GENEVA_PRINT_GRP, SEQ_NO, START_DATE, END_DATE, 
    LAST_CHG_USR_ID, LAST_CHG_TMS)
 Values
   (new_OID(), 'Govt', 'N', 'US', '"NOT LIKE ''' || '%LOAN%' || '''"', 
    'N', 'N', 'ALL', 'ALL', '"NOT IN (''' || 'GOVT AGENCY' || ''')"',
    'N', 'US Government Debt', 23, '02-09-22', NULL, 
    'GS', SYSDATE());
Insert into FT_T_GPG1
   (GPG1_OID, YKEY, PERPETUAL, COUNTRY, CALC_TYP_DES, 
    INFLATION_LINKED_INDICATOR, CONVERTIBLE, OBLIGOR_NAME, ISSUER, ISSUER_INDUSTRY, 
    STRUCTURED_NOTE, GENEVA_PRINT_GRP, SEQ_NO, START_DATE, END_DATE, 
    LAST_CHG_USR_ID, LAST_CHG_TMS)
 Values
   (new_OID(), 'Muni', 'N/A', 'US', '"NOT LIKE ''' || '%LOAN%' || '''"', 
    'N/A', 'N/A', 'ALL', 'ALL', 'ALL',
    'N/A', 'US Municipal Debt', 24, '02-09-22', NULL, 
    'GS', SYSDATE());
Insert into FT_T_GPG1
   (GPG1_OID, YKEY, PERPETUAL, COUNTRY, CALC_TYP_DES, 
    INFLATION_LINKED_INDICATOR, CONVERTIBLE, OBLIGOR_NAME, ISSUER, ISSUER_INDUSTRY, 
    STRUCTURED_NOTE, GENEVA_PRINT_GRP, SEQ_NO, START_DATE, END_DATE, 
    LAST_CHG_USR_ID, LAST_CHG_TMS)
 Values
   (new_OID(), 'Govt', 'Y', 'US', '"NOT LIKE ''' || '%LOAN%' || '''"', 
    'N', 'N', 'ALL', 'ALL', '"NOT IN (''' || 'GOVT AGENCY' || ''')"',
    'N', 'US Perpetual Debt', 25, '02-09-22', NULL, 
    'GS', SYSDATE());
Insert into FT_T_GPG1
   (GPG1_OID, YKEY, PERPETUAL, COUNTRY, CALC_TYP_DES, 
    INFLATION_LINKED_INDICATOR, CONVERTIBLE, OBLIGOR_NAME, ISSUER, ISSUER_INDUSTRY, 
    STRUCTURED_NOTE, GENEVA_PRINT_GRP, SEQ_NO, START_DATE, END_DATE, 
    LAST_CHG_USR_ID, LAST_CHG_TMS)
 Values
   (new_OID(), 'Corp', 'Y', 'US', '"NOT LIKE ''' || '%LOAN%' || '''"', 
    'N', 'N', 'ALL', 'ALL', '"NOT IN (''' || 'SPECIAL PURPOSE' || ''',''' || 'SUPRA-NATIONAL' || ''')"',
    'N', 'US Perpetual Debt', 26, '02-09-22', NULL, 
    'GS', SYSDATE());
Insert into FT_T_GPG1
   (GPG1_OID, YKEY, PERPETUAL, COUNTRY, CALC_TYP_DES, 
    INFLATION_LINKED_INDICATOR, CONVERTIBLE, OBLIGOR_NAME, ISSUER, ISSUER_INDUSTRY, 
    STRUCTURED_NOTE, GENEVA_PRINT_GRP, SEQ_NO, START_DATE, END_DATE, 
    LAST_CHG_USR_ID, LAST_CHG_TMS)
 Values
   (new_OID(), 'Govt', 'ALL', 'US', '"NOT LIKE ''' || '%LOAN%' || '''"', 
    'N', 'N', 'ALL', 'ALL', '"NOT IN (''' || 'GOVT AGENCY' || ''')"',
    'Y', 'US Structured Notes', 27, '02-09-22', NULL, 
    'GS', SYSDATE());
Insert into FT_T_GPG1
   (GPG1_OID, YKEY, PERPETUAL, COUNTRY, CALC_TYP_DES, 
    INFLATION_LINKED_INDICATOR, CONVERTIBLE, OBLIGOR_NAME, ISSUER, ISSUER_INDUSTRY, 
    STRUCTURED_NOTE, GENEVA_PRINT_GRP, SEQ_NO, START_DATE, END_DATE, 
    LAST_CHG_USR_ID, LAST_CHG_TMS)
 Values
   (new_OID(), 'Corp', 'ALL', 'US', '"NOT LIKE ''' || '%LOAN%' || '''"', 
    'N', 'N', 'ALL', 'ALL', '"NOT IN (''' || 'SPECIAL PURPOSE' || ''',''' || 'SUPRA-NATIONAL' || ''')"',
    'Y', 'US Structured Notes', 28, '02-09-22', NULL, 
    'GS', SYSDATE());
Insert into FT_T_GPG1
   (GPG1_OID, YKEY, PERPETUAL, COUNTRY, CALC_TYP_DES, 
    INFLATION_LINKED_INDICATOR, CONVERTIBLE, OBLIGOR_NAME, ISSUER, ISSUER_INDUSTRY, 
    STRUCTURED_NOTE, GENEVA_PRINT_GRP, SEQ_NO, START_DATE, END_DATE, 
    LAST_CHG_USR_ID, LAST_CHG_TMS)
 Values
   (new_OID(), 'Govt', 'N/A', 'US', '"NOT LIKE ''' || '%LOAN%' || '''"', 
    'Y', 'ALL', 'ALL', 'ALL', 'ALL',
    'N/A', 'US Treasury Inflation-Protected Security (TIPS)', 29, '02-09-22', NULL, 
    'GS', SYSDATE());


INSERT INTO ft_t_jbsp
(jbsp_oid, jbdf_oid, parm_nme, parm_req_ind, parm_val_txt, parm_data_typ, start_tms, end_tms, last_chg_tms, last_chg_usr_id, parm_input_out_ind, parm_cde_typ)
SELECT'rn8102sGG3', '8Rqzw>I381', 'CandidateFilter', 'Y', 'UPPER(Equity.InstrumentClassification.P72InsTypLevel1) in (''EQUITY'',''FUNDS'') logicalDelete', NULL, SYSDATE(), NULL, SYSDATE(), 'rakesh.agrawal@point72.com', NULL, NULL FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_jbsp WHERE  jbdf_oid='8Rqzw>I381' and parm_nme='CandidateFilter');

INSERT INTO ft_t_jbsp
(jbsp_oid, jbdf_oid, parm_nme, parm_req_ind, parm_val_txt, parm_data_typ, start_tms, end_tms, last_chg_tms, last_chg_usr_id, parm_input_out_ind, parm_cde_typ)
SELECT'rn8202sGG3', '8Rqzw>I381', 'Criteria', 'Y', '{"joinOperator":"AND","allSubCriterions":[{"criterianField":"Equity.InstrumentClassification.P72InsTypLevel1","operator":"IN","caseSensitive":false,"values":["Equity","Funds"]}],"GSOName":"Equity"}', NULL, SYSDATE(), NULL, SYSDATE(), 'rakesh.agrawal@point72.com', NULL, NULL FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_jbsp WHERE jbdf_oid='8Rqzw>I381' and parm_nme='Criteria');

INSERT INTO ft_t_jbsp
(jbsp_oid, jbdf_oid, parm_nme, parm_req_ind, parm_val_txt, parm_data_typ, start_tms, end_tms, last_chg_tms, last_chg_usr_id, parm_input_out_ind, parm_cde_typ)
SELECT'oK7201c7G6', '8Rqzw>I381', 'GSOName', 'Y', 'Equity', NULL, SYSDATE(), NULL, SYSDATE(), 'nitin.bangar@point72.com', NULL, NULL FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_jbsp WHERE jbdf_oid='8Rqzw>I381' and parm_nme='GSOName');

INSERT INTO ft_t_jbsp
(jbsp_oid, jbdf_oid, parm_nme, parm_req_ind, parm_val_txt, parm_data_typ, start_tms, end_tms, last_chg_tms, last_chg_usr_id, parm_input_out_ind, parm_cde_typ)
SELECT'qP7108M?G2', '8Rqzw>I381', 'ListOfRules', 'Y', 'Base.P72SingaporeCodeRequiredForCountryPrimaryListingSingapore,Base.P72ConsolidatedRic.Kpresent,Base.P72UnderlyingTickerMandatory,Base.P72SharestoADRRatioMandatoryForADRSecurities,Base.P72ISIN12DigitMandatory,BaseP72GICSIndustryRequired,Base.P72RICIsMandatory,Base.P72BBSubSecurityTypeMandatory,Base.P72GICSSubIndustryRequired,Base.P72SEDOLMandatory,Base.P72ConsolidatedRicIsMandatory,Base.P72ChinaShareClass-A,Base.P72_ID_BB_UniqueMandatory,Base.P72ADRUNDCURR_MandatoryforADR,Base.P72ChinaShareCLass-B,Base.P72ISINMandatory,Base.P72GICSIndustryGroup,Base.P72ChinaShareClass,Base.P72BBSecurityTypeMandatory,Base.P72SEDOL7DigitMandatory,Base.P72BICS1,Base.P72CUSIP9DigitMandatory,Base.P72BICS2,Base.P72BICS3,Base_P72GSPostionedIDMandatory,Base.P72ConsolidatedRic.NPresent,Base.P72PrimaryMktOutstandingShares,Base.P72GenevaPrintGroupMandatory,Base.P72CUSIPMandatory,Base.P72InstrumentNameMandatory,Base.P72GICSEquityRequired,Base.P72TickerIsMandatory,Base.P72CountryOfIncorporation,Base.P72GenevaInvestmentTypeMandatory,Base.P72IssuerMandatory,Base.P72RoundLotSizeMandatoryForEquities,Base.P72BloombergTickerMandatory,Base.P72CINSMandatoryForNon-UsEquities,Base.P72CountryOfRiskMandatory,Base.P72MktLstCntryBBTickerExchMandatory,Base.P72PrimaryCountryOfRisk,Equity.P72SharesOutstanding,Base.P72MktLstCountryGeographicUnitIDMandatory', NULL, SYSDATE(), NULL, SYSDATE(), 'rakesh.agrawal@point72.com', NULL, NULL FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_jbsp WHERE jbdf_oid='8Rqzw>I381' and parm_nme='ListOfRules');

INSERT INTO ft_t_jbsp
(jbsp_oid, jbdf_oid, parm_nme, parm_req_ind, parm_val_txt, parm_data_typ, start_tms, end_tms, last_chg_tms, last_chg_usr_id, parm_input_out_ind, parm_cde_typ)
SELECT'Frt0myc7G6', '8Rqzw>I381', 'TableType', 'Y', 'ISSU', NULL, SYSDATE(), NULL, SYSDATE(), 'InternalRole', NULL, NULL FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_jbsp WHERE jbdf_oid='8Rqzw>I381' and parm_nme='TableType');

INSERT INTO ft_t_jbsp
(jbsp_oid, jbdf_oid, parm_nme, parm_req_ind, parm_val_txt, parm_data_typ, start_tms, end_tms, last_chg_tms, last_chg_usr_id, parm_input_out_ind, parm_cde_typ)
SELECT'j937016@G2', '?@6v01w$G1', 'CandidateFilter', 'Y', 'UPPER(Warrants.InstrumentClassification.P72InsTypLevel4) in (''EQUITY RIGHT'',''EQUITY WARRANT'',''ADR'') logicalDelete', NULL, SYSDATE(), NULL, SYSDATE(), 'vinod.narwani@point72.com', NULL, NULL FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_jbsp WHERE jbdf_oid='?@6v01w$G1' and parm_nme='CandidateFilter');

INSERT INTO ft_t_jbsp
(jbsp_oid, jbdf_oid, parm_nme, parm_req_ind, parm_val_txt, parm_data_typ, start_tms, end_tms, last_chg_tms, last_chg_usr_id, parm_input_out_ind, parm_cde_typ)
SELECT'j93A016@G2', '?@6v01w$G1', 'Criteria', 'Y', '{"joinOperator":"AND","allSubCriterions":[{"criterianField":"Warrants.InstrumentClassification.P72InsTypLevel4","operator":"IN","caseSensitive":false,"values":["Equity Right","Equity Warrant","ADR"]}],"GSOName":"Warrants"}', NULL, SYSDATE(), NULL, SYSDATE(), 'vinod.narwani@point72.com', NULL, NULL FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_jbsp WHERE jbdf_oid='?@6v01w$G1' and parm_nme='Criteria');

INSERT INTO ft_t_jbsp
(jbsp_oid, jbdf_oid, parm_nme, parm_req_ind, parm_val_txt, parm_data_typ, start_tms, end_tms, last_chg_tms, last_chg_usr_id, parm_input_out_ind, parm_cde_typ)
SELECT'j936016@G2', '?@6v01w$G1', 'GSOName', 'Y', 'Warrants', NULL, SYSDATE(), NULL, SYSDATE(), 'geetanjali.rajadhyaksha@point72.com', NULL, NULL FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_jbsp WHERE jbdf_oid='?@6v01w$G1' and parm_nme='GSOName');

INSERT INTO ft_t_jbsp
(jbsp_oid, jbdf_oid, parm_nme, parm_req_ind, parm_val_txt, parm_data_typ, start_tms, end_tms, last_chg_tms, last_chg_usr_id, parm_input_out_ind, parm_cde_typ)
SELECT'qk94022.G2', '?@6v01w$G1', 'ListOfRules', 'Y', 'Base.P72SingaporeCodeRequiredForCountryPrimaryListingSingapore,Base.P72ConsolidatedRic.Kpresent,Base.P72UnderlyingTickerMandatory,Base.P72SharestoADRRatioMandatoryForADRSecurities,BaseP72GICSIndustryRequired,Base.P72ISIN12DigitMandatory,Base.P72RICIsMandatory,Base.P72BBSubSecurityTypeMandatory,Base.P72GICSSubIndustryRequired,Base.P72SEDOLMandatory,Warrants.P72OutstandActualSharesOutstanding,Base.P72ChinaShareClass-A,Base.P72ConsolidatedRicIsMandatory,Base.P72_ID_BB_UniqueMandatory,Base.P72ADRUNDCURR_MandatoryforADR,Warrants.P72UnderlyingOutstandingShares,Warrants.P72StrikePrice,Base.P72ChinaShareCLass-B,Base.P72ISINMandatory,Base.P72GICSIndustryGroup,Base.P72ChinaShareClass,Base.P72BBSecurityTypeMandatory,Base.P72BICS1,Base.P72SEDOL7DigitMandatory,Base.P72BICS2,Base.P72CUSIP9DigitMandatory,Base.P72BICS3,Base_P72GSPostionedIDMandatory,Base.P72ConsolidatedRic.NPresent,Base.P72CountryOfRiskMandatory,Base.P72GenevaPrintGroupMandatory,Base.P72CUSIPMandatory,Base.P72InstrumentNameMandatory,Base.P72GICSEquityRequired,Base.P72TickerIsMandatory,Base.P72CountryOfIncorporation,Base.P72GenevaInvestmentTypeMandatory,Base.P72IssuerMandatory,Base.P72RoundLotSizeMandatoryForEquities,Warrants.P72ADRUnderlyingMandatory,Base.P72BloombergTickerMandatory,Warrants.P72ADRRatioOutstandActualShares,Base.P72MktLstCountryGeographicUnitIDMandatory', NULL, SYSDATE(), NULL, SYSDATE(), 'vinod.narwani@point72.com', NULL, NULL FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_jbsp WHERE jbdf_oid='?@6v01w$G1' and parm_nme='ListOfRules');

INSERT INTO ft_t_jbsp
(jbsp_oid, jbdf_oid, parm_nme, parm_req_ind, parm_val_txt, parm_data_typ, start_tms, end_tms, last_chg_tms, last_chg_usr_id, parm_input_out_ind, parm_cde_typ)
SELECT'bQ7qCBM?G2', '?@6v01w$G1', 'TableType', 'Y', 'ISSU', NULL, SYSDATE(), NULL, SYSDATE(), 'InternalRole', NULL, NULL FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_jbsp WHERE jbdf_oid='?@6v01w$G1' and parm_nme='TableType');




INSERT INTO ft_t_jbsp
(jbsp_oid, jbdf_oid, parm_nme, parm_req_ind, parm_val_txt, parm_data_typ, start_tms, end_tms, last_chg_tms, last_chg_usr_id, parm_input_out_ind, parm_cde_typ)
SELECT 'IOs2m<MlO2', '3866E1MlO1', 'CandidateFilter', 'Y', 'UPPER(Base.InstrumentDetails.InstrumentType) in (''REALESTA'',''EQSHR'',''UNIT'',''RIGHTS'',''MISC'',''RECEIPTS'',''LTDPART'',''WARRANTS'',''PFD'') logicalDelete', NULL, SYSDATE(), NULL, SYSDATE(), 'user1', NULL, NULL FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_jbsp WHERE jbdf_oid='3866E1MlO1' and parm_nme='CandidateFilter');

INSERT INTO ft_t_jbsp
(jbsp_oid, jbdf_oid, parm_nme, parm_req_ind, parm_val_txt, parm_data_typ, start_tms, end_tms, last_chg_tms, last_chg_usr_id, parm_input_out_ind, parm_cde_typ)
SELECT 'IOs3m<MlO2', '3866E1MlO1', 'Criteria', 'Y', '{"joinOperator":"AND","allSubCriterions":[{"criterianField":"Base.InstrumentDetails.InstrumentType","operator":"IN","caseSensitive":false,"values":["REALESTA","EQSHR","UNIT","RIGHTS","MISC","RECEIPTS","LTDPART","WARRANTS","PFD"]}],"GSOName":"Base"}', NULL, SYSDATE(), NULL, SYSDATE(), 'user1', NULL, NULL FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_jbsp WHERE jbdf_oid='3866E1MlO1' and parm_nme='Criteria');

INSERT INTO ft_t_jbsp
(jbsp_oid, jbdf_oid, parm_nme, parm_req_ind, parm_val_txt, parm_data_typ, start_tms, end_tms, last_chg_tms, last_chg_usr_id, parm_input_out_ind, parm_cde_typ)
SELECT 'IOs1m<MlO2', '3866E1MlO1', 'GSOName', 'Y', 'Base', NULL, SYSDATE(), NULL, SYSDATE(), 'user1', NULL, NULL FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_jbsp WHERE jbdf_oid='3866E1MlO1' and parm_nme='GSOName');

INSERT INTO ft_t_jbsp
(jbsp_oid, jbdf_oid, parm_nme, parm_req_ind, parm_val_txt, parm_data_typ, start_tms, end_tms, last_chg_tms, last_chg_usr_id, parm_input_out_ind, parm_cde_typ)
SELECT 'B&u3m<cuO2', '3866E1MlO1', 'ListOfRules', 'Y', 'Base.P72InstrumentType4Mandatory', NULL, SYSDATE(), NULL, SYSDATE(), 'user1', NULL, NULL FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_jbsp WHERE jbdf_oid='3866E1MlO1' and parm_nme='ListOfRules');

INSERT INTO ft_t_jbsp
(jbsp_oid, jbdf_oid, parm_nme, parm_req_ind, parm_val_txt, parm_data_typ, start_tms, end_tms, last_chg_tms, last_chg_usr_id, parm_input_out_ind, parm_cde_typ)
SELECT '=000314150', '3866E1MlO1', 'TableType', 'Y', 'ISSU', NULL, SYSDATE(), NULL, SYSDATE(), 'user1', NULL, NULL FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_jbsp WHERE jbdf_oid='3866E1MlO1' and parm_nme='TableType');




INSERT INTO ft_t_jbsp
(jbsp_oid, jbdf_oid, parm_nme, parm_req_ind, parm_val_txt, parm_data_typ, start_tms, end_tms, last_chg_tms, last_chg_usr_id, parm_input_out_ind, parm_cde_typ)
SELECT 'JG8202QgW2', '=002564250', 'CandidateFilter', 'Y', 'UPPER(FixedIncome.InstrumentClassification.P72InsTypLevel1) in (''FIXED INCOME/BOND'') logicalDelete', NULL, SYSDATE(), NULL, SYSDATE(), 'user1', NULL, NULL FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_jbsp WHERE jbdf_oid='=002564250' and parm_nme='CandidateFilter');

INSERT INTO ft_t_jbsp
(jbsp_oid, jbdf_oid, parm_nme, parm_req_ind, parm_val_txt, parm_data_typ, start_tms, end_tms, last_chg_tms, last_chg_usr_id, parm_input_out_ind, parm_cde_typ)
SELECT 'JG8402QgW2', '=002564250', 'Criteria', 'Y', '{"joinOperator":"AND","allSubCriterions":[{"criterianField":"FixedIncome.InstrumentClassification.P72InsTypLevel1","operator":"IN","caseSensitive":false,"values":["Fixed Income/Bond"]}],"GSOName":"FixedIncome"}', NULL, SYSDATE(), NULL, SYSDATE(), 'user1', NULL, NULL FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_jbsp WHERE jbdf_oid='=002564250' and parm_nme='Criteria');

INSERT INTO ft_t_jbsp
(jbsp_oid, jbdf_oid, parm_nme, parm_req_ind, parm_val_txt, parm_data_typ, start_tms, end_tms, last_chg_tms, last_chg_usr_id, parm_input_out_ind, parm_cde_typ)
SELECT 'JG8102QgW2', '=002564250', 'GSOName', 'Y', 'FixedIncome', NULL, SYSDATE(), NULL, SYSDATE(), 'user1', NULL, NULL FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_jbsp WHERE jbdf_oid='=002564250' and parm_nme='GSOName');

INSERT INTO ft_t_jbsp
(jbsp_oid, jbdf_oid, parm_nme, parm_req_ind, parm_val_txt, parm_data_typ, start_tms, end_tms, last_chg_tms, last_chg_usr_id, parm_input_out_ind, parm_cde_typ)
SELECT 'JG8302QgW2', '=002564250', 'ListOfRules', 'Y', 'Base.P72DaysToSettlementMandatory,Base.P72IssueDate7Mandatory,FixedIncome.P72DatedDateMandatory,FixedIncome.P72CouponCurrencyMandatory,Base.P72ISIN12DigitMandatory,Base.P72BBSubSecurityTypeMandatory,Base.P72SEDOLMandatory,FixedIncome.P72PenultimateCouponDateMandatory,Base.P72_ID_BB_UniqueMandatory,FixedIncome.P72RedemptionCurrencyMandatory,FixedIncome.P72CouponRateMandatory,FixedIncome.P72StrippedTypeMandatory,Base.P72BBMarketSectorMandatory,Base.P72ISINMandatory,FixedIncome.P72CoupontypeMandatory,Base.P72GICSIndustryGroup,Base.P72BBSecurityTypeMandatory,Base.P72SEDOL7DigitMandatory,FixedIncome.P72FirstCoupontDateMandatory,Base.P72CUSIP9DigitMandatory,FixedIncome.P72CouponDaycountCodeDescMandatory,FixedIncome.P72OutstandingAmountMandatory,Base.P72CUSIPMandatory,Base.P72GICSEquityRequired,FixedIncome.P72CurrentInstrumentAmountMandatory,FixedIncome.P72RedemptionValueMandatory,Base.P72ParValueMandatory,Base.P72IssuerMandatory,FixedIncome.P72ConversionRatioSharesMandatory,Base.P72MaturityDateMandatory,Base.P72BloombergTickerMandatory', NULL, SYSDATE(), NULL, SYSDATE(), 'user1', NULL, NULL FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_jbsp WHERE jbdf_oid='=002564250' and parm_nme='ListOfRules');

INSERT INTO ft_t_jbsp
(jbsp_oid, jbdf_oid, parm_nme, parm_req_ind, parm_val_txt, parm_data_typ, start_tms, end_tms, last_chg_tms, last_chg_usr_id, parm_input_out_ind, parm_cde_typ)
SELECT '=002564350', '=002564250', 'TableType', 'Y', 'ISSU', NULL, SYSDATE(), NULL, SYSDATE() 'InternalRole', NULL, NULL FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_jbsp WHERE jbdf_oid='=002564250' and parm_nme='TableType');






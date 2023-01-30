INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Accrued Interest/100', 'Accrued Interest', 'en', 'Bonds.InstrumentStatistic.P72INTACC', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Accrued Interest/100' and screen_attr_path_desc = 'Bonds.InstrumentStatistic.P72INTACC');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'BB CFI CODE', 'BB CFI Code', 'en', 'Bonds.InstrumentClassification.P72BBCFICODE', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'BB CFI CODE' and screen_attr_path_desc = 'Bonds.InstrumentClassification.P72BBCFICODE');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'BB Security Description', 'Security Description', 'en', 'Bonds.InstrumentDetails.BBSecurityDescription', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'BB Security Description' and screen_attr_path_desc = 'Bonds.InstrumentDetails.BBSecurityDescription');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'BICS Level 1', 'Industry Sector', 'en', 'Bonds.InstrumentDetails.Issuer.Issuer.IssuerClassification.BICSLevel1', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'BICS Level 1' and screen_attr_path_desc = 'Bonds.InstrumentDetails.Issuer.Issuer.IssuerClassification.BICSLevel1');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'BICS Level 2', 'Industry Group', 'en', 'Bonds.InstrumentDetails.Issuer.Issuer.IssuerClassification.BICSLevel2', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'BICS Level 2' and screen_attr_path_desc = 'Bonds.InstrumentDetails.Issuer.Issuer.IssuerClassification.BICSLevel2');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'BICS Level 3', 'Industry Sub Group', 'en', 'Bonds.InstrumentDetails.Issuer.Issuer.IssuerClassification.BICSLevel3', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'BICS Level 3' and screen_attr_path_desc = 'Bonds.InstrumentDetails.Issuer.Issuer.IssuerClassification.BICSLevel3');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Call Date', 'Called Date', 'en', 'Bonds.BondStatistics.CallDateBondStatistics', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Call Date' and screen_attr_path_desc = 'Bonds.BondStatistics.CallDateBondStatistics');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Called Status Code', 'Called', 'en', 'Bonds.BondFeatures.CallFeatures.CalledStatusCode', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Called Status Code' and screen_attr_path_desc = 'Bonds.BondFeatures.CallFeatures.CalledStatusCode');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Call Frequency Code', 'Call Feature', 'en', 'Bonds.RedemptionDetails.Call.CallDetails.CallFrequencyCode', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Call Frequency Code' and screen_attr_path_desc = 'Bonds.RedemptionDetails.Call.CallDetails.CallFrequencyCode');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Call Price', 'Called Price', 'en', 'Bonds.BondStatistics.CallPrice', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Call Price' and screen_attr_path_desc = 'Bonds.BondStatistics.CallPrice');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Common Number', 'Common code', 'en', 'Bonds.Identifiers.InstrumentLevelIdentifiers.CommonNumber', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Common Number' and screen_attr_path_desc = 'Bonds.Identifiers.InstrumentLevelIdentifiers.CommonNumber');



INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Continuous Discrete Put Indicator', 'Put Discrete', 'en', 'Bonds.BondFeatures.PutFeatures.ContinuousDiscretePutIndicator', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Continuous Discrete Put Indicator' and screen_attr_path_desc = 'Bonds.BondFeatures.PutFeatures.ContinuousDiscretePutIndicator');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Continuously Callable Indicator', 'Call Discrete', 'en', 'Bonds.BondFeatures.CallFeatures.ContinuouslyCallableIndicator', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Continuously Callable Indicator' and screen_attr_path_desc = 'Bonds.BondFeatures.CallFeatures.ContinuouslyCallableIndicator');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Conversion Mandatory/Optional', 'Mandatory Conversion', 'en', 'Bonds.RedemptionDetails.Conversion.PrincipalConversionDetails.ConversionMandatoryOrOptional', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Conversion Mandatory/Optional' and screen_attr_path_desc = 'Bonds.RedemptionDetails.Conversion.PrincipalConversionDetails.ConversionMandatoryOrOptional');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Conversion Start Date', 'Convertible Start Date', 'en', 'Bonds.RedemptionDetails.Conversion.PrincipalConversionDetails.ConversionScheduleStartDate', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Conversion Start Date' and screen_attr_path_desc = 'Bonds.RedemptionDetails.Conversion.PrincipalConversionDetails.ConversionScheduleStartDate');
 INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Country Of Risk Geo Unit', 'Country Of Risk', 'en', 'Bonds.IssuerDetails.P72FINSCountryOfRiskGUID', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Country Of Risk Geo Unit' and screen_attr_path_desc = 'Bonds.IssuerDetails.P72FINSCountryOfRiskGUID');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Coupon Daycount Code', 'Fix To Float Day Count', 'en', 'Bonds.IncomeDetails.CouponForSchedules.CouponDetails.CouponDaycountCodeDesc', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Coupon Daycount Code' and screen_attr_path_desc = 'Bonds.IncomeDetails.CouponForSchedules.CouponDetails.CouponDaycountCodeDesc');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Coupon Description', 'Day Count Description', 'en', 'Bonds.IncomeDetails.CouponForSchedules.CouponDetails.CouponDescription', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Coupon Description' and screen_attr_path_desc = 'Bonds.IncomeDetails.CouponForSchedules.CouponDetails.CouponDescription');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Coupon Frequency Description', 'Pay Day', 'en', 'Bonds.IncomeDetails.CouponForSchedules.CouponDetails.CouponFreqDes', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Coupon Frequency Description' and screen_attr_path_desc = 'Bonds.IncomeDetails.CouponForSchedules.CouponDetails.CouponFreqDes');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Coupon Frequency For Compounded Yield', 'Compound Frequency of Conventional Yield', 'en', 'Bonds.IncomeDetails.CouponForSchedules.CouponDetails.CouponFrequencyForCompoundedYield', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select * from ft_t_uibl where business_label_txt = 'Coupon Frequency For Compounded Yield' and screen_attr_path_desc = 'Bonds.IncomeDetails.CouponForSchedules.CouponDetails.CouponFrequencyForCompoundedYield');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Coupon Frequency Unit Quantity', 'Fix To Float Coupon Frequency', 'en', 'Bonds.IncomeDetails.CouponForSchedules.CouponDetails.CouponFreqUnitQuantity', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Coupon Frequency Unit Quantity' and screen_attr_path_desc = 'Bonds.IncomeDetails.CouponForSchedules.CouponDetails.CouponFreqUnitQuantity');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Coupon Payment Day Code', 'Coupon Convention', 'en', 'Bonds.IncomeDetails.CouponForSchedules.CouponDetails.CouponPaymentDayCode', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Coupon Payment Day Code' and screen_attr_path_desc = 'Bonds.IncomeDetails.CouponForSchedules.CouponDetails.CouponPaymentDayCode');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Coupon Rate Cap', 'Coupon Cap', 'en', 'Bonds.IncomeDetails.CouponForSchedules.CouponDetails.CouponRateCap', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Coupon Rate Cap' and screen_attr_path_desc = 'Bonds.IncomeDetails.CouponForSchedules.CouponDetails.CouponRateCap');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Coupon Rate Floor', 'Coupon Floor', 'en', 'Bonds.IncomeDetails.CouponForSchedules.CouponDetails.CouponRateFloor', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Coupon Rate Floor' and screen_attr_path_desc = 'Bonds.IncomeDetails.CouponForSchedules.CouponDetails.CouponRateFloor');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'CPI At Issue', 'Underlying Base CPI', 'en', 'Bonds.IncomeDetails.CouponForSchedules.CouponDetails.CPIAtIssue', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'CPI At Issue' and screen_attr_path_desc = 'Bonds.IncomeDetails.CouponForSchedules.CouponDetails.CPIAtIssue');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Created On', 'Creation Date/Time', 'en', 'Bonds.InstrumentDetails.CreatedOn', '', 'anastasia.veremeenko@point72.com', NULL, NULL
	where not exists (select '1' from ft_t_uibl where business_label_txt = 'Created On' and screen_attr_path_desc = 'Bonds.InstrumentDetails.CreatedOn');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Currency', 'Coupon Currency', 'en', 'Bonds.BondStatistics.BondStatisticsCurrency', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Currency' and screen_attr_path_desc = 'Bonds.BondStatistics.BondStatisticsCurrency');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Current Coupon Rate', 'Coupon Rate', 'en', 'Bonds.BondStatistics.CurrentCouponRate', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Current Coupon Rate' and screen_attr_path_desc = 'Bonds.BondStatistics.CurrentCouponRate');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Dated Date', 'Interest Accrual Date', 'en', 'Bonds.BondFeatures.DatedDate', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Dated Date' and screen_attr_path_desc = 'Bonds.BondFeatures.DatedDate');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Days To Rate Reset', 'Float Days Prior', 'en', 'Bonds.IncomeDetails.CouponForSchedules.CouponDetails.DaysToRateReset', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Days To Rate Reset' and screen_attr_path_desc = 'Bonds.IncomeDetails.CouponForSchedules.CouponDetails.DaysToRateReset');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Days To Settlement', 'Days To Settle', 'en', 'Bonds.InstrumentDetails.ISSUDaysToSettlement', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Days To Settlement' and screen_attr_path_desc = 'Bonds.InstrumentDetails.ISSUDaysToSettlement');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Denominated Currency', 'Currency', 'en', 'Bonds.InstrumentDetails.PrincipalCurrency', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Denominated Currency' and screen_attr_path_desc = 'Bonds.InstrumentDetails.PrincipalCurrency');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Extendible Indicator', 'Extendible', 'en', 'Bonds.BondFeatures.ExtendibleIndicator', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Extendible Indicator' and screen_attr_path_desc = 'Bonds.BondFeatures.ExtendibleIndicator');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Final Maturity Date', 'Final Maturity', 'en', 'Bonds.InstrumentDetails.FinalMaturity', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Final Maturity Date' and screen_attr_path_desc = 'Bonds.InstrumentDetails.FinalMaturity');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'First Settlement Date', 'First Settle Date', 'en', 'Bonds.P72UnderwriterCharacteristics.P72FirstSettlementDate', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'First Settlement Date' and screen_attr_path_desc = 'Bonds.P72UnderwriterCharacteristics.P72FirstSettlementDate');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Fixed To Float Indicator', 'Fix To Float Indicator', 'en', 'Bonds.InstrumentAssessments.FixedToFloatIndicator', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Fixed To Float Indicator' and screen_attr_path_desc = 'Bonds.InstrumentAssessments.FixedToFloatIndicator');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Float Coupon Indicator', 'Floater Indicator', 'en', 'Bonds.InstrumentStatistic.FloatCouponIndicator', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Float Coupon Indicator' and screen_attr_path_desc = 'Bonds.InstrumentStatistic.FloatCouponIndicator');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Float Multiplier Or Slope', 'Float Bench Multiplier', 'en', 'Bonds.IncomeDetails.CouponForSchedules.CouponDetails.FloatMultiplierOrSlope', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Float Multiplier Or Slope' and screen_attr_path_desc = 'Bonds.IncomeDetails.CouponForSchedules.CouponDetails.FloatMultiplierOrSlope');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Float Spread Or Offset', 'Floater Spread (bp)', 'en', 'Bonds.IncomeDetails.CouponForSchedules.CouponDetails.FloatSpreadOrOffset', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Float Spread Or Offset' and screen_attr_path_desc = 'Bonds.IncomeDetails.CouponForSchedules.CouponDetails.FloatSpreadOrOffset');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Float To Fixed Indicator', 'Float To Fix Indicator', 'en', 'Bonds.InstrumentAssessments.FloatToFixedIndicator', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Float To Fixed Indicator' and screen_attr_path_desc = 'Bonds.InstrumentAssessments.FloatToFixedIndicator');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'FLT PAY HOLIDAY CDR', 'Float Pay Holiday Calendar', 'en', 'Bonds.InstrumentDetails.P72FLTPAYHOLIDAYCDR', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'FLT PAY HOLIDAY CDR' and screen_attr_path_desc = 'Bonds.InstrumentDetails.P72FLTPAYHOLIDAYCDR');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'FLT REFIX HOLIDAY CDR', 'Float Refix Holiday Calendar', 'en', 'Bonds.InstrumentDetails.P72FLTREFIXHOLIDAYCDR', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'FLT REFIX HOLIDAY CDR' and screen_attr_path_desc = 'Bonds.InstrumentDetails.P72FLTREFIXHOLIDAYCDR');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Geographic Unit ID', 'Country Issue ISO', 'en', 'Bonds.CountrysPrimaryExchange.MktLstCountryGeographicUnitID', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Geographic Unit ID' and screen_attr_path_desc = 'Bonds.CountrysPrimaryExchange.MktLstCountryGeographicUnitID');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Index Name', 'Underlying Reference Index', 'en', 'Bonds.IncomeDetails.CouponForSchedules.CouponDetails.IndexName', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Index Name' and screen_attr_path_desc = 'Bonds.IncomeDetails.CouponForSchedules.CouponDetails.IndexName');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Inflation Protected Indicator', 'Inflation Linked Indicator', 'en', 'Bonds.BondFeatures.InflationProtectedIndicator', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Inflation Protected Indicator' and screen_attr_path_desc = 'Bonds.BondFeatures.InflationProtectedIndicator');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Instrument Amount', 'Issue Amount', 'en', 'Bonds.InstrumentAmount.InstrumentAmount', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Instrument Amount' and screen_attr_path_desc = 'Bonds.InstrumentAmount.InstrumentAmount');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Instrument Name', 'Security ID number Description', 'en', 'Bonds.InstrumentDetails.PreferredInstrumentName', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Instrument Name' and screen_attr_path_desc = 'Bonds.InstrumentDetails.PreferredInstrumentName');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Is Day Payer', 'Day Payer Indicator', 'en', 'Bonds.InstrumentStatistic.P72IsDayPayer', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Is Day Payer' and screen_attr_path_desc = 'Bonds.InstrumentStatistic.P72IsDayPayer');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'ISLAMIC', 'Islamic Indicator', 'en', 'Bonds.InstrumentStatistic.P72ISISLAMIC', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'ISLAMIC' and screen_attr_path_desc = 'Bonds.InstrumentStatistic.P72ISISLAMIC');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'ISO CFI', 'CFI Code', 'en', 'Bonds.InstrumentClassification.ISOCFI', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'ISO CFI' and screen_attr_path_desc = 'Bonds.InstrumentClassification.ISOCFI');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Letter Of Credit Indicator', 'Covered Indicator', 'en', 'Bonds.BondFeatures.LetterOfCreditIndicator', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Letter Of Credit Indicator' and screen_attr_path_desc = 'Bonds.BondFeatures.LetterOfCreditIndicator');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Make Whole Call Indicator', 'Make Whole Call', 'en', 'Bonds.BondFeatures.CallFeatures.MakeWholeCallIndicator', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Make Whole Call Indicator' and screen_attr_path_desc = 'Bonds.BondFeatures.CallFeatures.MakeWholeCallIndicator');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Maturity Date', 'Maturity', 'en', 'Bonds.InstrumentDetails.MaturityDate', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Maturity Date' and screen_attr_path_desc = 'Bonds.InstrumentDetails.MaturityDate');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'MIC Code', 'MIC', 'en', 'Bonds.CountrysPrimaryExchange.CountryPrimaryExchange.FinancialMarket.MarketDetails.MICCode', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'MIC Code' and screen_attr_path_desc = 'Bonds.CountrysPrimaryExchange.CountryPrimaryExchange.FinancialMarket.MarketDetails.MICCode');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'MIFID Seniority of Bond', 'Mifid Seniority', 'en', 'Bonds.InstrumentDetails.P72MIFIDSeniorityofBond', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'MIFID Seniority of Bond' and screen_attr_path_desc = 'Bonds.InstrumentDetails.P72MIFIDSeniorityofBond');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Offer Increment Amount', 'Minimum Increment', 'en', 'Bonds.PrimaryOfferDetails.InitialOfferIncrementAmount', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Offer Increment Amount' and screen_attr_path_desc = 'Bonds.PrimaryOfferDetails.InitialOfferIncrementAmount');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Offer Price', 'Issue Price', 'en', 'Bonds.PrimaryOfferDetails.InitialOfferPrice', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Offer Price' and screen_attr_path_desc = 'Bonds.PrimaryOfferDetails.InitialOfferPrice');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'P72 Bloomberg Ticker', 'P72 BBG ticker', 'en', 'Bonds.CountrysPrimaryExchange.MktLstCountryP72BBGTICK', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'P72 Bloomberg Ticker' and screen_attr_path_desc = 'Bonds.CountrysPrimaryExchange.MktLstCountryP72BBGTICK');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'P72Pay-In-Kind End Date', 'Pay In Kind End Date', 'en', 'Bonds.IncomeDetails.PaymentInKind.P72PayInKindEndDate', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'P72Pay-In-Kind End Date' and screen_attr_path_desc = 'Bonds.IncomeDetails.PaymentInKind.P72PayInKindEndDate');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'P72Pay-In-Kind Start Date', 'Pay In Kind Start Date', 'en', 'Bonds.IncomeDetails.PaymentInKind.P72PayInKindStartDate', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'P72Pay-In-Kind Start Date' and screen_attr_path_desc = 'Bonds.IncomeDetails.PaymentInKind.P72PayInKindStartDate');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Par Value', 'Par Amount', 'en', 'Bonds.InstrumentDetails.ParValue', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Par Value' and screen_attr_path_desc = 'Bonds.InstrumentDetails.ParValue');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Pay-In-Kind-Bonds', 'Pay In Kind Bonds', 'en', 'Bonds.InstrumentStatistic.P72PaymentInKindBonds', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Pay-In-Kind-Bonds' and screen_attr_path_desc = 'Bonds.InstrumentStatistic.P72PaymentInKindBonds');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Pay-In-Kind-Coupons', 'Pay In Kind Coupon', 'en', 'Bonds.InstrumentStatistic.P72PaymentInKindCoupons', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Pay-In-Kind-Coupons' and screen_attr_path_desc = 'Bonds.InstrumentStatistic.P72PaymentInKindCoupons');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Previous Coupon Date', 'Prev Coupon Date', 'en', 'Bonds.BondStatistics.PreviousCouponDate', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Previous Coupon Date' and screen_attr_path_desc = 'Bonds.BondStatistics.PreviousCouponDate');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Primary Country Of Risk', 'Country of Risk', 'en', 'Bonds.InstrumentDetails.Issuer.Issuer.ISOGeographicDetails.PrimaryCountryOfRisk', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Primary Country Of Risk' and screen_attr_path_desc = 'Bonds.InstrumentDetails.Issuer.Issuer.ISOGeographicDetails.PrimaryCountryOfRisk');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Put Payable Date Frequency', 'Put Feature', 'en', 'Bonds.RedemptionDetails.Put.PutDetails.PutPayableFrequency', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Put Payable Date Frequency' and screen_attr_path_desc = 'Bonds.RedemptionDetails.Put.PutDetails.PutPayableFrequency');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Put Schedule-Days Notice', 'Put Days Notice', 'en', 'Bonds.InstrumentStatistic.P72PutScheduleDaysNotice', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Put Schedule-Days Notice' and screen_attr_path_desc = 'Bonds.InstrumentStatistic.P72PutScheduleDaysNotice');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Rate Fixing Basis Text', 'Reset Index', 'en', 'Bonds.IncomeDetails.CouponForSchedules.CouponDetails.CouponRateFixingBasisText', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Rate Fixing Basis Text' and screen_attr_path_desc = 'Bonds.IncomeDetails.CouponForSchedules.CouponDetails.CouponRateFixingBasisText');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Redemption Amount (Calculated)', 'Redemp Price', 'en', 'Bonds.BondStatistics.CalculatedRedemptionAmount', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Redemption Amount (Calculated)' and screen_attr_path_desc = 'Bonds.BondStatistics.CalculatedRedemptionAmount');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Redemption Scheme', 'Perpetual Indicator', 'en', 'Bonds.BondFeatures.RedemptionScheme', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Redemption Scheme' and screen_attr_path_desc = 'Bonds.BondFeatures.RedemptionScheme');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Reg 144A Indicator', '144A Flag Indicator', 'en', 'Bonds.AllInstrumentRegulations.AllRegReg144AIndicator', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Reg 144A Indicator' and screen_attr_path_desc = 'Bonds.AllInstrumentRegulations.AllRegReg144AIndicator');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'SEC Date', 'Sec Date', 'en', 'Bonds.InstrumentStatistic.P72SECDate', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'SEC Date' and screen_attr_path_desc = 'Bonds.InstrumentStatistic.P72SECDate');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Sink Unit Type (Amount/Percent)', 'Sink Schedule Amount Type', 'en', 'Bonds.RedemptionDetails.Sink.SinkSchedules.SinkUnitType', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Sink Unit Type (Amount/Percent)' and screen_attr_path_desc = 'Bonds.RedemptionDetails.Sink.SinkSchedules.SinkUnitType');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Soft Call Out Of Type', 'Soft Call Out Of Day Type', 'en', 'Bonds.RedemptionDetails.SoftCall.SoftCallDetails.SoftCallOutOfType', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Soft Call Out Of Type' and screen_attr_path_desc = 'Bonds.RedemptionDetails.SoftCall.SoftCallDetails.SoftCallOutOfType');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Std Secondary Market Settlement Period', 'Standard Secondary Market Settlement Period', 'en', 'Bonds.InstrumentStatistic.P72StandardSecondaryMarketSettlementPeriod', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Std Secondary Market Settlement Period' and screen_attr_path_desc = 'Bonds.InstrumentStatistic.P72StandardSecondaryMarketSettlementPeriod');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Ultimate Underlying Position ID', 'P72 Ultimate Under', 'en', 'Bonds.CountrysPrimaryExchange.MktLstCountryULTUNDLPOSID', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Ultimate Underlying Position ID' and screen_attr_path_desc = 'Bonds.CountrysPrimaryExchange.MktLstCountryULTUNDLPOSID');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Unit Of Measure', 'Is United Traded Indicator', 'en', 'Bonds.InstrumentDetails.UnitOfMeasure', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Unit Of Measure' and screen_attr_path_desc = 'Bonds.InstrumentDetails.UnitOfMeasure');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Yrs To Mty Issue', 'Years from Issue to Maturity', 'en', 'Bonds.InstrumentStatistic.P72YrsToMtyIssue', '', 'anastasia.veremeenko@point72.com', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Yrs To Mty Issue' and screen_attr_path_desc = 'Bonds.InstrumentStatistic.P72YrsToMtyIssue');





--added 11.10.2022 Convertible tab on Bond template


INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Last Conversion Date', 'Convertible Until', 'en', 'Bonds.ConversionRelatedInformation.CVLastConversionDate', '', 'user1', NULL, NULL
	where not exists (select '1' from ft_t_uibl where business_label_txt = 'Last Conversion Date' and screen_attr_path_desc = 'Bonds.ConversionRelatedInformation.CVLastConversionDate');

INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Capital Type Contingent Cnvr Trigger Rte', 'Contingent Conversion Trigger', 'en', 'Bonds.BondFeatures.CapitalTypeContingentCnvrTriggerRte', '', 'user1', NULL, NULL
	where not exists (select '1' from ft_t_uibl where business_label_txt = 'Capital Type Contingent Cnvr Trigger Rte' and screen_attr_path_desc = 'Bonds.BondFeatures.CapitalTypeContingentCnvrTriggerRte');

INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'ISIN', 'Common Stock ISIN Number', 'en', 'Bonds.ConversionRelatedInformation.P72ConversionUnderlyingInstrument.Base.Identifiers.InstrumentLevelIdentifiers.ISIN', '', 'user1', NULL, NULL
	where not exists (select '1' from ft_t_uibl where business_label_txt = 'ISIN' and screen_attr_path_desc = 'Bonds.ConversionRelatedInformation.P72ConversionUnderlyingInstrument.Base.Identifiers.InstrumentLevelIdentifiers.ISIN');


--added 19.10.2022 Security main, Listings tabs on Bond template
--Listings
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'BB Global', 'Primary BB Global', 'en', 'Bonds.CountrysPrimaryExchange.MktLstCountryBBGlobal', '', 'user1', NULL, NULL
	where not exists (select '1' from ft_t_uibl where business_label_txt = 'BB Global' and screen_attr_path_desc = 'Bonds.CountrysPrimaryExchange.MktLstCountryBBGlobal');
	
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Composite BB Global', 'Composite BB Global', 'en', 'Bonds.CountrysPrimaryExchange.MktLstCountryCompositeBBGlobal', '', 'user1', NULL, NULL
  where not exists (select '1' from ft_t_uibl where business_label_txt = 'Composite BB Global' and screen_attr_path_desc = 'Bonds.CountrysPrimaryExchange.MktLstCountryCompositeBBGlobal');
  
--Security Main  
  INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Instrument Amount (Current)', 'Issue Amount', 'en', 'Bonds.BondStatistics.CurrentInstrumentAmount', '', 'user1', NULL, NULL
	where not exists (select '1' from ft_t_uibl where business_label_txt = 'Instrument Amount (Current)' and screen_attr_path_desc = 'Bonds.BondStatistics.CurrentInstrumentAmount');
	
	

--added 20.10.2022
--Fixed Rate Coupon Indicator 

INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Fixed Rate Coupon Indicator', 'Fixed Coupon Indicator', 'en', 'Bonds.InstrumentAssessments.FixedRateCouponIndicator', '', 'user1', NULL, NULL
	where not exists (select '1' from ft_t_uibl where business_label_txt = 'Fixed Rate Coupon Indicator' and screen_attr_path_desc = 'Bonds.InstrumentAssessments.FixedRateCouponIndicator');


INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Previous Factor', 'Principal Factor', 'en', 'Bonds.BondStatistics.PreviousFactor', '', 'user1', NULL, NULL
	where not exists (select '1' from ft_t_uibl where business_label_txt = 'Previous Factor' and screen_attr_path_desc = 'Bonds.BondStatistics.PreviousFactor');
	
	
-- added 28.10.2022

INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Day Payer Frequency', 'Coupon Frequency Days', 'en', 'Bonds.BondFeatures.DayPayerFrequency', '', 'user1', NULL, NULL
	where not exists (select '1' from ft_t_uibl where business_label_txt = 'Day Payer Frequency' and screen_attr_path_desc = 'Bonds.BondFeatures.DayPayerFrequency');


--added 08.11.2022

INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'BB Composite Ticker', 'Common Stock Ticker Exchange', 'en', 'Bonds.RelatedInstrument.RelatedInstrumentDetails.UnderlyingCountryPrimaryForFixedIncome.CountryPrimaryPublish.CountryPrimaryPublishDetails.P72CountryPrimaryBBCompositeTicker', '', 'user1', NULL, NULL
	where not exists (select '1' from ft_t_uibl where business_label_txt = 'BB Composite Ticker' and screen_attr_path_desc = 'Bonds.RelatedInstrument.RelatedInstrumentDetails.UnderlyingCountryPrimaryForFixedIncome.CountryPrimaryPublish.CountryPrimaryPublishDetails.P72CountryPrimaryBBCompositeTicker');


UPDATE ft_t_uibl
SET business_label_txt='Pay-In-Kind-Coupons'
	, business_label_nme='Pay In Kind Coupon'
	, cntry_cde='en'
	, screen_attr_path_desc='Bonds.InstrumentStatistic.P72PaymentInKindCoupons'
	, business_label_desc=''
	, created_usr_id='user1'
	, prod_nme=NULL
	, created_tms=NULL
where business_label_txt = 'Pay-In-Kind-Coupons' and screen_attr_path_desc = 'Bonds.InstrumentStatistic.P72PaymentInKindCoupons';	
	
UPDATE ft_t_uibl
SET business_label_txt='Composite BB Global'
	, business_label_nme='Composite BB Global'
	, cntry_cde='en'
	, screen_attr_path_desc='Bonds.CountrysPrimaryExchange.MktLstCountryCompositeBBGlobal'
	, business_label_desc=''
	, created_usr_id='user1'
	, prod_nme=NULL
	, created_tms=NULL
where business_label_txt = 'Composite BB Global' and screen_attr_path_desc = 'Bonds.CountrysPrimaryExchange.MktLstCountryCompositeBBGlobal';

UPDATE ft_t_uibl
SET business_label_txt='BB Global'
	, business_label_nme='Primary BB Global'
	, cntry_cde='en'
	, screen_attr_path_desc='Bonds.CountrysPrimaryExchange.MktLstCountryBBGlobal'
	, business_label_desc=''
	, created_usr_id='user1'
	, prod_nme=NULL
	, created_tms=NULL
where business_label_txt = 'BB Global' and screen_attr_path_desc = 'Bonds.CountrysPrimaryExchange.MktLstCountryBBGlobal';


UPDATE ft_t_uibl
SET business_label_txt='Unit Of Measure'
	, business_label_nme='Is Unit Traded Indicator', cntry_cde='en'
	, screen_attr_path_desc='Bonds.InstrumentDetails.UnitOfMeasure'
	, business_label_desc=''
	, created_usr_id='user1'
	, prod_nme=NULL, created_tms=NULL
where business_label_txt = 'Unit Of Measure' and screen_attr_path_desc = 'Bonds.InstrumentDetails.UnitOfMeasure';


UPDATE ft_t_uibl
SET business_label_txt='Seniority'
	, business_label_nme='CDS Debt Type'
	, cntry_cde='en'
	, screen_attr_path_desc='Bonds.BondFeatures.Seniority'
	, business_label_desc=''
	, created_usr_id='user1'
	, prod_nme=NULL
	, created_tms=NULL
where business_label_txt = 'Seniority' and screen_attr_path_desc = 'Bonds.BondFeatures.Seniority';
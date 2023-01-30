delete   from FT_T_UIBL where created_usr_id in ('nitin.bangar@point72.com','nick.sekouris@point72.com');
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
VALUES('Notification Status', 'Status', 'en', 'InstrumentException.ExceptionDetail.NotificationStatus', NULL, 'nitin.bangar@point72.com', NULL, NULL);
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
VALUES('User Name', 'Assigned To', 'en', 'InstrumentException.ExceptionDetail.UserName', NULL, 'nitin.bangar@point72.com', NULL, NULL);
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
VALUES('Transaction Comment Text', 'Comments', 'en', 'InstrumentException.ExceptionDetail.TransactionCommentText', NULL, 'nitin.bangar@point72.com', NULL, NULL);
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
VALUES('Notification Creation DateTime', 'Datetime', 'en', 'InstrumentException.ExceptionDetail.NotificationCreationDate', NULL, 'nitin.bangar@point72.com', NULL, NULL);
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
VALUES('Latest Notification DateTime', 'Datetime', 'en', 'InstrumentException.ExceptionDetail.LatestNotificationDate', NULL, 'nitin.bangar@point72.com', NULL, NULL);
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
VALUES('Country Of Domicile', 'Country of Domicile (Issuer)', 'en', 'Issuer.ISOGeographicDetails.CountryOfDomicile', '', 'nick.sekouris@point72.com', NULL, NULL);
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
VALUES('Successful Tasks Count', 'Success', 'en', 'JobDetailInformation.JobDetails.SuccessfulTasksCount', '', 'nick.sekouris@point72.com', NULL, NULL);
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
VALUES('Filtered Task Count', 'Filtered', 'en', 'JobDetailInformation.JobDetails.FilteredTaskCount', '', 'nick.sekouris@point72.com', NULL, NULL);
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
VALUES('Partially Failed', 'Partial', 'en', 'JobDetailInformation.JobDetails.PartiallyFailed', '', 'nick.sekouris@point72.com', NULL, NULL);
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
VALUES('Trading Floor Location', 'Is SETS', 'en', 'Equity.CountrysPrimaryExchange.CountrysLocalExchange.MktLstLocalTradingFloorLocation', '', 'nick.sekouris@point72.com', NULL, NULL);
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
VALUES('Trading Floor Location', 'Is SETS', 'en', 'Equity.CountrysPrimaryExchange.MktLstCountryTradingFloorLocation', '', 'nick.sekouris@point72.com', NULL, NULL);
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
VALUES('Geographic Unit ID', 'Country ISO', 'en', 'Equity.CountrysPrimaryExchange.CountrysLocalExchange.MktLstLocalGeographicUnitID', '', 'nick.sekouris@point72.com', NULL, NULL);
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
VALUES('P72 Bloomberg Ticker', 'Point72 BBG Ticker', 'en', 'Equity.CountrysPrimaryExchange.MktLstCountryP72BBGTICK', '', 'nick.sekouris@point72.com', NULL, NULL);
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
VALUES('Composite BB Global', 'BB Global', 'en', 'Equity.CountrysPrimaryExchange.MktLstCountryCompositeBBGlobal', '', 'nick.sekouris@point72.com', NULL, NULL);
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
VALUES('Geographic Unit ID', 'Country_ISO', 'en', 'Equity.CountrysPrimaryExchange.MktLstCountryGeographicUnitID', '', 'nick.sekouris@point72.com', NULL, NULL);
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
VALUES('BB Composite Ticker', 'Ticker and Exchange Code', 'en', 'Equity.CountrysPrimaryExchange.MktLstCountryBBCompositeTicker', '', 'nick.sekouris@point72.com', NULL, NULL);
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
VALUES('Ticker', 'BBG Ticker', 'en', 'EquityBase.CountrysPrimaryExchange.MktLstCountryTicker', '', 'nick.sekouris@point72.com', NULL, NULL);
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
VALUES('Ticker', 'BBG Ticker', 'en', 'EquityBase.CountrysPrimaryExchange.CountrysLocalExchange.MktLstLocalTicker', '', 'nick.sekouris@point72.com', NULL, NULL);
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
VALUES('Ticker', 'BBG Ticker', 'en', 'Equity.CountrysPrimaryExchange.MktLstCountryTicker', '', 'nick.sekouris@point72.com', NULL, NULL);
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
VALUES('Ticker', 'BBG Ticker', 'en', 'Equity.CountrysPrimaryExchange.CountrysLocalExchange.MktLstLocalTicker', '', 'nick.sekouris@point72.com', NULL, NULL);
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
VALUES('Ticker', 'BBG Ticker', 'en', 'Warrants.CountrysPrimaryExchange.MktLstCountryTicker', '', 'nick.sekouris@point72.com', NULL, NULL);
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
VALUES('BB Composite Ticker', 'Ticker and Exchange Code', 'en', 'Warrants.CountrysPrimaryExchange.MktLstCountryBBCompositeTicker', '', 'nick.sekouris@point72.com', NULL, NULL);
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
VALUES('Composite BB Global', 'BB Global Cmp', 'en', 'Warrants.CountrysPrimaryExchange.MktLstCountryCompositeBBGlobal', '', 'nick.sekouris@point72.com', NULL, NULL);
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
VALUES('Ticker', 'BBG Ticker', 'en', 'Warrants.CountrysPrimaryExchange.CountrysLocalExchange.MktLstLocalTicker', '', 'nick.sekouris@point72.com', NULL, NULL);



update ft_T_uibl
set business_label_nme='Composite BB Global'
where screen_attr_path_desc in('Equity.CountrysPrimaryExchange.MktLstCountryCompositeBBGlobal','Warrants.CountrysPrimaryExchange.MktLstCountryCompositeBBGlobal')

INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'BB Global', 'Primary BB Global', 'en', 'Equity.CountrysPrimaryExchange.MktLstCountryBBGlobal', '', 'kailas.wagh@point72.com', NULL, NULL from DUAL 
where not exists (select 'X' from FT_T_UIBL where business_label_txt ='BB Global' and screen_attr_path_desc = 'Equity.CountrysPrimaryExchange.MktLstCountryBBGlobal' );

INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'BB Global', 'Primary BB Global', 'en', 'Warrants.CountrysPrimaryExchange.MktLstCountryBBGlobal', '', 'kailas.wagh@point72.com', NULL, NULL from DUAL 
where not exists (select 'X' from FT_T_UIBL where business_label_txt ='BB Global' and screen_attr_path_desc = 'Warrants.CountrysPrimaryExchange.MktLstCountryBBGlobal' );

commit;
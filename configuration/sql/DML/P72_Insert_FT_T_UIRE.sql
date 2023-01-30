--Read-only for administrators
INSERT INTO ft_t_uire
(uire_oid, srle_oid, created_usr_id, created_tms, entlmnt_typ, entlmnt_new_ind, entlmnt_upd_ind, entlmnt_hide_ind, entlmnt_read_only_ind, bus_entity_data_nme, entlmnt_uniq_txt, entlmnt_delete_ind, entlmnt_new_data_grp_ind)
select new_oid(), 'ADMINRLE', 'anastasia.veremeenko@point72.com', '2022-09-21 14:03:55.000', 'ATTRIBUTE', 'N', 'N', 'N', 'N', 'Bonds', 'Bonds.InstrumentDetails.MaturityDate', 'N', NULL
	where not exists (select '1' from ft_t_uire where bus_entity_data_nme = 'Bonds' and entlmnt_uniq_txt = 'Bonds.InstrumentDetails.MaturityDate' and srle_oid = 'ADMINRLE' and entlmnt_read_only_ind = 'N');
INSERT INTO ft_t_uire
(uire_oid, srle_oid, created_usr_id, created_tms, entlmnt_typ, entlmnt_new_ind, entlmnt_upd_ind, entlmnt_hide_ind, entlmnt_read_only_ind, bus_entity_data_nme, entlmnt_uniq_txt, entlmnt_delete_ind, entlmnt_new_data_grp_ind)
select new_oid(), 'ADMINRLE', 'anastasia.veremeenko@point72.com', '2022-09-21 14:03:55.000', 'ATTRIBUTE', 'N', 'N', 'N', 'N', 'Bonds', 'Bonds.InstrumentDetails.Issuer.Issuer.ISOGeographicDetails.CountryOfDomicile', 'N', NULL
	where not exists (select '1' from ft_t_uire where bus_entity_data_nme = 'Bonds' and entlmnt_uniq_txt = 'Bonds.InstrumentDetails.Issuer.Issuer.ISOGeographicDetails.CountryOfDomicile' and srle_oid = 'ADMINRLE'and entlmnt_read_only_ind = 'N');
INSERT INTO ft_t_uire
(uire_oid, srle_oid, created_usr_id, created_tms, entlmnt_typ, entlmnt_new_ind, entlmnt_upd_ind, entlmnt_hide_ind, entlmnt_read_only_ind, bus_entity_data_nme, entlmnt_uniq_txt, entlmnt_delete_ind, entlmnt_new_data_grp_ind)
select new_oid(), 'ADMINRLE', 'anastasia.veremeenko@point72.com', '2022-09-21 14:03:55.000', 'ATTRIBUTE', 'N', 'N', 'N', 'N', 'Bonds', 'Bonds.InstrumentDetails.CreatedOn', 'N', null
	where not exists (select '1' from ft_t_uire where bus_entity_data_nme = 'Bonds' and entlmnt_uniq_txt = 'Bonds.InstrumentDetails.CreatedOn' and srle_oid = 'ADMINRLE' and entlmnt_read_only_ind = 'N');
INSERT INTO ft_t_uire
(uire_oid, srle_oid, created_usr_id, created_tms, entlmnt_typ, entlmnt_new_ind, entlmnt_upd_ind, entlmnt_hide_ind, entlmnt_read_only_ind, bus_entity_data_nme, entlmnt_uniq_txt, entlmnt_delete_ind, entlmnt_new_data_grp_ind)
select new_oid(), 'ADMINRLE', 'anastasia.veremeenko@point72.com', '2022-09-21 14:03:59.000', 'ATTRIBUTE', 'N', 'N', 'N', 'N', 'Bonds', 'Bonds.IssuerDetails.P72FINSCountryOfRiskGUID', 'N', null
	where not exists (select '1' from ft_t_uire where bus_entity_data_nme = 'Bonds' and entlmnt_uniq_txt = 'Bonds.IssuerDetails.P72FINSCountryOfRiskGUID' and srle_oid = 'ADMINRLE' and entlmnt_read_only_ind = 'N');
INSERT INTO ft_t_uire
(uire_oid, srle_oid, created_usr_id, created_tms, entlmnt_typ, entlmnt_new_ind, entlmnt_upd_ind, entlmnt_hide_ind, entlmnt_read_only_ind, bus_entity_data_nme, entlmnt_uniq_txt, entlmnt_delete_ind, entlmnt_new_data_grp_ind)
select new_oid(), 'ADMINRLE', 'anastasia.veremeenko@point72.com', '2022-09-21 14:03:59.000', 'ATTRIBUTE', 'N', 'N', 'N', 'N', 'Bonds', 'Bonds.BondFeatures.CouponType', 'N', null
	where not exists (select '1' from ft_t_uire where bus_entity_data_nme = 'Bonds' and entlmnt_uniq_txt = 'Bonds.BondFeatures.CouponType' and srle_oid = 'ADMINRLE');
INSERT INTO ft_t_uire
(uire_oid, srle_oid, created_usr_id, created_tms, entlmnt_typ, entlmnt_new_ind, entlmnt_upd_ind, entlmnt_hide_ind, entlmnt_read_only_ind, bus_entity_data_nme, entlmnt_uniq_txt, entlmnt_delete_ind, entlmnt_new_data_grp_ind)
select new_oid(), 'ADMINRLE', 'anastasia.veremeenko@point72.com', '2022-09-21 14:03:59.000', 'ATTRIBUTE', 'N', 'N', 'N', 'N', 'Bonds', 'Bonds.BondStatistics.CurrentCouponRate', 'N', NULL 
	where not exists (select '1' from ft_t_uire where bus_entity_data_nme = 'Bonds' and entlmnt_uniq_txt = 'Bonds.BondStatistics.CurrentCouponRate' and srle_oid = 'ADMINRLE' and entlmnt_read_only_ind = 'N');
INSERT INTO ft_t_uire
(uire_oid, srle_oid, created_usr_id, created_tms, entlmnt_typ, entlmnt_new_ind, entlmnt_upd_ind, entlmnt_hide_ind, entlmnt_read_only_ind, bus_entity_data_nme, entlmnt_uniq_txt, entlmnt_delete_ind, entlmnt_new_data_grp_ind)
select new_oid(), 'ADMINRLE', 'anastasia.veremeenko@point72.com', '2022-09-21 14:04:00.000', 'ATTRIBUTE', 'N', 'N', 'N', 'N', 'Bonds', 'Bonds.IncomeDetails.CouponForSchedules.CouponDetails.CouponFreqUnitQuantity', 'N', NULL 
	where not exists (select '1' from ft_t_uire where bus_entity_data_nme = 'Bonds' and entlmnt_uniq_txt = 'Bonds.IncomeDetails.CouponForSchedules.CouponDetails.CouponFreqUnitQuantity' and srle_oid = 'ADMINRLE' and entlmnt_read_only_ind = 'N');
INSERT INTO ft_t_uire
(uire_oid, srle_oid, created_usr_id, created_tms, entlmnt_typ, entlmnt_new_ind, entlmnt_upd_ind, entlmnt_hide_ind, entlmnt_read_only_ind, bus_entity_data_nme, entlmnt_uniq_txt, entlmnt_delete_ind, entlmnt_new_data_grp_ind)
select new_oid(), 'ADMINRLE', 'anastasia.veremeenko@point72.com', '2022-09-21 14:04:00.000', 'ATTRIBUTE', 'N', 'N', 'N', 'N', 'Bonds', 'Bonds.IncomeDetails.DividendForSchedules.DividendDetails.DayCount', 'N', NULL 
	where not exists (select '1' from ft_t_uire where bus_entity_data_nme = 'Bonds' and entlmnt_uniq_txt = 'Bonds.IncomeDetails.DividendForSchedules.DividendDetails.DayCount' and srle_oid = 'ADMINRLE' and entlmnt_read_only_ind = 'N');



--Read-only for users
INSERT INTO ft_t_uire
(uire_oid, srle_oid, created_usr_id, created_tms, entlmnt_typ, entlmnt_new_ind, entlmnt_upd_ind, entlmnt_hide_ind, entlmnt_read_only_ind, bus_entity_data_nme, entlmnt_uniq_txt, entlmnt_delete_ind, entlmnt_new_data_grp_ind)
select new_oid (), 'USERRLE', 'anastasia.veremeenko@point72.com', '2022-09-21 14:03:55.000', 'ATTRIBUTE', 'N', 'N', 'N', 'N', 'Bonds', 'Bonds.InstrumentDetails.MaturityDate', 'N', NULL
	where not exists (select '1' from ft_t_uire where bus_entity_data_nme = 'Bonds' and entlmnt_uniq_txt = 'Bonds.InstrumentDetails.MaturityDate' and srle_oid = 'USERRLE' and entlmnt_read_only_ind = 'N');
INSERT INTO ft_t_uire
(uire_oid, srle_oid, created_usr_id, created_tms, entlmnt_typ, entlmnt_new_ind, entlmnt_upd_ind, entlmnt_hide_ind, entlmnt_read_only_ind, bus_entity_data_nme, entlmnt_uniq_txt, entlmnt_delete_ind, entlmnt_new_data_grp_ind)
select new_oid(), 'USERRLE', 'anastasia.veremeenko@point72.com', '2022-09-21 14:03:55.000', 'ATTRIBUTE', 'N', 'N', 'N', 'N', 'Bonds', 'Bonds.InstrumentDetails.Issuer.Issuer.ISOGeographicDetails.CountryOfDomicile', 'N', NULL
	where not exists (select '1' from ft_t_uire where bus_entity_data_nme = 'Bonds' and entlmnt_uniq_txt = 'Bonds.InstrumentDetails.Issuer.Issuer.ISOGeographicDetails.CountryOfDomicile' and srle_oid = 'USERRLE' and entlmnt_read_only_ind = 'N');
INSERT INTO ft_t_uire
(uire_oid, srle_oid, created_usr_id, created_tms, entlmnt_typ, entlmnt_new_ind, entlmnt_upd_ind, entlmnt_hide_ind, entlmnt_read_only_ind, bus_entity_data_nme, entlmnt_uniq_txt, entlmnt_delete_ind, entlmnt_new_data_grp_ind)
select new_oid(), 'USERRLE', 'anastasia.veremeenko@point72.com', '2022-09-21 14:03:55.000', 'ATTRIBUTE', 'N', 'N', 'N', 'N', 'Bonds', 'Bonds.InstrumentDetails.CreatedOn', 'N', null
	where not exists (select '1' from ft_t_uire where bus_entity_data_nme = 'Bonds' and entlmnt_uniq_txt = 'Bonds.InstrumentDetails.CreatedOn' and srle_oid = 'USERRLE' and entlmnt_read_only_ind = 'N');
INSERT INTO ft_t_uire
(uire_oid, srle_oid, created_usr_id, created_tms, entlmnt_typ, entlmnt_new_ind, entlmnt_upd_ind, entlmnt_hide_ind, entlmnt_read_only_ind, bus_entity_data_nme, entlmnt_uniq_txt, entlmnt_delete_ind, entlmnt_new_data_grp_ind)
select new_oid(), 'USERRLE', 'anastasia.veremeenko@point72.com', '2022-09-21 14:03:59.000', 'ATTRIBUTE', 'N', 'N', 'N', 'N', 'Bonds', 'Bonds.IssuerDetails.P72FINSCountryOfRiskGUID', 'N', null
	where not exists (select '1' from ft_t_uire where bus_entity_data_nme = 'Bonds' and entlmnt_uniq_txt = 'Bonds.IssuerDetails.P72FINSCountryOfRiskGUID' and srle_oid = 'USERRLE' and entlmnt_read_only_ind = 'N');
INSERT INTO ft_t_uire
(uire_oid, srle_oid, created_usr_id, created_tms, entlmnt_typ, entlmnt_new_ind, entlmnt_upd_ind, entlmnt_hide_ind, entlmnt_read_only_ind, bus_entity_data_nme, entlmnt_uniq_txt, entlmnt_delete_ind, entlmnt_new_data_grp_ind)
select new_oid(), 'USERRLE', 'anastasia.veremeenko@point72.com', '2022-09-21 14:03:59.000', 'ATTRIBUTE', 'N', 'N', 'N', 'N', 'Bonds', 'Bonds.BondFeatures.CouponType', 'N', null
	where not exists (select '1' from ft_t_uire where bus_entity_data_nme = 'Bonds' and entlmnt_uniq_txt = 'Bonds.BondFeatures.CouponType' and srle_oid = 'USERRLE' and entlmnt_read_only_ind = 'N');
INSERT INTO ft_t_uire
(uire_oid, srle_oid, created_usr_id, created_tms, entlmnt_typ, entlmnt_new_ind, entlmnt_upd_ind, entlmnt_hide_ind, entlmnt_read_only_ind, bus_entity_data_nme, entlmnt_uniq_txt, entlmnt_delete_ind, entlmnt_new_data_grp_ind)
select new_oid(), 'USERRLE', 'anastasia.veremeenko@point72.com', '2022-09-21 14:03:59.000', 'ATTRIBUTE', 'N', 'N', 'N', 'N', 'Bonds', 'Bonds.BondStatistics.CurrentCouponRate', 'N', NULL 
	where not exists (select '1' from ft_t_uire where bus_entity_data_nme = 'Bonds' and entlmnt_uniq_txt = 'Bonds.BondStatistics.CurrentCouponRate' and srle_oid = 'USERRLE' and entlmnt_read_only_ind = 'N');
INSERT INTO ft_t_uire
(uire_oid, srle_oid, created_usr_id, created_tms, entlmnt_typ, entlmnt_new_ind, entlmnt_upd_ind, entlmnt_hide_ind, entlmnt_read_only_ind, bus_entity_data_nme, entlmnt_uniq_txt, entlmnt_delete_ind, entlmnt_new_data_grp_ind)
select new_oid(), 'USERRLE', 'anastasia.veremeenko@point72.com', '2022-09-21 14:04:00.000', 'ATTRIBUTE', 'N', 'N', 'N', 'N', 'Bonds', 'Bonds.IncomeDetails.CouponForSchedules.CouponDetails.CouponFreqUnitQuantity', 'N', NULL 
	where not exists (select '1' from ft_t_uire where bus_entity_data_nme = 'Bonds' and entlmnt_uniq_txt = 'Bonds.IncomeDetails.CouponForSchedules.CouponDetails.CouponFreqUnitQuantity' and srle_oid = 'USERRLE' and entlmnt_read_only_ind = 'N');
INSERT INTO ft_t_uire
(uire_oid, srle_oid, created_usr_id, created_tms, entlmnt_typ, entlmnt_new_ind, entlmnt_upd_ind, entlmnt_hide_ind, entlmnt_read_only_ind, bus_entity_data_nme, entlmnt_uniq_txt, entlmnt_delete_ind, entlmnt_new_data_grp_ind)
select new_oid(), 'USERRLE', 'anastasia.veremeenko@point72.com', '2022-09-21 14:04:00.000', 'ATTRIBUTE', 'N', 'N', 'N', 'N', 'Bonds', 'Bonds.IncomeDetails.DividendForSchedules.DividendDetails.DayCount', 'N', NULL 
	where not exists (select '1' from ft_t_uire where bus_entity_data_nme = 'Bonds' and entlmnt_uniq_txt = 'Bonds.IncomeDetails.DividendForSchedules.DividendDetails.DayCount' and srle_oid = 'USERRLE' and entlmnt_read_only_ind = 'N');


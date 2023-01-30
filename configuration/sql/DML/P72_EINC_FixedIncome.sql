-- 20220609 PSG-NS
-- EINC script to cover 'NA' for CONVERTIBLE
-- execute in GC and VDDB

INSERT INTO ft_t_einc
(einc_oid, clsf_oid, cl_value, data_stat_typ, data_src_id, ext_cl_value, start_tms, end_tms, last_chg_tms, last_chg_usr_id, ext_clsf_nme, ext_clsf_desc, indus_cl_set_id, nls_cde)
select new_oid(), 'INSTYPG113', 'Agency Bond', NULL, 'BB', 'NL-N-NA-GA-ALL-NA', '2021-12-02 00:00:00.000', NULL, '2021-12-03 14:42:34.000', 'GS:PSG:P72', 'Agency Bond', 'Agency Bond', 'INSTYPGR', 'ENGLISH'
 where not exists (select 1 from ft_t_einc where clsf_oid='INSTYPG113' and ext_cl_value='NL-N-NA-GA-ALL-NA' and data_src_id='BB');

INSERT INTO ft_t_einc
(einc_oid, clsf_oid, cl_value, data_stat_typ, data_src_id, ext_cl_value, start_tms, end_tms, last_chg_tms, last_chg_usr_id, ext_clsf_nme, ext_clsf_desc, indus_cl_set_id, nls_cde)
select new_oid(), 'INSTYPG115', 'Corporate Bond', NULL, 'BB', 'NL-N-NA-NSN-ALL-NA', '2021-12-02 00:00:00.000', NULL, '2021-12-03 14:42:34.000', 'GS:PSG:P72', 'Corporate Bond', 'Corporate Bond', 'INSTYPGR', 'ENGLISH'
 where not exists (select 1 from ft_t_einc where clsf_oid='INSTYPG115' and ext_cl_value='NL-N-NA-NSN-ALL-NA' and data_src_id='BB');

INSERT INTO ft_t_einc
(einc_oid, clsf_oid, cl_value, data_stat_typ, data_src_id, ext_cl_value, start_tms, end_tms, last_chg_tms, last_chg_usr_id, ext_clsf_nme, ext_clsf_desc, indus_cl_set_id, nls_cde)
select new_oid(), 'INSTYPG117', 'Foreign Government Bond', NULL, 'BB', 'NL-N-NA-NGA-NUS-NA', '2021-12-02 00:00:00.000', NULL, '2021-12-03 14:42:34.000', 'GS:PSG:P72', 'Foreign Government Bond', 'Foreign Government Bond', 'INSTYPGR', 'ENGLISH'
 where not exists (select 1 from ft_t_einc where clsf_oid='INSTYPG117' and ext_cl_value='NL-N-NA-NGA-NUS-NA' and data_src_id='BB');

INSERT INTO ft_t_einc
(einc_oid, clsf_oid, cl_value, data_stat_typ, data_src_id, ext_cl_value, start_tms, end_tms, last_chg_tms, last_chg_usr_id, ext_clsf_nme, ext_clsf_desc, indus_cl_set_id, nls_cde)
select new_oid(), 'INSTYPG118', 'Foreign Government Bond - Inflation Linked', NULL, 'BB', 'NL-Y-NA-ALL-NUS-NA', '2021-12-02 00:00:00.000', NULL, '2021-12-03 14:42:34.000', 'GS:PSG:P72', 'Foreign Government Bond - Inflation Linked', 'Foreign Government Bond - Inflation Linked', 'INSTYPGR', 'ENGLISH'
 where not exists (select 1 from ft_t_einc where clsf_oid='INSTYPG118' and ext_cl_value='NL-Y-NA-ALL-NUS-NA' and data_src_id='BB');

INSERT INTO ft_t_einc
(einc_oid, clsf_oid, cl_value, data_stat_typ, data_src_id, ext_cl_value, start_tms, end_tms, last_chg_tms, last_chg_usr_id, ext_clsf_nme, ext_clsf_desc, indus_cl_set_id, nls_cde)
select new_oid(), 'INSTYPG120', 'Supranational Bond', NULL, 'BB', 'NL-N-NA-SN-SNAT-NA', '2021-12-02 00:00:00.000', NULL, '2021-12-03 14:42:34.000', 'GS:PSG:P72', 'Supranational Bond', 'Supranational Bond', 'INSTYPGR', 'ENGLISH'
 where not exists (select 1 from ft_t_einc where clsf_oid='INSTYPG120' and ext_cl_value='NL-N-NA-SN-SNAT-NA' and data_src_id='BB');

INSERT INTO ft_t_einc
(einc_oid, clsf_oid, cl_value, data_stat_typ, data_src_id, ext_cl_value, start_tms, end_tms, last_chg_tms, last_chg_usr_id, ext_clsf_nme, ext_clsf_desc, indus_cl_set_id, nls_cde)
select new_oid(), 'INSTYPG124', 'Treasury Bond', NULL, 'BB', 'NL-N-NA-NGA-US-Bond', '2021-12-02 00:00:00.000', NULL, '2021-12-03 14:42:34.000', 'GS:PSG:P72', 'Treasury Bond', 'Treasury Bond', 'INSTYPGR', 'ENGLISH'
 where not exists (select 1 from ft_t_einc where clsf_oid='INSTYPG124' and ext_cl_value='NL-N-NA-NGA-US-Bond' and data_src_id='BB');

INSERT INTO ft_t_einc
(einc_oid, clsf_oid, cl_value, data_stat_typ, data_src_id, ext_cl_value, start_tms, end_tms, last_chg_tms, last_chg_usr_id, ext_clsf_nme, ext_clsf_desc, indus_cl_set_id, nls_cde)
select new_oid(), 'INSTYPG124', 'Treasury Bond', NULL, 'BB', 'NL-N-NA-NGA-US-Note', '2021-12-02 00:00:00.000', NULL, '2021-12-03 14:42:34.000', 'GS:PSG:P72', 'Treasury Bond', 'Treasury Bond', 'INSTYPGR', 'ENGLISH'
 where not exists (select 1 from ft_t_einc where clsf_oid='INSTYPG124' and ext_cl_value='NL-N-NA-NGA-US-Note' and data_src_id='BB');


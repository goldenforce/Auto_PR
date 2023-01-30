-- 20220610 PSG-NS
-- STDF script to support derivation of INCL 'INSTYPGR'
-- GC and VDDB

INSERT INTO ft_t_stdf
(stat_def_id, start_tms, end_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, org_id, subd_org_id, subdiv_id, data_stat_typ, data_src_id, subd_oid)
select 'EXTCLVAL', '2021-12-21 19:41:20.000', NULL, '2021-12-21 19:41:20.000', 'GS:PSG:P72', 'CHAR', 'P72 derived EINC string', 'P72 derived EINC string', NULL, NULL, NULL, 'ACTIVE', 'P72', null from dual
where not exists (select 1 from ft_t_stdf where stat_def_id='EXTCLVAL' and data_src_id='P72');

-- 20220720 PSG-NS
-- STDF script to support P72 rating UDFs for fixed income
INSERT INTO ft_t_stdf
(stat_def_id, start_tms, end_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, org_id, subd_org_id, subdiv_id, data_stat_typ, data_src_id, subd_oid)
select 'P72RTGMD', '2022-07-01 00:00:00.000', NULL, '2022-07-01 00:00:00.000', 'GS:PSG:P72', 'CHAR', 'P72 fixed income rating Moodys', 'P72 fixed income rating Moodys', NULL, NULL, NULL, 'ACTIVE', 'P72', null from dual
where not exists (select 1 from ft_t_stdf where stat_def_id='P72RTGMD' and data_src_id='P72');

INSERT INTO ft_t_stdf
(stat_def_id, start_tms, end_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, org_id, subd_org_id, subdiv_id, data_stat_typ, data_src_id, subd_oid)
select 'P72RTGSP', '2022-07-01 00:00:00.000', NULL, '2022-07-01 00:00:00.000', 'GS:PSG:P72', 'CHAR', 'P72 fixed income rating S&P', 'P72 fixed income rating S&P', NULL, NULL, NULL, 'ACTIVE', 'P72', null from dual
where not exists (select 1 from ft_t_stdf where stat_def_id='P72RTGSP' and data_src_id='P72');

INSERT INTO ft_t_stdf
(stat_def_id, start_tms, end_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, org_id, subd_org_id, subdiv_id, data_stat_typ, data_src_id, subd_oid)
select 'P72RTGFT', '2022-07-01 00:00:00.000', NULL, '2022-07-01 00:00:00.000', 'GS:PSG:P72', 'CHAR', 'P72 fixed income rating Fitch', 'P72 fixed income rating Fitch', NULL, NULL, NULL, 'ACTIVE', 'P72', null from dual
where not exists (select 1 from ft_t_stdf where stat_def_id='P72RTGFT' and data_src_id='P72');


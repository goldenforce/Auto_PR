INSERT INTO ft_t_stdf
(stat_def_id, start_tms, end_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, org_id, subd_org_id, subdiv_id, data_stat_typ, data_src_id, subd_oid)
SELECT 'BONDTIER', current_timestamp, NULL, current_timestamp, 'GS:PSG:P72', 'CHARACT', 'BONDTIER', 'Bond tier rank', NULL, NULL, NULL, 'ACTIVE', 'P72', NULL from DUAL
where not exists (select 'X' from ft_t_stdf where stat_def_id = 'BONDTIER');
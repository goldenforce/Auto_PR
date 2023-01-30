-- Point72 Nick Sekouris PSG
-- Client namespace for custom GSOs
INSERT INTO ft_be_begc (begc_oid,config_typ,config_val_txt,config_grp_nme,last_chg_tms,last_chg_usr_id) select 'CNF_NM_SPC','CLIENT_NAMESPACE','POINT72','CUSTOM','2021-11-13 15:21:00','GS:PSG:P72' from dual where not exists (select from ft_be_begc where config_typ='CLIENT_NAMESPACE');

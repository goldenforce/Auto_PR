
INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'STRIKEPX', SYSDATE(), SYSDATE(), 'GS:PSG:P72', 'AMNT/DEC', 'Strike Price', 'Strike Price', 'ACTIVE', 'P72'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'STRIKEPX' AND end_tms IS NULL);
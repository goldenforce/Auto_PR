INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'CONRIC', SYSDATE(), SYSDATE(), 'GS:PSG:P72', 'CHAR', 'Consolidated RIC', 'Consolidated RIC', 'ACTIVE', 'RFTDSP'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'CONRIC' AND end_tms IS NULL);

-- China Share Class
INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'CHINASC', SYSDATE(), SYSDATE(), 'GS:PSG:P72', 'CHAR', 'China Share Class', 'China Share Class', 'ACTIVE', 'P72'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'CHINASC' AND end_tms IS NULL);

-- Scaling Factor
INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'SCFACT', SYSDATE(), SYSDATE(), 'GS:PSG:P72', 'AMNT/DEC', 'Scaling Factor', 'Scaling Factor', 'ACTIVE', 'P72'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'SCFACT' AND end_tms IS NULL);

-- SAC ADR Underlying CCY
INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'SACADRCY', SYSDATE(), SYSDATE(), 'GS:PSG:P72', 'CHAR', 'SAC ADR Underlying CCY', 'SAC ADR Underlying CCY', 'ACTIVE', 'P72'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'SACADRCY' AND end_tms IS NULL);

-- SAC Currency
INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'SACCRNCY', SYSDATE(), SYSDATE(), 'GS:PSG:P72', 'CHAR', 'SAC Currency', 'SAC Currency', 'ACTIVE', 'P72'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'SACCRNCY' AND end_tms IS NULL);

-- SAC Default Region
INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'SACDEFRG', SYSDATE(), SYSDATE(), 'GS:PSG:P72', 'CHAR', 'SAC Default Region', 'SAC Default Region', 'ACTIVE', 'P72'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'SACDEFRG' AND end_tms IS NULL);

-- SAC Exchange
INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'SACEXCH', SYSDATE(), SYSDATE(), 'GS:PSG:P72', 'CHAR', 'SAC Exchange', 'SAC Exchange', 'ACTIVE', 'P72'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'SACEXCH' AND end_tms IS NULL);

--Has Dividends
INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'HASDIVDN', SYSDATE(), SYSDATE(), 'GS:PSG:P72', 'CHARACT', 'HasDividends', 'HasDividends', 'ACTIVE', 'P72'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'HASDIVDN' AND end_tms IS NULL);

--Total Expense Ratio
INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'TOTEXPRT', SYSDATE(), SYSDATE(), 'GS:PSG:P72', 'AMNT/DEC', 'TotalExpenseRatio', 'TotalExpenseRatio', 'ACTIVE', 'P72'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'TOTEXPRT' AND end_tms IS NULL);

-- Constituent Count
INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'CONSTCNT', SYSDATE(), SYSDATE(), 'GS:PSG:P72', 'AMOUNT', 'ConstituentCount', 'ConstituentCount', 'ACTIVE', 'P72'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'CONSTCNT' AND end_tms IS NULL);

-- Right Adj Factor
INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'RGTADJFT', SYSDATE(), SYSDATE(), 'GS:PSG:P72', 'AMNT/DEC', 'Right Adj Factor', 'Right Adj Factor', 'ACTIVE', 'P72'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'RGTADJFT' AND end_tms IS NULL);

-- Right Ratio
INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'RGTRATIO', SYSDATE(), SYSDATE(), 'GS:PSG:P72', 'AMNT/DEC', 'Right Ratio', 'Right Ratio', 'ACTIVE', 'P72'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'RGTRATIO' AND end_tms IS NULL);

-- IsListed
INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'ISLISTED', SYSDATE(), SYSDATE(), 'GS:PSG:P72', 'CHAR', 'IsListed', 'IsListed', 'ACTIVE', 'P72'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'ISLISTED' AND end_tms IS NULL);

-- P72 Inactive Date
INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'P72INADT', SYSDATE(), SYSDATE(), 'GS:PSG:P72', 'DATEONLY', 'P72 Inactive Date', 'P72 Inactive Date', 'ACTIVE', 'P72'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'P72INADT' AND end_tms IS NULL);

-- Exercise Date
INSERT INTO ft_t_stdf (stat_def_id, start_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, data_stat_typ, data_src_id)  
  SELECT 'EXERDT', SYSDATE(), SYSDATE(), 'GS:PSG:P72', 'DATEONLY', 'Exercise Date', 'Exercise Date', 'ACTIVE', 'P72'  
    FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_stdf WHERE stat_def_id = 'EXERDT' AND end_tms IS NULL);


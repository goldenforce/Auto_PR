INSERT INTO ft_t_stdf
(stat_def_id, start_tms, end_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, org_id, subd_org_id, subdiv_id, data_stat_typ, data_src_id, subd_oid)
select 'PAYBND', '1990-01-01 00:00:00.000', NULL, current_timestamp, 'GS:PSG:P72 ', 'CHARACT', 'Payment in Kind Bonds', 'Payment in Kind Bonds', NULL, NULL, NULL, NULL, NULL, null 
where not exists (select '1' from ft_t_stdf where stat_def_id = 'PAYBND');

INSERT INTO ft_t_stdf
(stat_def_id, start_tms, end_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, org_id, subd_org_id, subdiv_id, data_stat_typ, data_src_id, subd_oid)
select 'PAYCPN', '1990-01-01 00:00:00.000', NULL, current_timestamp, 'GS:PSG:P72 ', 'CHARACT', 'Payment in Kind Coupons', 'Payment in Kind Coupons', NULL, NULL, NULL, NULL, NULL, NULL 
where not exists (select '1' from ft_t_stdf where stat_def_id = 'PAYCPN');

INSERT INTO ft_t_stdf
(stat_def_id, start_tms, end_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, org_id, subd_org_id, subdiv_id, data_stat_typ, data_src_id, subd_oid)
select 'SECDATE', '1990-01-01 00:00:00.000', NULL, current_timestamp, 'GS:PSG:P72 ', 'CHARACT', 'SEC Date', 'SEC Date', NULL, NULL, NULL, NULL, NULL, NULL 
where not exists (select '1' from ft_t_stdf where stat_def_id = 'SECDATE');

INSERT INTO ft_t_stdf
(stat_def_id, start_tms, end_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, org_id, subd_org_id, subdiv_id, data_stat_typ, data_src_id, subd_oid)
select 'YRSTOMTY', '1990-01-01 00:00:00.000', NULL, current_timestamp, 'GS:PSG:P72', 'AMNT/DEC', 'Years from Issue to Maturity', 'Years from Issue to Maturity', NULL, NULL, NULL, NULL, 'BB', NULL 
where not exists (select '1' from ft_t_stdf where stat_def_id = 'YRSTOMTY');

INSERT INTO ft_t_stdf
(stat_def_id, start_tms, end_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, org_id, subd_org_id, subdiv_id, data_stat_typ, data_src_id, subd_oid)
select 'MUNMTYSZ', '1990-01-01 00:00:00.000', NULL, current_timestamp, 'GS:PSG:P72 ', 'CHARACT', 'Municipal Maturity Size', 'Municipal Maturity Size', NULL, NULL, NULL, NULL, NULL, NULL 
where not exists (select '1' from ft_t_stdf where stat_def_id = 'MUNMTYSZ');

INSERT INTO ft_t_stdf
(stat_def_id, start_tms, end_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, org_id, subd_org_id, subdiv_id, data_stat_typ, data_src_id, subd_oid)
select 'CPNFQTYP', '1990-01-01 00:00:00.000', NULL, current_timestamp, 'GS:PSG:P72 ', 'CHARACT', 'Coupon Frequency Type', 'Coupon Frequency Type', NULL, NULL, NULL, NULL, NULL, NULL 
where not exists (select '1' from ft_t_stdf where stat_def_id = 'CPNFQTYP');

INSERT INTO ft_t_stdf
(stat_def_id, start_tms, end_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, org_id, subd_org_id, subdiv_id, data_stat_typ, data_src_id, subd_oid)
select 'STSMSTLP', '1990-01-01 00:00:00.000', NULL, current_timestamp, 'GS:PSG:P72 ', 'CHARACT', 'Standard Secondary Market Settle Period', 'Standard Secondary Market Settlement Period', NULL, NULL, NULL, NULL, NULL, NULL 
where not exists (select '1' from ft_t_stdf where stat_def_id = 'STSMSTLP');

INSERT INTO ft_t_stdf
(stat_def_id, start_tms, end_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, org_id, subd_org_id, subdiv_id, data_stat_typ, data_src_id, subd_oid)
select 'STRPTYP', '1990-01-01 00:00:00.000', NULL, current_timestamp , 'GS:PSG:P72 ', 'CHARACT', 'Strip Type', 'Strip Type', NULL, NULL, NULL, NULL, NULL, NULL 
where not exists (select '1' from ft_t_stdf where stat_def_id = 'STRPTYP');

INSERT INTO ft_t_stdf
(stat_def_id, start_tms, end_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, org_id, subd_org_id, subdiv_id, data_stat_typ, data_src_id, subd_oid)
select 'STRPBDID', '1990-01-01 00:00:00.000', NULL, current_timestamp , 'GS:PSG:P72 ', 'CHARACT', 'Stripped Bond Identifier', 'Stripped Bond Identifier', NULL, NULL, NULL, NULL, NULL, NULL 
where not exists (select '1' from ft_t_stdf where stat_def_id = 'STRPBDID');

INSERT INTO ft_t_stdf
(stat_def_id, start_tms, end_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, org_id, subd_org_id, subdiv_id, data_stat_typ, data_src_id, subd_oid)
select 'MDWKODTE', '1990-01-01 00:00:00.000', NULL, current_timestamp , 'GS:PSG:P72 ', 'DATEONLY', 'Mid Workout Date', 'Mid Workout Date', NULL, NULL, NULL, NULL, NULL, NULL 
where not exists (select '1' from ft_t_stdf where stat_def_id = 'MDWKODTE');

INSERT INTO ft_t_stdf
(stat_def_id, start_tms, end_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, org_id, subd_org_id, subdiv_id, data_stat_typ, data_src_id, subd_oid)
select 'PUTDYNTC', '1990-01-01 00:00:00.000', NULL, current_timestamp , 'GS:PSG:P72 ', 'CHARACT', 'Put Schedule - Days Notice', 'Put Schedule - Days Notice', NULL, NULL, NULL, NULL, NULL, NULL 
where not exists (select '1' from ft_t_stdf where stat_def_id = 'PUTDYNTC');

INSERT INTO ft_t_stdf
(stat_def_id, start_tms, end_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, org_id, subd_org_id, subdiv_id, data_stat_typ, data_src_id, subd_oid)
select 'CALANNDT', '1990-01-01 00:00:00.000', NULL, current_timestamp , 'GS:PSG:P72 ', 'DATEONLY', 'Call Announcement Date', 'Call Announcement Date', NULL, NULL, NULL, NULL, NULL, NULL 
where not exists (select '1' from ft_t_stdf where stat_def_id = 'CALANNDT');

INSERT INTO ft_t_stdf
(stat_def_id, start_tms, end_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, org_id, subd_org_id, subdiv_id, data_stat_typ, data_src_id, subd_oid)
select 'SFCALPCT', '1990-01-01 00:00:00.000', NULL, current_timestamp , 'GS:PSG:P72 ', 'CHARACT', 'Soft Call Price Quoted in Percent', 'Soft Call Price Quoted in Percent', NULL, NULL, NULL, NULL, NULL, NULL 
where not exists (select '1' from ft_t_stdf where stat_def_id = 'SFCALPCT');

INSERT INTO ft_t_stdf
(stat_def_id, start_tms, end_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, org_id, subd_org_id, subdiv_id, data_stat_typ, data_src_id, subd_oid)
select 'SFCLTPCT', '1990-01-01 00:00:00.000', NULL, current_timestamp, 'GS:PSG:P72 ', 'CHARACT', 'Soft Call Trigger Quoted in Percent', 'Soft Call Trigger Quoted in Percent', NULL, NULL, NULL, NULL, NULL, NULL 
where not exists (select '1' from ft_t_stdf where stat_def_id = 'SFCLTPCT');

INSERT INTO ft_t_stdf
(stat_def_id, start_tms, end_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, org_id, subd_org_id, subdiv_id, data_stat_typ, data_src_id, subd_oid)
select 'LASTCLDT', '1990-01-01 00:00:00.000', NULL, current_timestamp, 'GS:PSG:P72 ', 'DATEONLY', 'Last Callable Date', 'Last Callable Date', NULL, NULL, NULL, NULL, NULL, NULL 
where not exists (select '1' from ft_t_stdf where stat_def_id = 'LASTCLDT');

INSERT INTO ft_t_stdf
(stat_def_id, start_tms, end_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, org_id, subd_org_id, subdiv_id, data_stat_typ, data_src_id, subd_oid)
select 'IDCUSIPR', '1990-01-01 00:00:00.000', NULL, current_timestamp, 'GS:PSG:P72 ', 'CHARACT', 'Real Cusip Number', 'Real Cusip Number', NULL, NULL, NULL, NULL, NULL, NULL 
where not exists (select '1' from ft_t_stdf where stat_def_id = 'IDCUSIPR');

INSERT INTO ft_t_stdf
(stat_def_id, start_tms, end_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, org_id, subd_org_id, subdiv_id, data_stat_typ, data_src_id, subd_oid)
select 'BBFIEXCH', '1990-01-01 00:00:00.000', NULL, current_timestamp, 'GS:PSG:P72 ', 'CHARACT', 'BB Fixed Income Exchange Code', 'BB Fixed Income Exchange Code', NULL, NULL, NULL, NULL, NULL, NULL 
where not exists (select '1' from ft_t_stdf where stat_def_id = 'BBFIEXCH');

INSERT INTO ft_t_stdf
(stat_def_id, start_tms, end_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, org_id, subd_org_id, subdiv_id, data_stat_typ, data_src_id, subd_oid)
select 'ULPRCONR', '1900-01-01 00:00:00.000', NULL, current_timestamp, 'GS:PSG:P72', 'CHARACT', 'Ultimate Parent Country of Risk', 'Ultimate Parent Country or Territory of Risk', NULL, NULL, NULL, 'ACTIVE', 'P72', NULL
where not exists (select '1' from ft_t_stdf where stat_def_id = 'ULPRCONR');

INSERT INTO ft_t_stdf
(stat_def_id, start_tms, end_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, org_id, subd_org_id, subdiv_id, data_stat_typ, data_src_id, subd_oid)
select 'CPIOFFST', '1900-01-01 00:00:00.000', NULL, current_timestamp, 'GS:PSG:P72', 'INTEGER', 'Primary CPI Offset', 'Number of days back used to calculate the Consumer Price Index', NULL, NULL, NULL, 'ACTIVE', 'P72', NULL
where not exists (select '1' from ft_t_stdf where stat_def_id = 'CPIOFFST');

INSERT INTO ft_t_stdf
(stat_def_id, start_tms, end_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, org_id, subd_org_id, subdiv_id, data_stat_typ, data_src_id, subd_oid)
select 'SLTRMDBT', '1900-01-01 00:00:00.000', NULL, current_timestamp, 'GS:PSG:P72', 'AMNT/DEC', 'Short and Long Term Debt', 'Sum of short term and long term debt', NULL, NULL, NULL, 'ACTIVE', 'P72', NULL
where not exists (select '1' from ft_t_stdf where stat_def_id = 'SLTRMDBT');

INSERT INTO ft_t_stdf
(stat_def_id, start_tms, end_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, org_id, subd_org_id, subdiv_id, data_stat_typ, data_src_id, subd_oid)
select 'PRTCONME', '1900-01-01 00:00:00.000', NULL, current_timestamp, 'GS:PSG:P72', 'CHARACT', 'Ultimate Parent Company Name', 'Ultimate Parent Company Name', NULL, NULL, NULL, 'ACTIVE', 'P72', NULL
where not exists (select '1' from ft_t_stdf where stat_def_id = 'PRTCONME');

INSERT INTO ft_t_stdf
(stat_def_id, start_tms, end_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, org_id, subd_org_id, subdiv_id, data_stat_typ, data_src_id, subd_oid)
select 'PARDES', '1900-01-01 00:00:00.000', NULL, current_timestamp, 'GS:PSG:P72', 'CHARACT', 'Parskeyeable Description', 'Parskeyeable Description', NULL, NULL, NULL, 'ACTIVE', 'P72', NULL
where not exists (select '1' from ft_t_stdf where stat_def_id = 'PARDES');



--added 07.11.2022
INSERT INTO ft_t_stdf
(stat_def_id, start_tms, end_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, org_id, subd_org_id, subdiv_id, data_stat_typ, data_src_id, subd_oid)
select 'CPNFREQ', '1990-01-01 00:00:00.000', NULL, current_timestamp, 'GS:PSG:P72', 'CHARACT', 'Coupon Frequency', 'Coupon Frequency', NULL, NULL, NULL, NULL, NULL, NULL
	where not exists (select '1' from ft_t_stdf where stat_def_id = 'CPNFREQ');
	
INSERT INTO ft_t_stdf
(stat_def_id, start_tms, end_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, org_id, subd_org_id, subdiv_id, data_stat_typ, data_src_id, subd_oid)
select 'DAY_CNT', '1990-01-01 00:00:00.000', NULL, current_timestamp, 'GS:PSG:P72', 'CHARACT', 'Day Count', ' ', NULL, NULL, NULL, 'ACTIVE', NULL, NULL
	where not exists (select '1' from ft_t_stdf where stat_def_id = 'DAY_CNT');

INSERT INTO ft_t_stdf
(stat_def_id, start_tms, end_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, org_id, subd_org_id, subdiv_id, data_stat_typ, data_src_id, subd_oid)
select 'FXFLCPF', '1990-01-01 00:00:00.000', NULL, current_timestamp, 'GS:PSG:P72', 'CHARACT', 'Fix To Float Coupon Frequency', ' ', NULL, NULL, NULL, 'ACTIVE', NULL, NULL
	where not exists (select '1' from ft_t_stdf where stat_def_id = 'FXFLCPF');
	
INSERT INTO ft_t_stdf
(stat_def_id, start_tms, end_tms, last_chg_tms, last_chg_usr_id, stat_val_typ, stat_nme, stat_desc, org_id, subd_org_id, subdiv_id, data_stat_typ, data_src_id, subd_oid)
select 'FXFLDCN', '1990-01-01 00:00:00.000', NULL, current_timestamp, 'GS:PSG:P72', 'CHARACT', 'Fix To Float Day Count', ' ', NULL, NULL, NULL, 'ACTIVE', NULL, NULL
	where not exists (select '1' from ft_t_stdf where stat_def_id = 'FXFLDCN');

--Moody set rank
UPDATE ft_t_rtvl
SET last_chg_tms=current_timestamp, last_chg_usr_id='GS:PSG:P72', rank_num=10
WHERE rtng_set_oid='MOODW2LN60' and rtng_cde in ('Aaa','Aa1','Aa2','Aa3','A1','A2','A3','Baa1','Baa2','Baa3') and rank_num is null;
UPDATE ft_t_rtvl
SET last_chg_tms=current_timestamp, last_chg_usr_id='GS:PSG:P72', rank_num=20
where rtng_set_oid='MOODW2LN60' and rtng_cde in ('Ba1','Ba2','Ba3','B1','B2','B3','Caa1','Caa2','Caa3','Ca') and rank_num is null;
UPDATE ft_t_rtvl
SET last_chg_tms=current_timestamp, last_chg_usr_id='GS:PSG:P72', rank_num=30
where rtng_set_oid='MOODW2LN60' and rtng_cde in ('C') and rank_num is null;

--S&P set rank
UPDATE ft_t_rtvl
SET last_chg_tms=current_timestamp, last_chg_usr_id='GS:PSG:P72', rank_num=10
WHERE rtng_set_oid='0001W2LMBW' and rtng_cde in ('AAA','AA+','AA','AA-','A+','A','A-','BBB+','BBB','BBB-') and rank_num is null;
UPDATE ft_t_rtvl
SET last_chg_tms=current_timestamp, last_chg_usr_id='GS:PSG:P72', rank_num=20
where rtng_set_oid='0001W2LMBW' and rtng_cde in ('BB+','BB','BB-','B+','B','B-','CCC+','CCC','CCC-','CC','C') and rank_num is null;
UPDATE ft_t_rtvl
SET last_chg_tms=current_timestamp, last_chg_usr_id='GS:PSG:P72', rank_num=30
where rtng_set_oid='0001W2LMBW' and rtng_cde in ('SD','D') and rank_num is null;

--Fitch set rank
UPDATE ft_t_rtvl
SET last_chg_tms=current_timestamp, last_chg_usr_id='GS:PSG:P72', rank_num=10
WHERE rtng_set_oid='CONFITCH91' and rtng_cde in ('AAA','AA+','AA','AA-','A+','A','A-','BBB+','BBB','BBB-') and rank_num is null;
UPDATE ft_t_rtvl
SET last_chg_tms=current_timestamp, last_chg_usr_id='GS:PSG:P72', rank_num=20
where rtng_set_oid='CONFITCH91' and rtng_cde in ('BB+','BB','BB-','B+','B','B-','CCC','CC','C') and rank_num is null;
UPDATE ft_t_rtvl
SET last_chg_tms=current_timestamp, last_chg_usr_id='GS:PSG:P72', rank_num=30
where rtng_set_oid='CONFITCH91' and rtng_cde in ('RD','D','DD','DDD') and rank_num is null;
Sent from Mail for Windows


INSERT INTO FT_T_DSRC (DATA_SRC_ID,START_TMS,LAST_CHG_TMS,LAST_CHG_USR_ID,DATA_SRC_NME) 
SELECT 'BBEXT',current_date,current_date,'GS:MBUS:CON:BBX','Bloomberg Extended'
from dual where not exists (select 'X' from ft_t_dsrc where data_src_ID='BBEXT');

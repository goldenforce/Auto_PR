INSERT INTO FT_T_DSRC (DATA_SRC_ID,START_TMS,LAST_CHG_TMS,LAST_CHG_USR_ID,DATA_SRC_NME,DATA_SRC_DESC) 
SELECT 'P72',current_date,current_date,'GS:PSG:P72','Point 72','Point 72' 
from dual where not exists (select 'X' from ft_t_dsrc where data_src_ID='P72');

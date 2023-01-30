-- Point72 2022-04-22 Nick Sekouris
-- Update business entity in ISTY to associate UI template (Diana Sharkun email 2022-04-20)
-- 20220428 added HYBRID per jira DATAENGREF-475 
-- added Fixed Income realated Isntrument Types

update ft_t_isty set iss_typ_clsf_nme='Equity', last_chg_usr_id = 'GS:PSG:P72' 
where iss_typ in ('ETF','ETP','FUND','HYBRID','MISC','REALESTA','UNIT','UNITTRST');

update ft_t_isty set iss_typ_clsf_nme='Warrants', last_chg_usr_id = 'GS:PSG:P72' 
where iss_typ in ('RECEIPTS','RIGHTS');

update  ft_t_isty set iss_typ_clsf_nme = 'Bonds', last_chg_usr_id = 'GS:PSG:P72'
where iss_typ in ('ABS','BOND','CASHSEC','CMBS','CERTDEPT','COML PPR','CVTBOND','DEPO','GOVTBOND','LOAN','MONEYMAR','MORTGAGE','MUNI','NOTE','PDF','PFD','REPO','TBILL','TIME DEP','VAR BOND');

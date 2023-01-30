-- Point72 2022-04-22 Nick Sekouris
-- Update business entity in ISTY to associate UI template (Diana Sharkun email 2022-04-20)
-- 20220428 added HYBRID per jira DATAENGREF-475 

update ft_t_isty set iss_typ_clsf_nme='Equity' where iss_typ in ('ETF','ETP','FUND','HYBRID','MISC','PFD','REALESTA','UNIT','UNITTRST' ) ;
update ft_t_isty set iss_typ_clsf_nme='Warrants' where iss_typ in ('RECEIPTS','RIGHTS' ) ;
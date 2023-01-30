-- 20211213 N. Sekouris for P72
-- as per UI specs from Diana.Sharkun@point72.com

update ft_t_isty set iss_typ_clsf_nme='Equity' where iss_typ in ('RECEIPTS' ,'MISC' ,'PFD') ;
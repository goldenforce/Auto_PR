-- EIST Update for Convertible Preferred Stock
update ft_t_eist 
set iscd_oid = 'CVTPFD===='
where ext_iss_typ_txt in ('PRIVATE','PUBLIC') and iscd_oid ='PFD=======';

update ft_t_issu 
set iss_typ = 'CVTPFD'
where eist_oid in (select eist_oid from ft_t_eist where ext_iss_typ_txt in ('PRIVATE','PUBLIC'))
and iss_typ ='PFD';



-- ISTY Update for Preferred Stock, Convertible Preferred Stock

update ft_t_isty 
set iss_typ_clsf_nme = 'Bonds'
where iss_typ = 'CVTPFD';

update ft_t_isty 
set iss_typ_clsf_nme = 'Equity'
where iss_typ = 'PFD';



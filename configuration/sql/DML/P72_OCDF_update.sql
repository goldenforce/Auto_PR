
update ft_be_ocdf set ocrl_oid = (select ocrl_oid  from ft_be_ocrl where occur_rel_nme = 'FT_T_MIXR-To-FT_T_ISID02_1_P72')
where occur_nme ='ISID_CPROOT_P72_RIC';
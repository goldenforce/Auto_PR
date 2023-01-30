delete from ft_be_bcfp where dgdp_oid in 	(
	select dgdp_oid from ft_be_dgdp where prnt_dgdf_oid in (select dgdf_oid from ft_be_dgdf where data_grp_nme = 'BondStatistics')
		and bfdf_oid in (select bfdf_oid from ft_be_bfdf where bus_entity_fld_nme = 'PreviousFactor')
		) 
	and becf_oid in (select becf_oid from ft_be_becf where bdef_oid in (select bdef_oid from ft_be_bdef where bus_entity_data_nme = 'Bonds'));

delete from ft_be_bcfp where dgdp_oid in 	(
	select dgdp_oid from ft_be_dgdp where prnt_dgdf_oid in (select dgdf_oid from ft_be_dgdf where data_grp_nme = 'BondFeatures')
		and bfdf_oid in (select bfdf_oid from ft_be_bfdf where bus_entity_fld_nme = 'ConversionPrice')
		) 
	and becf_oid in (select becf_oid from ft_be_becf where bdef_oid in (select bdef_oid from ft_be_bdef where bus_entity_data_nme = 'Bonds'));
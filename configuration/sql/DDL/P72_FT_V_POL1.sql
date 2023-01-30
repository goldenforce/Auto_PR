create or replace view FT_V_POL1 
(
position_lock,
ovr_ref_oid
)
as
select case when exists (
select '1' from ft_t_ovrc ovrc1 
where ovrc1.ovr_tbl_key_txt = ovrc2.ovr_tbl_key_txt and bus_attr_path_txt like '%MktLstCountryGSPositionID') then 'Y' end
as position_lock, replace(split_part(ovrc2.ovr_tbl_key_txt, '=',2), ';','') as ovr_ref_oid from ft_t_ovrc ovrc2 where bus_attr_path_txt like '%MktLstCountryGSPositionID';

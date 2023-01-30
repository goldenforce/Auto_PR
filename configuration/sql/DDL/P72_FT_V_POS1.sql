-- 2022-05-12 PSG Nick Sekouris
-- define FT_V_POS1 view for position flag

create or replace view FT_V_POS1 (
 MKT_ISS_OID
,POS1_POSN_FLAG
,DATA_SRC_ID
,DATA_STAT_TYP
,START_TMS
,END_TMS
,LAST_CHG_USR_ID
,LAST_CHG_TMS
)
as
select mkis.mkt_iss_oid ,(case when isgp.mkt_iss_oid is not null then 'Y' else 'N' end) POS1_POSN_FLAG ,isgp.data_src_id ,isgp.data_stat_typ ,coalesce(isgp.start_tms ,'1900-01-01') start_tms ,isgp.end_tms ,isgp.last_chg_usr_id ,isgp.last_chg_tms 
  from FT_T_MKIS mkis left join FT_T_ISGP isgp on isgp.mkt_iss_oid=mkis.mkt_iss_oid and isgp.PRNT_ISS_GRP_OID= ( select ISS_GRP_OID from ft_t_isgr where end_tms is null and GRP_NME = 'POSNSOI' ) and isgp.PRT_PURP_TYP ='POSNSOI' ;

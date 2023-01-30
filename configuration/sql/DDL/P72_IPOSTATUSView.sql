create or replace view ft_v_IPOS
(
            issact_id,
            ipo_status
)
as
select issact_id, 'Confirmed' 
from fT_t_iadc iadc
where issact_id in (select IADC.issact_id 
from FT_T_MKIS MKIS, FT_T_MIXR MIXR, FT_T_ISID ISID, FT_T_IADC IADC , FT_T_IACM IACM
where MKIS.ofcl_place_listing_ind = 'Y'
and MKIS.mkt_iss_oid = MIXR.mkt_iss_oid
and MIXR.isid_oid = ISID.isid_oid
and ISID.id_ctxt_typ = 'BBUNIQUE'
and MKIS.END_TMS is null
and MIXR.end_tms is null
and ISID.end_tms is null
and MKIS.mkt_iss_oid = IADC.mkt_iss_oid
and IADC.issact_id = IACM.issact_id
and IACM.cmnt_reas_typ = 'P72BBUNIQUE'
and ISID.ISS_ID = IACM.cmnt_txt
and IADC.issact_typ = 'ACTV'
)
union all
select issact_id, 'Confirmed' 
from fT_t_iadc iadc
where issact_id in (select IADC.issact_id 
from FT_T_MKIS MKIS,FT_T_IADC IADC 
where MKIS.ofcl_place_listing_ind = 'Y'
and MKIS.mkt_iss_oid = IADC.mkt_iss_oid
and IADC.issact_typ = 'ACTV')
union all
select issact_id, 'Pending' 
from fT_t_iadc IADC
where issact_id not in (select IADC.issact_id
from FT_T_MKIS MKIS, FT_T_MIXR MIXR, FT_T_ISID ISID, FT_T_IADC IADC , FT_T_IACM IACM
where MKIS.ofcl_place_listing_ind = 'Y'
and MKIS.mkt_iss_oid = MIXR.mkt_iss_oid
and MIXR.isid_oid = ISID.isid_oid
and ISID.id_ctxt_typ = 'BBUNIQUE'
and MKIS.END_TMS is null
and MIXR.end_tms is null
and ISID.end_tms is null
and MKIS.mkt_iss_oid = IADC.mkt_iss_oid
and IADC.issact_id = IACM.issact_id
and IACM.cmnt_reas_typ = 'P72BBUNIQUE'
and ISID.ISS_ID = IACM.cmnt_txt
and IADC.issact_typ = 'ACTV');

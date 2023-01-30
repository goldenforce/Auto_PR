create or replace view FT_V_SED1 
(
instr_id,
SEDOL_1,
SEDOL_2,
SEDOL_3,
SEDOL_4,
SEDOL_COUNTRY1,
SEDOL_COUNTRY2,
SEDOL_COUNTRY3,
SEDOL_COUNTRY4
)
as
select 
  instr_id,   
  STRING_AGG(case id_ctxt_typ_n when 'SEDOL1' then iss_id end, ',' ORDER BY iss_id) as SEDOL1,
  STRING_AGG(case id_ctxt_typ_n when 'SEDOL2' then iss_id end, ',' ORDER BY iss_id) as SEDOL2,
  STRING_AGG(case id_ctxt_typ_n when 'SEDOL3' then iss_id end, ',' ORDER BY iss_id) as SEDOL3,
  STRING_AGG(case id_ctxt_typ_n when 'SEDOL4' then iss_id end, ',' ORDER BY iss_id) as SEDOL4,  
  STRING_AGG(case id_ctxt_typ_n when 'SEDOL1' then mrkt.mkt_nme end, ',' ORDER BY iss_id) as mkt_nme_1,
  STRING_AGG(case id_ctxt_typ_n when 'SEDOL2' then mrkt.mkt_nme end, ',' ORDER BY iss_id) as mkt_nme_2,
  STRING_AGG(case id_ctxt_typ_n when 'SEDOL3' then mrkt.mkt_nme end, ',' ORDER BY iss_id) as mkt_nme_3,
  STRING_AGG(case id_ctxt_typ_n when 'SEDOL4' then mrkt.mkt_nme end, ',' ORDER BY iss_id) as mkt_nme_4
  from (select instr_id, iss_id, mkt_oid, id_ctxt_typ||ROW_NUMBER() over (partition by instr_id ) as id_ctxt_typ_n
 			from FT_T_ISID   
 			where id_ctxt_typ ='SEDOL' and end_tms is null) isid
  join ft_t_mrkt mrkt  on mrkt.mkt_oid = isid.mkt_oid   
group by instr_id;
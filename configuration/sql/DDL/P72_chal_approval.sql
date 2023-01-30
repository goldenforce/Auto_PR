create or replace view chal_latest as 
select max(start_tms )  ,  row_occur_id ,fld_label_txt ,before_val_txt, cross_ref_id  from ft_t_chal  
where  approval_stat_typ ='PENDING'
group by  row_occur_id ,fld_label_txt ,before_val_txt, cross_ref_id;
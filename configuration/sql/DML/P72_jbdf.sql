INSERT INTO ft_t_jbdf (jbdf_oid,job_typ_cde,job_nme,start_tms,end_tms,cron_expr_txt,freq_typ_cde,job_per_days_of_week_txt,job_per_days_of_mth_num,last_chg_tms,last_chg_usr_id,apev_oid,pped_oid,job_scheduled_hour_num,job_scheduled_minutes_num,job_time_zone_nme,job_per_month_of_year_txt,usr_interface_start_ind,appl_event_nme,job_appl_typ,job_screen_nme) 
SELECT '8Rqzw>I381','Q','Equity DQ Rules',SYSDATE(),NULL,NULL,NULL,NULL,NULL,SYSDATE(),'apurva.bahadkar@point72.com','RunDataQuality',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_jbdf WHERE jbdf_oid ='8Rqzw>I381');

INSERT INTO ft_t_jbdf (jbdf_oid,job_typ_cde,job_nme,start_tms,end_tms,cron_expr_txt,freq_typ_cde,job_per_days_of_week_txt,job_per_days_of_mth_num,last_chg_tms,last_chg_usr_id,apev_oid,pped_oid,job_scheduled_hour_num,job_scheduled_minutes_num,job_time_zone_nme,job_per_month_of_year_txt,usr_interface_start_ind,appl_event_nme,job_appl_typ,job_screen_nme) 
SELECT '?@6v01w$G1','Q','Warrants DQ Rules',SYSDATE(),NULL,NULL,NULL,NULL,NULL,SYSDATE(),'geetanjali.rajadhyaksha@point72.com','RunDataQuality',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_jbdf WHERE jbdf_oid ='?@6v01w$G1');
	 
INSERT INTO ft_t_jbdf (jbdf_oid, job_typ_cde, job_nme, start_tms, end_tms, cron_expr_txt, freq_typ_cde, job_per_days_of_week_txt, job_per_days_of_mth_num, last_chg_tms, last_chg_usr_id, apev_oid, pped_oid, job_scheduled_hour_num, job_scheduled_minutes_num, job_time_zone_nme, job_per_month_of_year_txt, usr_interface_start_ind, appl_event_nme, job_appl_typ, job_screen_nme)
SELECT '3866E1MlO1', 'Q', 'Instrument Type DQ Rules', SYSDATE(), NULL, NULL, NULL, NULL, NULL, SYSDATE(), 'niraj.pakaye@point72.com', 'RunDataQuality', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_jbdf WHERE jbdf_oid ='3866E1MlO1');

INSERT INTO ft_t_jbdf (jbdf_oid, job_typ_cde, job_nme, start_tms, end_tms, cron_expr_txt, freq_typ_cde, job_per_days_of_week_txt, job_per_days_of_mth_num, last_chg_tms, last_chg_usr_id, apev_oid, pped_oid, job_scheduled_hour_num, job_scheduled_minutes_num, job_time_zone_nme, job_per_month_of_year_txt, usr_interface_start_ind, appl_event_nme, job_appl_typ, job_screen_nme)
SELECT '=002564250', 'Q', 'Fixed Income DQ Rule', SYSDATE(), NULL, NULL, NULL, NULL, NULL, SYSDATE(), 'niraj.pakaye@point72.com', 'RunDataQuality', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL
FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_jbdf WHERE jbdf_oid ='=002564250');	 
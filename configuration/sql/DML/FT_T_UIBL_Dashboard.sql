INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Notification Status', 'Status', 'en', 'InstrumentException.ExceptionDetail.NotificationStatus', null, 'nitin.bangar@point72.com', NULL, null from DUAL 
where not exists (select 'X' from FT_T_UIBL where business_label_txt ='Notification Status' and screen_attr_path_desc = 'InstrumentException.ExceptionDetail.NotificationStatus' );
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'User Name', 'Assigned To', 'en', 'InstrumentException.ExceptionDetail.UserName', null, 'nitin.bangar@point72.com', NULL, null from DUAL 
where not exists (select 'X' from FT_T_UIBL where business_label_txt ='User Name' and screen_attr_path_desc = 'InstrumentException.ExceptionDetail.UserName' );
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Transaction Comment Text', 'Comments', 'en', 'InstrumentException.ExceptionDetail.TransactionCommentText', null, 'nitin.bangar@point72.com', NULL, null from DUAL 
where not exists (select 'X' from FT_T_UIBL where business_label_txt ='Transaction Comment Text' and screen_attr_path_desc = 'InstrumentException.ExceptionDetail.TransactionCommentText' );
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Notification Creation DateTime', 'Datetime', 'en', 'InstrumentException.ExceptionDetail.NotificationCreationDate', null, 'nitin.bangar@point72.com', NULL, null from DUAL 
where not exists (select 'X' from FT_T_UIBL where business_label_txt ='Notification Creation DateTime' and screen_attr_path_desc = 'InstrumentException.ExceptionDetail.NotificationCreationDate' );
INSERT INTO ft_t_uibl
(business_label_txt, business_label_nme, cntry_cde, screen_attr_path_desc, business_label_desc, created_usr_id, prod_nme, created_tms)
select 'Latest Notification DateTime', 'Datetime', 'en', 'InstrumentException.ExceptionDetail.LatestNotificationDate', null, 'nitin.bangar@point72.com', NULL, null from DUAL 
where not exists (select 'X' from FT_T_UIBL where business_label_txt ='Latest Notification DateTime' and screen_attr_path_desc = 'InstrumentException.ExceptionDetail.LatestNotificationDate' );

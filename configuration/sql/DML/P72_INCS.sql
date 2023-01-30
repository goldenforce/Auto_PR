-- Instrument Type Group
INSERT INTO ft_t_incs (indus_cl_set_id, clsf_set_mnem, start_tms, last_chg_tms, last_chg_usr_id, cl_set_nme, cl_set_desc,data_src_id)    SELECT 'INSTYPGR','INSTYPGR',SYSDATE(),SYSDATE(),'GS:PSG:P72','Instrument Type Group','Instrument Type Group',''     FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_incs WHERE indus_cl_set_id = 'INSTYPGR' );

-- Geneva Asset Type
INSERT INTO ft_t_incs (indus_cl_set_id, clsf_set_mnem, start_tms, last_chg_tms, last_chg_usr_id, cl_set_nme, cl_set_desc,data_src_id)    SELECT 'GVASTTYP','GVASTTYP',SYSDATE(),SYSDATE(),'GS:PSG:P72','Geneva Asset Type','Geneva Asset Type',''     FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_incs WHERE indus_cl_set_id = 'GVASTTYP' );

-- Print Group
INSERT INTO ft_t_incs (indus_cl_set_id, clsf_set_mnem, start_tms, last_chg_tms, last_chg_usr_id, cl_set_nme, cl_set_desc,data_src_id)    SELECT 'GVPRNTGR','GVPRNTGR',SYSDATE(),SYSDATE(),'GS:PSG:P72','Print Group','Print Group',''     FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_incs WHERE indus_cl_set_id = 'GVPRNTGR' );

-- Geneva Investment Type
INSERT INTO ft_t_incs (indus_cl_set_id, clsf_set_mnem, start_tms, last_chg_tms, last_chg_usr_id, cl_set_nme, cl_set_desc,data_src_id)    SELECT 'GVINVTYP','GVINVTYP',SYSDATE(),SYSDATE(),'GS:PSG:P72','Geneva Investment Type','Geneva Investment Type',''     FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_incs WHERE indus_cl_set_id = 'GVINVTYP' );

-- Pano Investment Category 
INSERT INTO ft_t_incs (indus_cl_set_id, clsf_set_mnem, start_tms, last_chg_tms, last_chg_usr_id, cl_set_nme, cl_set_desc,data_src_id)    SELECT 'PANOINCT','PANOINCT',SYSDATE(),SYSDATE(),'GS:PSG:P72','Pano Investment Category ','Pano Investment Category ',''     FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_incs WHERE indus_cl_set_id = 'PANOINCT' );

-- Pano Security Type For Assignment
INSERT INTO ft_t_incs (indus_cl_set_id, clsf_set_mnem, start_tms, last_chg_tms, last_chg_usr_id, cl_set_nme, cl_set_desc,data_src_id)    SELECT 'PANOSECTYP','PANOSECT',SYSDATE(),SYSDATE(),'GS:PSG:P72','Pano Security Type For Assignment','Pano Security Type For Assignment',''     FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_incs WHERE indus_cl_set_id = 'PANOSECTYP' );

-- P72 Underlying Risk Class
INSERT INTO ft_t_incs (indus_cl_set_id, clsf_set_mnem, start_tms, last_chg_tms, last_chg_usr_id, cl_set_nme, cl_set_desc,data_src_id)    SELECT 'P72UNDRC','P72UNDRC',SYSDATE(),SYSDATE(),'GS:PSG:P72','P72 Underlying Risk Class','P72 Underlying Risk Class',''     FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM ft_t_incs WHERE indus_cl_set_id = 'P72UNDRC' );

-- 2022-03-24 Nick Sekouris US-PSG
-- Client: Point72 | version 8.8.1 | postgres
-- Custom entries in XSEG, XSTO, CLMI to manage SOI under a P72 Country Primary (ISGP_COUNTRY_P72 GSO occurrence)

--XSEG
INSERT INTO ft_t_xseg (segment_id, start_tms, last_chg_tms, last_chg_usr_id, segment_nme, segment_desc)
   SELECT 1000006, SYSDATE(), SYSDATE(), 'P72SETUP', 'P72CountryPrimaryInstrumentGroup', 'ISGP' 
     FROM DUAL WHERE NOT EXISTS (SELECT 'X' FROM ft_t_xseg WHERE segment_Id = 1000006);
	 
--XSTO
INSERT INTO ft_t_xsto (segment_id, tbl_id, prnt_tbl_id, tbl_clsf_typ, last_chg_tms, last_chg_usr_id)
  SELECT 1000006, 'ISGP', 'MKIS', 'P', SYSDATE(), 'P72SETUP'
     FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_xsto WHERE segment_id = 1000006);

--CLMI
INSERT INTO ft_t_clmi (clmi_oid, src_tbl_id, src_col_nme, trgt_tbl_id, trgt_col_nme, pgm_data_typ, last_chg_tms, last_chg_usr_id, mapping_purp_typ, virtual_mapping_ind)
  SELECT 'MKISISGP01', 'MKIS', 'MKT_ISS_OID', 'ISGP', 'MKT_ISS_OID', 'STRING  ', sysdate(), 'P72SETUP', NULL, NULL
    FROM DUAL WHERE NOT EXISTS ( SELECT 'X' FROM ft_t_clmi WHERE clmi_oid = 'MKISISGP01');


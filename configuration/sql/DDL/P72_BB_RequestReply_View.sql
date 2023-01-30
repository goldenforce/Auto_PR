
CREATE OR REPLACE VIEW ft_v_bb_persec
AS SELECT data1.instr_id,
    data1.identifier,
    data1.idcontext
   FROM ( SELECT isgp.instr_id,
                CASE
                    WHEN (( SELECT isid.iss_id
                       FROM ft_t_isid isid
                      WHERE isid.instr_id::text = isgp.instr_id::text AND isid.id_ctxt_typ::text = 'BBUNIQUE'::text
                     LIMIT 1)) IS NOT NULL THEN ( SELECT isid.iss_id
                       FROM ft_t_isid isid
                      WHERE isid.instr_id::text = isgp.instr_id::text AND isid.id_ctxt_typ::text = 'BBUNIQUE'::text
                     LIMIT 1)
                    WHEN (( SELECT isid.iss_id
                       FROM ft_t_isid isid
                      WHERE isid.instr_id::text = isgp.instr_id::text AND isid.id_ctxt_typ::text = 'BBGLOBAL'::text
                     LIMIT 1)) IS NOT NULL THEN ( SELECT isid.iss_id
                       FROM ft_t_isid isid
                      WHERE isid.instr_id::text = isgp.instr_id::text AND isid.id_ctxt_typ::text = 'BBGLOBAL'::text
                     LIMIT 1)
                    ELSE NULL::character varying
                END AS identifier,
                CASE
                    WHEN (( SELECT isid.iss_id
                       FROM ft_t_isid isid
                      WHERE isid.instr_id::text = isgp.instr_id::text AND isid.id_ctxt_typ::text = 'BBUNIQUE'::text
                     LIMIT 1)) IS NOT NULL THEN 'BB_UNIQUE'::text
                    WHEN (( SELECT isid.iss_id
                       FROM ft_t_isid isid
                      WHERE isid.instr_id::text = isgp.instr_id::text AND isid.id_ctxt_typ::text = 'BBGLOBAL'::text
                     LIMIT 1)) IS NOT NULL THEN 'BB_GLOBAL'::text
                    ELSE NULL::text
                END AS idcontext
           FROM ft_t_isgr isgr
             LEFT JOIN ft_t_isgp isgp ON isgr.iss_grp_oid::text = isgp.prnt_iss_grp_oid::text AND isgr.grp_purp_typ::text = 'UNIVERSE'::text AND isgr.grp_nme::text = 'POSNSOI'::text AND isgp.end_tms IS NULL OR isgp.end_tms > sysdate() AND isgr.end_tms IS NULL OR isgr.end_tms > sysdate()) data1;

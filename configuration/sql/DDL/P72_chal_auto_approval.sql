create or replace view p72_chal_auto_approval
(
	chal_msg, 
	chal_oid	
)
as
	SELECT  '<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE STREET_REF SYSTEM "fti://repository/dtd/STREET_REF">' ||
        XMLElement(NAME "STREET_REF", 
            XMLAttributes( 10000000 AS "MESSAGE_ID",'' AS "MESSAGECONDITION",'GUEST' AS "USERID",'' AS "EVENT",'' AS "TRANSACTIONCODE",'false' AS "TRACE",'Y' AS "IS_GSO_MESSAGE"),
            XMLElement(NAME "HEADER",
                XMLElement(NAME "CHGAPPRTYP" ,XMLAttributes('Y' AS "VALUE")),
                XMLElement(NAME "CURRENTTIMESTAMP" ,XMLAttributes( SYSDATE() AS "VALUE")),
                XMLElement(NAME "LOCALE",
                           XMLElement(NAME "NLS",XMLAttributes( 'ENGLISH' AS "VALUE")),
                           XMLElement(NAME "TIMEZONE",XMLAttributes( 'ET' AS "VALUE"))
                          ),              
               XMLElement(NAME "MSGCLASSIFICATION",XMLAttributes('WEBMSG' AS "VALUE")),
               XMLElement(NAME "USERID",XMLAttributes( CHAL.LAST_CHG_USR_ID AS "VALUE"))
                      ),                 
               XMLElement(NAME "SEGMENT",
                           XMLAttributes( 'ChangeAuditLog' AS "TYPE",'UPDATE' AS "ACTION"),
                           XMLElement(NAME "ChangeAuditLog",
                              XMLElement(NAME "APPROVALSTATTYP",XMLAttributes( 'APPROVED' AS "VALUE")),
                              XMLElement(NAME "CHALOID",XMLAttributes( CHAL.CHAL_OID AS "VALUE")),
                              XMLElement(NAME "VERIFUSRID",XMLAttributes( CHAL.VERIF_USR_ID AS "VALUE")),                             
							  XMLElement(NAME "REVIEWERUSRID",XMLAttributes( CHAL.REVIEWER_USR_ID AS "VALUE")),
							  XMLElement(NAME "BUSINESSCMNTTXT",XMLAttributes( 'P72_AUTO_APPROVE' AS "VALUE")),
							  XMLElement(NAME "LOCKLEVELTYP",XMLAttributes( 'NONE' AS "VALUE")),
							  XMLElement(NAME "LOCKCMNTTXT",XMLAttributes( 'P72_AUTO_APPROVE' AS "VALUE"))
                                     )
                         )
) chal_msg,
chal.chal_oid  
from ft_t_chal chal
where (chal.END_TMS IS NULL OR chal.END_TMS > SYSDATE())
and chal_oid in (select
					chal_oid
				from
					FT_T_CHAL CHAL
				where
					row_occur_id like '%SEDOL'
					and data_src_id = 'BB'
					and approval_stat_typ = 'PENDING'
					and exists (
					select
						'X'
					from
						FT_T_CHAL
					where
						row_occur_id like '%SEDOL'
						and approval_stat_typ = 'PENDING'
						and data_src_id = 'RFTDSP'
						and chg_val_txt = CHAL.chg_val_txt
						and before_val_txt = chal.before_val_txt
						and cross_ref_id=chal.cross_ref_id)
				union
				select
					chal_oid
				from
					FT_T_CHAL CHAL
				where
					row_occur_id like '%ISIN'
					and data_src_id = 'BB'
					and approval_stat_typ = 'PENDING'
					and exists (
					select
						'X'
					from
						FT_T_CHAL
					where
						row_occur_id like '%ISIN'
						and approval_stat_typ = 'PENDING'
						and data_src_id = 'RFTDSP'
						and chg_val_txt = CHAL.chg_val_txt
						and before_val_txt = chal.before_val_txt
						and cross_ref_id=chal.cross_ref_id)
				union
				select
					chal_oid
				from
					FT_T_CHAL CHAL
				where
					row_occur_id like '%CUSIP'
					and data_src_id = 'BB'
					and approval_stat_typ = 'PENDING'
					and exists (
					select
						'X'
					from
						FT_T_CHAL
					where
						row_occur_id like '%CUSIP'
						and approval_stat_typ = 'PENDING'
						and data_src_id = 'RFTDSP'
						and chg_val_txt = CHAL.chg_val_txt
						and before_val_txt = chal.before_val_txt
						and cross_ref_id=chal.cross_ref_id)
				UNION
				select
					chal_oid
				from
					FT_T_CHAL CHAL
				where
					row_occur_id like '%TICKER'
					and data_src_id = 'BB'
					and approval_stat_typ = 'PENDING'
					and exists (
					select
						'X'
					from
						FT_T_CHAL
					where
						row_occur_id like '%RTTICKER'
						and approval_stat_typ = 'PENDING'
						and data_src_id = 'RFTDSP'
						and chg_val_txt = CHAL.chg_val_txt
						and before_val_txt = chal.before_val_txt
						and cross_ref_id=chal.cross_ref_id)
				UNION
				select
					chal_oid
				from
					FT_T_CHAL CHAL
				where
					row_occur_id like '%RTTICKER'
					and data_src_id = 'RFTDSP'
					and approval_stat_typ = 'PENDING'
					and exists (
					select
						'X'
					from
						FT_T_CHAL
					where
						row_occur_id like '%TICKER'
						and approval_stat_typ = 'PENDING'
						and data_src_id = 'BB'
						and chg_val_txt = CHAL.chg_val_txt
						and before_val_txt = chal.before_val_txt
						and cross_ref_id=chal.cross_ref_id)
				union
				select
					chal_oid
				from
					FT_T_CHAL CHAL
				where
					chal.row_occur_id like '%RIC'
					and chal.data_src_id = 'RFTDSP'
					and chal.approval_stat_typ = 'PENDING'
					and exists (select 'X'
								from
									FT_T_CHAL CHAL1
								where
									chal1.row_occur_id like '%RTTICKER'
									and chal1.data_src_id = 'RFTDSP'
									and chal1.approval_stat_typ = 'PENDING'
									and chal.cross_ref_id=chal1.cross_ref_id
									and exists (
									select
										'X'
									from
										FT_T_CHAL chal2
									where
										chal2.row_occur_id like '%TICKER'
										and chal2.approval_stat_typ = 'PENDING'
										and chal2.data_src_id = 'BB'
										and chal2.chg_val_txt = chal1.chg_val_txt
										and chal2.before_val_txt = chal1.before_val_txt
										and chal2.cross_ref_id=chal1.cross_ref_id)));			
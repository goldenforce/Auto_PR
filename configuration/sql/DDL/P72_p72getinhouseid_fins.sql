CREATE OR REPLACE FUNCTION p72getinhouseid_fins()
 RETURNS character varying
 LANGUAGE plpgsql
AS $function$  DECLARE
SEQNO NUMERIC;
p_oid varchar(100000);
err_num      varchar(100000);
err_msg      varchar(100000);
BEGIN
SELECT nextval('SEQ_P72_FINS01') INTO SEQNO;
p_oid:= ltrim(to_char(SEQNO, 'FM99999999999999999'));
RETURN p_oid;
EXCEPTION WHEN OTHERS
THEN
err_num := SQLSTATE;
err_msg := SUBSTR(SQLERRM,1,100);
RAISE NOTICE 'Trapped Error: %', err_msg;
RETURN err_msg;
END;$function$
;

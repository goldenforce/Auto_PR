DO $$ 
DECLARE

CNT SMALLINT;

BEGIN

SELECT COUNT(1) INTO CNT FROM   information_schema.sequences
    WHERE   sequence_name = 'seq_p72_cntrprimid';
	
IF CNT =0 THEN

EXECUTE 'CREATE SEQUENCE SEQ_P72_CNTRPRIMID
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 99999999999999999
	START 10000	
	NO CYCLE'; 

END IF;

END $$;
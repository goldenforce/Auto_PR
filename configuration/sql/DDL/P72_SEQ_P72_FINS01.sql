DO $$ 
DECLARE

CNT SMALLINT;

BEGIN

SELECT COUNT(1) INTO CNT FROM   information_schema.sequences
    WHERE   sequence_name = 'seq_p72_fins01';
	
IF CNT =0 THEN

EXECUTE 'CREATE SEQUENCE SEQ_P72_FINS01
  INCREMENT BY 1
  START 1000000
  MAXVALUE 99999999999999999
  MINVALUE 1
  NO CYCLE'; 

END IF;

END $$;

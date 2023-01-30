--{$$-STATEMENT-$$}

CREATE TABLE IF NOT EXISTS FT_T_GPG1
(
   GPG1_OID                     CHAR (10) CONSTRAINT FT_T_GPC1_PK PRIMARY KEY,
   YKEY                         VARCHAR (1000),
   PERPETUAL                    VARCHAR (1000),
   COUNTRY                      VARCHAR (1000),
   CALC_TYP_DES                 VARCHAR (1000),
   INFLATION_LINKED_INDICATOR   VARCHAR (1000),
   CONVERTIBLE                  VARCHAR (1000),
   OBLIGOR_NAME                 VARCHAR (1000),
   ISSUER                       VARCHAR (1000),
   ISSUER_INDUSTRY              VARCHAR (1000),
   STRUCTURED_NOTE              VARCHAR (1000),
   GENEVA_PRINT_GRP             VARCHAR (1000),
   SEQ_NO                       Integer,
   START_DATE				   CHAR (8),
   END_DATE                    CHAR (8),
   LAST_CHG_USR_ID              VARCHAR (256),
   LAST_CHG_TMS                 TIMESTAMP (0)
);

-- SEQ_ID is unique
CREATE UNIQUE INDEX FT_T_GPC1_U001 ON FT_T_GPG1 (SEQ_NO);
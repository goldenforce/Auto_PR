--{$$-STATEMENT-$$}
CREATE TABLE IF NOT EXISTS FT_T_BAR1 ( BAR1_OID CHAR (10) CONSTRAINT FT_T_BAR1_PK PRIMARY KEY,                                               
                         BARRA_ID VARCHAR(100),
						 ASSET_ID_TYPE VARCHAR(20),
						 ASSET_ID VARCHAR(100),
                         START_DATE CHAR(8),
                         END_DATE CHAR(8),                                              
                         LAST_CHG_USR_ID VARCHAR(256),
                         LAST_CHG_TMS TIMESTAMP(0)												
                        );		

		 
--{$$-STATEMENT-$$}
CREATE INDEX IF NOT EXISTS FT_X_BAR1_I001 ON FT_T_BAR1(BARRA_ID);
							  
	
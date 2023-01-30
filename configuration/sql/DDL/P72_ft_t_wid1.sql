--{$$-STATEMENT-$$}
CREATE TABLE IF NOT EXISTS FT_T_WID1 ( wid1_OID CHAR (10) CONSTRAINT FT_T_WID1_PK PRIMARY KEY,
                         CUSTOM_ID VARCHAR(20),
						 SEDOL VARCHAR(20),
						 CINS VARCHAR(20),
						 CUSIP VARCHAR(20),
						 ISIN VARCHAR(20),
                         START_DATE CHAR(8),
                         END_DATE CHAR(8),                                              
                         LAST_CHG_USR_ID VARCHAR(256),
                         LAST_CHG_TMS TIMESTAMP(0)												
                        );		
--{$$-STATEMENT-$$}	
CREATE INDEX IF NOT EXISTS FT_X_WID1_I001 ON FT_T_WID1(CUSTOM_ID) ; 
							  

UPDATE ft_be_berc
set rule_txt='var gs_entity= root;  
 var countrysPrimaryExchange = #gs_entity.getRecordCollection(''CountrysPrimaryExchange'') 
 var sz = #countrysPrimaryExchange.size() 
 if( (#sz!=null and (#sz >= 1))) 
 { 
 if( (#gs_entity.getSingleValue(''InstrumentClassification.BBSubSectorType'') == null) and (#gs_entity.getSingleValue(''InstrumentDetails.InstrumentType'')!=null and T(com.thegoldensource.be.rule.wrappers.FUtil).in(#gs_entity.getSingleValue(''InstrumentDetails.InstrumentType''),''REALESTA'',''EQSHR'',''UNIT'',''RIGHTS'',''MISC'',''RECEIPTS'',''LTDPART'',''PFD'')) and (#gs_entity.getSingleValue(''InstrumentClassification.BBMarketSector'') != null)) 
 { 
 #gs_entity.setStatusMessage(''BB Sub-Security Type is mandatory'',''Base.P72BBSubSecurityTypeMandatory'') 
 } 
  else 
 {} 
 
 } 
  else 
 {} 
'
where berc_oid='008YpJ1WhG5AW0Bs'
and rule_nme='Base.P72BBSubSecurityTypeMandatory'



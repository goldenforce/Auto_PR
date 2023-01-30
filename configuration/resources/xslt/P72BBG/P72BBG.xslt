<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:param name="Firmname" select="'Please specify the firmname in the configuration of the service'"></xsl:param>
	<xsl:output method="text"/>
	<xsl:template match="/VendorRequest">START-OF-FILE
FIRMNAME=<xsl:value-of select="$Firmname"/>
DATEFORMAT=yyyymmdd
PROGRAMNAME=getdata<xsl:if test="/VendorRequest/Request/Param[@Key='DATERANGE']">
DATERANGE=<xsl:value-of select="/VendorRequest/Request/Param[@Key='DATERANGE']"/></xsl:if>
<xsl:if test="/VendorRequest/Request/Param[@Key='ACTIONS']">
ACTIONS=<xsl:value-of select="/VendorRequest/Request/Param[@Key='ACTIONS']"/></xsl:if>
<xsl:if test="/VendorRequest/Request/Param[@Key='ACTIONS_DATE']">
ACTIONS_DATE=<xsl:value-of select="/VendorRequest/Request/Param[@Key='ACTIONS_DATE']"/></xsl:if>
<xsl:if test="/VendorRequest/ProgramFlag/text()">
PROGRAMFLAG=<xsl:value-of select="/VendorRequest/ProgramFlag/text()"/></xsl:if>
<xsl:if test="/VendorRequest/Request/Param[@Key='Header_YELLOWKEY']">
YELLOWKEY=<xsl:value-of select="/VendorRequest/Request/Param[@Key='Header_YELLOWKEY']"/></xsl:if>
<xsl:if test="/VendorRequest/DiffFlag/text()">
DIFFFLAG=<xsl:value-of select="/VendorRequest/DiffFlag/text()"/></xsl:if>
<xsl:if test="/VendorRequest/RunDate/text()">
RUNDATE=<xsl:value-of select="/VendorRequest/RunDate/text()"/></xsl:if>
<xsl:if test="/VendorRequest/Time/text()">
TIME=<xsl:value-of select="/VendorRequest/Time/text()"/></xsl:if>
<xsl:if test="/VendorRequest/ReplyFileName/text()">
REPLYFILENAME=<xsl:value-of select="/VendorRequest/ReplyFileName/text()"/></xsl:if>
CLOSINGVALUES=yes
DERIVED=yes
SECMASTER=yes
HISTORICAL=yes

START-OF-FIELDS
#BBRequestReplyFile<xsl:if test="/VendorRequest/Request/RequestType='P72_CorpGov_RR' or /VendorRequest/Request/RequestType='P72_CorpGov_Additional_RR' or /VendorRequest/Request/RequestType='P72_CorpGov_EXT_RR'">
TICKER
CPN
MATURITY
SERIES
NAME
SHORT_NAME
ISSUER_INDUSTRY
MARKET_SECTOR_DES
CPN_FREQ
CPN_TYP
MTY_TYP
CALC_TYP_DES
DAY_CNT
MARKET_ISSUE
COUNTRY
CRNCY
COLLAT_TYP
AMT_ISSUED
AMT_OUTSTANDING
MIN_PIECE
MIN_INCREMENT
PAR_AMT
LEAD_MGR
EXCH_CODE
REDEMP_VAL
ANNOUNCE_DT
FIRST_SETTLE_DT
FIRST_CPN_DT
INT_ACC_DT
ISSUE_DT
ISSUE_PX
ID_EUROCLEAR
ID_XTRAKTER
ID_SEDOL1
ID_SEDOL2
ID_CEDEL
ID_WERTPAPIER
ID_ISIN
ID_DUTCH
ID_VALOREN
ID_FRENCH
ID_COMMON
ID_JAPAN
ID_BELGIUM
ID_DANISH
ID_AUSTRIAN
ID_LUXEMBOURG
ID_SWEDISH
ID_NORWAY
ID_JAPAN_COMPANY
ID_SPAIN
ID_ITALY
ID_BB_COMPANY
ID_BB_SECURITY
ID_CUSIP
NXT_CALL_DT
NXT_CALL_PX
NXT_PAR_CALL_DT
NXT_PUT_DT
NXT_PUT_PX
NXT_PAR_PUT_DT
NXT_CPN_DT
NXT_SINK_DT
NXT_REFUND_DT
RTG_JCR
REFIX_FREQ
NXT_REFIX_DT
RESET_IDX
PFD_DVD_PAY_DT
PFD_EX_DVD_DT
PFD_RST_DVD
CV_COMMON_TICKER
CV_COMMON_TICKER_EXCH
CV_CNVS_RATIO
CV_UNTIL
CV_CNVS_FEXCH_RT
CV_PROV_PX
CALLABLE
PCT_SINKER
SINK_SCHEDULE_AMT_TYP
SINKABLE
PUTABLE
ID_BB_PARENT_CO
PARENT_COMP_NAME
PARENT_COMP_TICKER
CNTRY_OF_INCORPORATION
BASIC_SPREAD
INDUSTRY_SECTOR
INDUSTRY_GROUP
INDUSTRY_SUBGROUP
COUNTRY_GUARANTOR
CNTRY_OF_DOMICILE
SECURITY_DES
144A_FLAG
FLT_BENCH_MULTIPLIER
SECURITY_TYP
CV_START_DT
PRE_EURO_ID_ISIN
PRE_REDENOM_CRNCY
PRE_EURO_AMT_ISSUED
PRE_EURO_CALENDAR_CODE
PRE_EURO_AMT_OUTSTANDING_LAST
PRE_EURO_AMT_OUTSTANDING
PRE_EURO_MIN_INCREMENT
PRE_EURO_MIN_PIECE
PRE_EURO_DAY_CNT
PRE_EURO_ISSUE_TYP
PRE_EURO_PAR_AMT
PRE_EURO_CALC_TYP
POST_REDENOM_CRNCY
POST_EURO_CALENDAR_CODE
POST_EURO_AMT_ISSUED
POST_EURO_AMT_OUTSTANDING
POST_EURO_MIN_PIECE
POST_EURO_MIN_INCREMENT
POST_EURO_ISSUE_TYP
POST_EURO_DAY_CNT
POST_EURO_CALC_TYP
POST_EURO_PAR_AMT
POST_EURO_ID_ISIN
POST_EURO_AMT_OUTSTANDING_LAST
POST_EURO_ID_DUTCH
POST_EURO_ID_COMMON
POST_EURO_ID_FRENCH
REDENOM_DT
REDENOM_METHOD
REDENOM_ROUND_METHOD
REDENOM_PX
RECONVENTION_DT
GUARANTOR_NAME
POST_EURO_CALC_TYP_DES
POST_EURO_DAY_CNT_DES
PRE_EURO_CALC_TYP_DES
PRE_EURO_DAY_CNT_DES
PRE_EURO_ID_COMMON
PRE_EURO_ID_FRENCH
PREV_CPN_DT
NXT_SINK_AMT
CALL_DISCRETE
PUT_DISCRETE
MAKE_WHOLE_CALL
ID_BB_UNIQUE
LONG_COMP_NAME
REDEMP_CRNCY
CPN_CRNCY
DTC_ELIGIBLE
STRUCTURED_NOTE
PCT_PAR_QUOTED
PCS_QUOTE_TYP
IS_UNIT_TRADED
IS_REVERSE_CONVERTIBLE
TRADE_CRNCY
BEARER
REGISTERED
CALLED
CALLED_DT
ISSUER
CALL_FEATURE
PUT_FEATURE
PENULTIMATE_CPN_DT
FLT_CPN_CONVENTION
CUR_CPN
FLOATER
TRADE_STATUS
CDR_COUNTRY_CODE
CDR_SETTLE_CODE
SEASONING_STATUS
FINAL_MATURITY
PRVT_PLACE
CALC_TYP
REMOVAL_REASON
IS_PERPETUAL
IS_REG_S
CALLED_PX
DEFAULTED
GILTS_EX_DVD_DT
MOST_RECENT_REPORTED_FACTOR
NXT_FACTOR_DT
OID_BOND
DELIVERY_TYP
ID_SEDOL3
ID_SEDOL4
ID_SEDOL5
SEDOL1_COUNTRY_ISO
SEDOL2_COUNTRY_ISO
SEDOL3_COUNTRY_ISO
SEDOL4_COUNTRY_ISO
SEDOL5_COUNTRY_ISO
ID_MIC1
ID_MIC2
ID_MIC3
ID_MIC4
ID_MIC5
CV_SH_PAR
DUAL_CRNCY
EXTENDIBLE
EXCHANGEABLE
IS_SOFT_CALL
CV_MANDATORY_CNVS
EU_SAVINGS_DIRECTIVE
ID_CUSIP_REAL
INDUSTRY_SUBGROUP_NUM
SECURITY_TYP2
LAST_REFIX_DT
ISO_COUNTRY_GUARANTOR
DTC_REGISTERED
CALL_PARTIAL
CV_CNVS_PX
IS_CURRENT_GOVT
FIRST_CALL_DT_ISSUANCE
UNDL_ID_BB_UNIQUE
EST_CPN_FLAG
ID_BB_GUARANTOR
IS_DAY_PAYER
STEPUP_CPN
STEPUP_DT
CALC_MATURITY
ID_EXCH_SYMBOL
CREDIT_ENHANCEMENTS
INSURANCE_STATUS
JUNIOR
SENIOR
FLT_PAY_DAY
FLT_DAYS_PRIOR
INFLATION_LINKED_INDICATOR
DAYS_TO_SETTLE
TYPE_OF_BOND
REFERENCE_INDEX
BASE_CPI
CFI_CODE
CPN_FREQ_YLD_CNV
DAY_PAYER_FREQ
EX_DIV_DAYS
EX_DIV_CALENDAR
CONTINGENT_CONVERSION
ID_BB_GLOBAL
SECURITY_FACTORABLE
INFLATION_LAG
ID_BB_GLOBAL_COMPANY
ID_BB_GLOBAL_COMPANY_NAME
CONTRIB_DATA_INDICATOR
Field_144A_FLAG
IDX_RATIO
ID_BB_SEC_NUM_DES
ISSUERS_STOCK
MAKE_WHOLE_CALL_SPREAD
SEC_DATE_2A_7
SINKING_FUND_FACTOR
COMPOUNDING_INTEREST_INDICATOR
FLT_DIGITS_PRECISION
OBSRVTN_PERD_ADJSTD_DAYS
PAY_DELAY_DAYS
RESET_DAY_CONVENTION
CLASS
CLASSIFICATION_LEVEL_1_CODE
CLASSIFICATION_LEVEL_1_NAME
CLASSIFICATION_LEVEL_2_CODE
CLASSIFICATION_LEVEL_2_NAME
CLASSIFICATION_SCHEME
LOCKT_EFFCTVE_DT
144A_FLAG
AMT_ISSUED
AMT_OUTSTANDING
ANNOUNCE_DT
BASE_CPI
BB_COMPOSITE
BICS_LEVEL_1_SECTOR_NAME
BICS_LEVEL_2_INDUSTRY_GROUP_NAME
BICS_LEVEL_3_INDUSTRY_NAME
BICS_LEVEL_4_SUB_INDUSTRY_NAME
BICS_LEVEL_5_SEGMENT_NAME
BICS_LEVEL_6_SEGMENT_NAME
BICS_LEVEL_7_SEGMENT_NAME
BLOOMBERG_CFI_CODE
CALC_MATURITY
CALC_TYP
CALC_TYP_DES
CALENDAR_CODE
CALL_ANNOUNCEMENT_DATE
CALL_DAYS_NOTICE
CALL_DISCRETE
CALL_FEATURE
CALL_SCHEDULE
CALLABLE
CALLED
CALLED_DT
CALLED_PX
CDS_DEBT_TYP
CFI_CODE
CMPD_FREQ_CNV_YLD
CNTRY_ISSUE_ISO
CNTRY_OF_DOMICILE
CNTRY_OF_INCORPORATION
CNTRY_OF_RISK
COLLAT_TYP
COLLAT_TYPES
CONTINGENT_CNVS_END_DT
CONTINGENT_CNVS_TRIGGER
CONV_MAKE_WHOLE
CONVERSION_REFIX_HISTORY
CONVERTIBLE
COUNTRY_ISO
COUPON_TYPE_RESET_DATE
CPI_OFFSET
CPN
CPN_CAP
CPN_CRNCY
CPN_FLOOR
CPN_FREQ
CPN_TYP
CRNCY
CURRENT_DVD_THRESHOLD
CV_CNVS_PX
CV_COMMON_ISIN
CV_COMMON_TICKER_EXCH
CV_MANDATORY_CNVS
CV_START_DT
CV_UNTIL
DAY_CNT_DES
DAY_PAYER_FREQ
DAYS_TO_SETTLE
DEFAULT_DATE
DELIVERY_TYP
DES_CASH_FLOW
DES_NOTES
DUAL_CRNCY
DVD_PROTECTION
EX_DIV_CALENDAR
EX_DIV_DAYS
EX_DVD_SCHEDULE
EXCH_CODE
EXT_CAP_CPN_SCHED
EXTENDIBLE
FACTOR_SCHEDULE
FINAL_MATURITY
FIRST_CALL_DT_ISSUANCE
FIRST_CPN_DT
FIRST_CPN_PERIOD_TYP
FIRST_SETTLE_DT
FIX_FLT_CPN_FREQ
FIX_FLT_DAY_CNT
FIXED
FLOATER
FLT_BENCH_MULTIPLIER
FLT_CPN_CONVENTION
FLT_CPN_HIST
FLT_DAYS_PRIOR
FLT_MAX_CPN
FLT_MIN_CPN
FLT_PAY_DAY
FLT_PAY_HOLIDAY_CDR
FLT_REFIX_HOLIDAY_CDR
FLT_SPREAD
GICS_INDUSTRY_GROUP_NAME
GICS_INDUSTRY_NAME
GICS_SECTOR_NAME
ID_BB
ID_BB_GLOBAL
ID_BB_SEC_NUM_DES
ID_BB_ULTIMATE_PARENT_CO_NAME
ID_BB_UNIQUE
ISIN
ID_CUSIP_ID_NUM
ID_CUSIP_REAL
ID_ISIN
ID_SEDOL1
INDUSTRY_GROUP
INDUSTRY_SECTOR
INDUSTRY_SUBGROUP
INFLATION_LAG
INFLATION_LINKED_INDICATOR
INT_ACC
INT_ACC_DT
IS_COVERED
IS_DAY_PAYER
IS_FIX_TO_FLOAT
IS_FLOAT_TO_FIX
IS_ISLAMIC
IS_PERPETUAL
IS_REG_S
IS_UNIT_TRADED
ISSUE_DT
ISSUE_PX
ISSUER
LAST_CALLABLE_DATE
LAST_CPN_PERIOD_TYP
LEAD_MGR
MAKE_WHOLE_CALL
MANDATORY_MINIMUM_CONVERSION_PX
MARKET_QUOTE_TYPE
MARKET_SECTOR
MATURITY
MIFID_SENIORITY_OF_BOND
MIN_INCREMENT
MIN_PIECE
MTY_YEARS
MULTI_CPN_SCHEDULE
MULTI_CPN_SCHEDULE_TYP
MUNI_MTY_SIZE
NXT_CPN_DT
PAR_AMT
PARSEKYABLE_DES
PAY_IN_KIND_BONDS
PAY_IN_KIND_END_DT
PAY_IN_KIND_START_DT
PAYMENT_IN_KIND_COUPON
PAYMENT_RANK
PCT_PAR_QUOTED
PENULTIMATE_CPN_DT
POST_EURO_PAR_AMT
PREV_CPN_DT
PREVIOUS_COUPON_SETTLE_DATE
PRINCIPAL_FACTOR
PUT_DAYS_NOTICE
PUT_DISCRETE
PUT_FEATURE
PUT_SCHEDULE
PUTABLE
PX_DIRTY_CLEAN
QUOTE_TYP
REAL_BLOOMBERG_DEPT_DES
REDEMP_CRNCY
REDEMP_VAL
REFERENCE_INDEX
RESET_IDX
RISK_PARENT_NAME
RTG_FITCH
RTG_MOODY
RTG_SP
SEC_DATE
SECOND_CPN_DT
SECURITY_DES
SECURITY_TYP
SECURITY_TYP2
SERIES
SETTLE_DT
SHORT_AND_LONG_TERM_DEBT
SINK_SCHEDULE
SINK_SCHEDULE_AMT_TYP
SINKABLE
SOFT_CALL_BASIS
SOFT_CALL_DAYS
SOFT_CALL_OUT_OF
SOFT_CALL_OUT_OF_DAY_TYP
SOFT_CALL_PRICE_QUOTED_IN_PCT
SOFT_CALL_QUOTE_TYP
SOFT_CALL_SCHEDULE
SOFT_CALL_SCHEDULE_EXTENDED
SOFT_CALL_TRIGGER
SOFT_CALL_TRIGGER_QUOTED_IN_PCT
SOFT_CALL_TYP
STD_SECONDARY_MKT_SETTLEMENT_PER
STRIP_TYPE
STRIPPED_BOND_IDENTIFIER
STRUCTURED_NOTE
STRUCTURED_NOTE_CPN_FORMULA
TICKER
TRADE_CRNCY
WORKOUT_DT_MID
YAS_BNCHMRK_BOND
YRS_TO_MTY_ISSUE
ZERO_CPN</xsl:if><xsl:comment> end for corporates </xsl:comment> 
END-OF-FIELDS

START-OF-DATA
<xsl:apply-templates select="Request"/>END-OF-DATA
END-OF-FILE</xsl:template>
<xsl:template match="Request">#Identifier=<xsl:value-of select="Identifier"/>|<xsl:for-each select="OID"><xsl:value-of select="text()"/><xsl:if test="position()!=last()"><xsl:text>,</xsl:text></xsl:if></xsl:for-each>|<xsl:for-each select="MSGTYP"><xsl:value-of select="text()"/><xsl:if test="position()!=last()"><xsl:text>,</xsl:text></xsl:if></xsl:for-each><xsl:text>
</xsl:text>
    <xsl:value-of select="Identifier"/><xsl:text> </xsl:text>
    <xsl:if test="Param[@Key='PricingSource']"><xsl:value-of select="Param[@Key='PricingSource']"/><xsl:text> </xsl:text></xsl:if>
    <xsl:if test="Param[@Key='Header_YELLOWKEY']"><xsl:value-of select="Param[@Key='Header_YELLOWKEY']"/><xsl:text> </xsl:text></xsl:if>
    <xsl:if test="Param[@Key='Exchange']"><xsl:value-of select="Param[@Key='Exchange']"/><xsl:text> </xsl:text></xsl:if>
    <xsl:if test="Param[@Key='MarketSector']"><xsl:value-of select="Param[@Key='MarketSector']"/><xsl:text> </xsl:text></xsl:if>| <xsl:value-of select="IDContext"/>
   <xsl:if test="Param[@Key='NumberofOverrides']"><xsl:text></xsl:text>|<xsl:value-of select="Param[@Key='NumberofOverrides']"/>
   <xsl:if test="Param[@Key='OverridingField']"><xsl:text></xsl:text>|<xsl:value-of select="Param[@Key='OverridingField']"/></xsl:if>
   <xsl:if test="Param[@Key='PricingSource']"><xsl:text></xsl:text>|<xsl:value-of select="Param[@Key='PricingSource']"/><xsl:text></xsl:text>|</xsl:if></xsl:if><xsl:text>
</xsl:text>
</xsl:template>


</xsl:stylesheet><!-- Stylus Studio meta-information - (c) 2004-2005. Progress Software Corporation. All rights reserved.
<metaInformation>
<scenarios/><MapperMetaTag><MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no"/><MapperBlockPosition></MapperBlockPosition><TemplateContext></TemplateContext><MapperFilter side="source"></MapperFilter></MapperMetaTag>
</metaInformation>
-->
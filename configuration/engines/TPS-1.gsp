<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.22">
<package-comment/>
<businessobject displayString="TPS-1" type="com.j2fe.config.ContainerConfig">
<com.j2fe.config.ContainerConfig id="0">
<configValues id="1">
<positionsConfig id="2">
<IADIACRetentionDays>0</IADIACRetentionDays>
<IAExcludeATEVIndicator>true</IAExcludeATEVIndicator>
<ILOGEngineCount>8</ILOGEngineCount>
<ILOGRuleDir id="3">$INSTALL_ROOT/rulefile</ILOGRuleDir>
<SRILOGRuleExtensionClass id="4"/>
<createMissingDS>false</createMissingDS>
<deltaSnapArchiveCount>0</deltaSnapArchiveCount>
<enableACAHSuppression>false</enableACAHSuppression>
<enableAnticipated>true</enableAnticipated>
<enableBalanceAgent>false</enableBalanceAgent>
<enableCrossRateBasis>false</enableCrossRateBasis>
<enableDeltaSnapshot>true</enableDeltaSnapshot>
<enableEncumLookup>true</enableEncumLookup>
<enableExtendedKeys>false</enableExtendedKeys>
<enableFastpath>false</enableFastpath>
<enableHistoryAgent>false</enableHistoryAgent>
<enableLockSubsequentEvents>true</enableLockSubsequentEvents>
<enableSummaryAgent>false</enableSummaryAgent>
<enableTransactionLog>true</enableTransactionLog>
<enableValuations>false</enableValuations>
<executeILogRule>false</executeILogRule>
<lockType>A</lockType>
<processingLocationGroup>Disabled</processingLocationGroup>
<skipSevtEV>PART</skipSevtEV>
<suppressZeroJournals>true</suppressZeroJournals>
</positionsConfig>
<referenceConfig id="5">
<VTTRMode>false</VTTRMode>
<cacheTableObjectResults id="6">FT_T_MKID;FT_T_ISID;FT_T_GUNT;FT_T_INCL;FT_T_ISSU</cacheTableObjectResults>
<cacheTableObjects>true</cacheTableObjects>
<completeOnly>false</completeOnly>
<enableAuditTrail>false</enableAuditTrail>
<enableChangeApproval>true</enableChangeApproval>
<enableConditionalCompleteness>false</enableConditionalCompleteness>
<enableDefinitionOfEOI>false</enableDefinitionOfEOI>
<enableDeprecatedChangeApprovalLogic>false</enableDeprecatedChangeApprovalLogic>
<enableImplicitDelete>false</enableImplicitDelete>
<enableInternalDomainValueCheck>true</enableInternalDomainValueCheck>
<enableModel>true</enableModel>
<enableVSH>true</enableVSH>
<extendedInternalDomainValueCheck>true</extendedInternalDomainValueCheck>
<normalLockExpiryDays id="7">0</normalLockExpiryDays>
<perpetualLockExpiryDays idref="7"/>
<ruleDlls id="8">GenericRules;CamsRules;BenchmarkRules;SRJavaRules;DataWarehouseRules</ruleDlls>
<tableDlls id="9">DynamicTO</tableDlls>
<useChangeApprPostAuthorization>false</useChangeApprPostAuthorization>
<useSubscriptionNotification>false</useSubscriptionNotification>
<useTimeSeries>true</useTimeSeries>
</referenceConfig>
<taskDirectorConfig id="10">
<preSelectAccountsByBalanceFilter>false</preSelectAccountsByBalanceFilter>
</taskDirectorConfig>
</configValues>
<lastChangeUser id="11">user1</lastChangeUser>
<lastUpdate id="12">2022-05-04T16:05:20.000+0530</lastUpdate>
<name id="13">TPS-1</name>
</com.j2fe.config.ContainerConfig>
</businessobject>
</goldensource-package>

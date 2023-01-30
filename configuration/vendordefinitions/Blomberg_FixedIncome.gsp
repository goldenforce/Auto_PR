<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.07">
<package-comment/>
<businessobject displayString="BB_DL_Additional_Fieldset_Corp_Govt_Conv" type="com.j2fe.processing.BusinessFeed">
<com.j2fe.processing.BusinessFeed id="0">
<dataSource id="1">
<businessFeeds id="2" type="java.util.HashSet">
<item idref="0" type="com.j2fe.processing.BusinessFeed"/>
</businessFeeds>
<id id="3">BB</id>
</dataSource>
<feedDefinition id="4">db://resource/xml/feeds/bloomberg/getdata.xml</feedDefinition>
<fileDefinitions id="5" type="java.util.ArrayList"/>
<grouping>false</grouping>
<messageTypes id="6" type="java.util.HashSet">
<item id="7" type="com.j2fe.processing.MessageType">
<applicationName id="8">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="0"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd id="9">false</createMarketRealTimeInd>
<dataLineageEnabled>true</dataLineageEnabled>
<endOfFileEvents id="10" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="11">db://resource/mapping/Bloomberg/BBCorpGovtConv_Additional.omdx</mappingResource>
<metaData id="12" type="java.util.HashMap"/>
<name id="13">BBCorpGovtConv_Additional</name>
<nearRealtimePublishing>true</nearRealtimePublishing>
<nearRealtimePublishingEvents id="14" type="java.util.ArrayList"/>
<publishingEvents id="15" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>Staging</saveVendorDataType>
<streetLamp id="16">
<filterVDDBNotifications>false</filterVDDBNotifications>
<inputMessageSaveOnly>false</inputMessageSaveOnly>
<saveInputMessage>ERROR</saveInputMessage>
<saveLowLevelNotificationsOnlyForErrors>false</saveLowLevelNotificationsOnlyForErrors>
<saveNotifications>WARNING</saveNotifications>
<saveProcessedMessage>ERROR</saveProcessedMessage>
<saveTranslatedMessage>ERROR</saveTranslatedMessage>
<saveUnprocessedInputMessage>false</saveUnprocessedInputMessage>
</streetLamp>
<syncPublishing>false</syncPublishing>
</item>
</messageTypes>
<name id="17">BB_DL_Additional_Fieldset_Corp_Govt_Conv</name>
</com.j2fe.processing.BusinessFeed>
</businessobject>
<businessobject displayString="Bloomberg_DL_Corp_Gov_Conv" type="com.j2fe.processing.BusinessFeed">
<com.j2fe.processing.BusinessFeed id="0">
<dataSource id="1">
<businessFeeds id="2" type="java.util.HashSet">
<item idref="0" type="com.j2fe.processing.BusinessFeed"/>
</businessFeeds>
<id id="3">BB</id>
</dataSource>
<feedDefinition id="4">db://resource/xml/feeds/bloomberg/getdata.xml</feedDefinition>
<fileDefinitions id="5" type="java.util.ArrayList">
<item id="6" type="com.j2fe.processing.FileDefinition">
<file id="7">corp_pfd_convert_*.dif.gz.enc.20*</file>
<group id="8">4</group>
<messageType id="9">
<applicationName id="10">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="0"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd id="11">false</createMarketRealTimeInd>
<dataLineageEnabled>true</dataLineageEnabled>
<endOfFileEvents id="12" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="13">db://resource/mapping/Bloomberg/BBCorpGovtConvPrfd.omdx</mappingResource>
<metaData id="14" type="java.util.HashMap"/>
<name id="15">BBCorpGovtConvPrfd</name>
<nearRealtimePublishing>true</nearRealtimePublishing>
<nearRealtimePublishingEvents id="16" type="java.util.ArrayList"/>
<publishingEvents id="17" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>Staging</saveVendorDataType>
<streetLamp id="18">
<filterVDDBNotifications>false</filterVDDBNotifications>
<inputMessageSaveOnly>false</inputMessageSaveOnly>
<saveInputMessage>ERROR</saveInputMessage>
<saveLowLevelNotificationsOnlyForErrors>false</saveLowLevelNotificationsOnlyForErrors>
<saveNotifications>ERROR</saveNotifications>
<saveProcessedMessage>DONOTSAVE</saveProcessedMessage>
<saveTranslatedMessage>DONOTSAVE</saveTranslatedMessage>
<saveUnprocessedInputMessage>false</saveUnprocessedInputMessage>
</streetLamp>
<syncPublishing>false</syncPublishing>
</messageType>
</item>
<item id="19" type="com.j2fe.processing.FileDefinition">
<file id="20">corp_pfd_convert_*.out.gz.enc.20*</file>
<group id="21">3</group>
<messageType idref="9"/>
</item>
<item id="22" type="com.j2fe.processing.FileDefinition">
<file id="23">govt_agency_regl_*.dif.gz.enc.20*</file>
<group id="24">2</group>
<messageType idref="9"/>
</item>
<item id="25" type="com.j2fe.processing.FileDefinition">
<file id="26">govt_agency_regl_*.out.gz.enc.20*</file>
<group id="27">1</group>
<messageType idref="9"/>
</item>
<item id="28" type="com.j2fe.processing.FileDefinition">
<file id="29">govt_national_*.dif.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="9"/>
</item>
<item id="30" type="com.j2fe.processing.FileDefinition">
<file id="31">govt_national_*.out.gz.enc.20*</file>
<group idref="27"/>
<messageType idref="9"/>
</item>
<item id="32" type="com.j2fe.processing.FileDefinition">
<file id="33">corpPfdAsiaV2.out.gz.enc.20*</file>
<group idref="27"/>
<messageType idref="9"/>
</item>
<item id="34" type="com.j2fe.processing.FileDefinition">
<file id="35">corpPfdEuroV2.out.gz.enc.20*</file>
<group idref="27"/>
<messageType idref="9"/>
</item>
<item id="36" type="com.j2fe.processing.FileDefinition">
<file id="37">corpPfdLamrV2.out.gz.enc.20*</file>
<group idref="27"/>
<messageType idref="9"/>
</item>
<item id="38" type="com.j2fe.processing.FileDefinition">
<file id="39">corpPfdNamrV2.out.gz.enc.20*</file>
<group idref="27"/>
<messageType idref="9"/>
</item>
<item id="40" type="com.j2fe.processing.FileDefinition">
<file id="41">corpPfdAsiaV2.dif.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="9"/>
</item>
<item id="42" type="com.j2fe.processing.FileDefinition">
<file id="43">corpPfdEuroV2.dif.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="9"/>
</item>
<item id="44" type="com.j2fe.processing.FileDefinition">
<file id="45">corpPfdLamrV2.dif.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="9"/>
</item>
<item id="46" type="com.j2fe.processing.FileDefinition">
<file id="47">corpPfdNamrV2.dif.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="9"/>
</item>
<item id="48" type="com.j2fe.processing.FileDefinition">
<file id="49">fixedincomeBo.out.gz.enc.20*</file>
<group id="50">0</group>
<messageType idref="9"/>
</item>
<item id="51" type="com.j2fe.processing.FileDefinition">
<file id="52">fixedincomeBo.dif.gz.enc.20*</file>
<group idref="50"/>
<messageType idref="9"/>
</item>
<item id="53" type="com.j2fe.processing.FileDefinition">
<file id="54">fixedincome_bo_*.dif.gz.enc.20*</file>
<group idref="50"/>
<messageType idref="9"/>
</item>
<item id="55" type="com.j2fe.processing.FileDefinition">
<file id="56">fixedincome_bo_*.out.gz.enc.20*</file>
<group idref="50"/>
<messageType idref="9"/>
</item>
</fileDefinitions>
<grouping>false</grouping>
<messageTypes id="57" type="java.util.HashSet">
<item idref="9" type="com.j2fe.processing.MessageType"/>
</messageTypes>
<name id="58">Bloomberg_DL_Corp_Gov_Conv</name>
</com.j2fe.processing.BusinessFeed>
</businessobject>
<businessobject displayString="BloombergXTFixedIncomeDescriptiveandBulk" type="com.j2fe.processing.BusinessFeed">
<com.j2fe.processing.BusinessFeed id="0">
<dataSource id="1">
<businessFeeds id="2" type="java.util.HashSet">
<item idref="0" type="com.j2fe.processing.BusinessFeed"/>
</businessFeeds>
<id id="3">BB</id>
</dataSource>
<feedDefinition id="4">db://resource/xml/feeds/bloomberg/getextended.xml</feedDefinition>
<fileDefinitions id="5" type="java.util.ArrayList">
<item id="6" type="com.j2fe.processing.FileDefinition">
<file id="7">fixedincome_ext_asia.dif.gz.enc.20*</file>
<group id="8">4</group>
<messageType id="9">
<applicationName id="10">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="0"/>
<caputureProcessMessage>true</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd id="11">false</createMarketRealTimeInd>
<dataLineageEnabled>true</dataLineageEnabled>
<endOfFileEvents id="12" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="13">db://resource/mapping/Bloomberg/BBXTFixedIncome.mdx</mappingResource>
<metaData id="14" type="java.util.HashMap"/>
<name id="15">BBXTFixedIncome</name>
<nearRealtimePublishing>true</nearRealtimePublishing>
<nearRealtimePublishingEvents id="16" type="java.util.ArrayList"/>
<publishingEvents id="17" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>Staging</saveVendorDataType>
<streetLamp id="18">
<filterVDDBNotifications>false</filterVDDBNotifications>
<inputMessageSaveOnly>false</inputMessageSaveOnly>
<saveInputMessage>ERROR</saveInputMessage>
<saveLowLevelNotificationsOnlyForErrors>false</saveLowLevelNotificationsOnlyForErrors>
<saveNotifications>ERROR</saveNotifications>
<saveProcessedMessage>ERROR</saveProcessedMessage>
<saveTranslatedMessage>ERROR</saveTranslatedMessage>
<saveUnprocessedInputMessage>false</saveUnprocessedInputMessage>
</streetLamp>
<syncPublishing>false</syncPublishing>
</messageType>
</item>
<item id="19" type="com.j2fe.processing.FileDefinition">
<file id="20">fixedincome_ext_asia.out.gz.enc.20*</file>
<group id="21">3</group>
<messageType idref="9"/>
</item>
<item id="22" type="com.j2fe.processing.FileDefinition">
<file id="23">fixedincome_ext_euro.dif.gz.enc.20*</file>
<group idref="8"/>
<messageType idref="9"/>
</item>
<item id="24" type="com.j2fe.processing.FileDefinition">
<file id="25">fixedincome_ext_euro.out.gz.enc.20*</file>
<group idref="21"/>
<messageType idref="9"/>
</item>
<item id="26" type="com.j2fe.processing.FileDefinition">
<file id="27">fixedincome_ext_lamr.dif.gz.enc.20*</file>
<group idref="8"/>
<messageType idref="9"/>
</item>
<item id="28" type="com.j2fe.processing.FileDefinition">
<file id="29">fixedincome_ext_lamr.out.gz.enc.20*</file>
<group idref="21"/>
<messageType idref="9"/>
</item>
<item id="30" type="com.j2fe.processing.FileDefinition">
<file id="31">fixedincome_ext_namr.dif.gz.enc.20*</file>
<group idref="8"/>
<messageType idref="9"/>
</item>
<item id="32" type="com.j2fe.processing.FileDefinition">
<file id="33">fixedincome_ext_namr.out.gz.enc.20*</file>
<group idref="21"/>
<messageType idref="9"/>
</item>
<item id="34" type="com.j2fe.processing.FileDefinition">
<file id="35">fixedIncomeExtAsiaV2*.out.gz.enc.20*</file>
<group idref="21"/>
<messageType idref="9"/>
</item>
<item id="36" type="com.j2fe.processing.FileDefinition">
<file id="37">fixedIncomeExtEuroV2*.out.gz.enc.20*</file>
<group idref="21"/>
<messageType idref="9"/>
</item>
<item id="38" type="com.j2fe.processing.FileDefinition">
<file id="39">fixedIncomeExtLamrV2*.out.gz.enc.20*</file>
<group idref="21"/>
<messageType idref="9"/>
</item>
<item id="40" type="com.j2fe.processing.FileDefinition">
<file id="41">fixedIncomeExtNamrV2*.out.gz.enc.20*</file>
<group idref="21"/>
<messageType idref="9"/>
</item>
<item id="42" type="com.j2fe.processing.FileDefinition">
<file id="43">fixedIncomeExtAsiaV2*.dif.gz.enc.20*</file>
<group idref="8"/>
<messageType idref="9"/>
</item>
<item id="44" type="com.j2fe.processing.FileDefinition">
<file id="45">fixedIncomeExtEuroV2*.dif.gz.enc.20*</file>
<group idref="8"/>
<messageType idref="9"/>
</item>
<item id="46" type="com.j2fe.processing.FileDefinition">
<file id="47">fixedIncomeExtLamrV2*.dif.gz.enc.20*</file>
<group idref="8"/>
<messageType idref="9"/>
</item>
<item id="48" type="com.j2fe.processing.FileDefinition">
<file id="49">fixedIncomeExtNamrV2*.dif.gz.enc.20*</file>
<group idref="8"/>
<messageType idref="9"/>
</item>
</fileDefinitions>
<grouping>false</grouping>
<messageTypes id="50" type="java.util.HashSet">
<item idref="9" type="com.j2fe.processing.MessageType"/>
</messageTypes>
<name id="51">BloombergXTFixedIncomeDescriptiveandBulk</name>
</com.j2fe.processing.BusinessFeed>
</businessobject>
<businessobject displayString="P72_CorpGov" type="com.j2fe.processing.BusinessFeed">
<com.j2fe.processing.BusinessFeed id="0">
<dataSource id="1">
<businessFeeds id="2" type="java.util.HashSet">
<item idref="0" type="com.j2fe.processing.BusinessFeed"/>
</businessFeeds>
<id id="3">BB</id>
</dataSource>
<feedDefinition id="4">com/j2fe/feeds/bloomberg/getextended.xml</feedDefinition>
<fileDefinitions id="5" type="java.util.ArrayList"/>
<grouping>false</grouping>
<messageTypes id="6" type="java.util.HashSet">
<item id="7" type="com.j2fe.processing.MessageType">
<applicationName id="8">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="0"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd id="9">false</createMarketRealTimeInd>
<dataLineageEnabled>true</dataLineageEnabled>
<endOfFileEvents id="10" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="11">db://resource/mapping/Bloomberg/BBCorpGovtConvPrfd.omdx</mappingResource>
<metaData id="12" type="java.util.HashMap"/>
<name id="13">P72_CorpGovt_RR</name>
<nearRealtimePublishing>true</nearRealtimePublishing>
<nearRealtimePublishingEvents id="14" type="java.util.ArrayList"/>
<publishingEvents id="15" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>Staging</saveVendorDataType>
<streetLamp id="16">
<filterVDDBNotifications>false</filterVDDBNotifications>
<inputMessageSaveOnly>false</inputMessageSaveOnly>
<saveInputMessage>ERROR</saveInputMessage>
<saveLowLevelNotificationsOnlyForErrors>false</saveLowLevelNotificationsOnlyForErrors>
<saveNotifications>WARNING</saveNotifications>
<saveProcessedMessage>ERROR</saveProcessedMessage>
<saveTranslatedMessage>ERROR</saveTranslatedMessage>
<saveUnprocessedInputMessage>false</saveUnprocessedInputMessage>
</streetLamp>
<syncPublishing>false</syncPublishing>
</item>
<item id="17" type="com.j2fe.processing.MessageType">
<applicationName id="18">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="0"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="9"/>
<dataLineageEnabled>true</dataLineageEnabled>
<endOfFileEvents id="19" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="20">db://resource/mapping/Bloomberg/BBCorpGovtConv_Additional.omdx</mappingResource>
<metaData id="21" type="java.util.HashMap"/>
<name id="22">P72_CorpGov_Additional_RR</name>
<nearRealtimePublishing>true</nearRealtimePublishing>
<nearRealtimePublishingEvents id="23" type="java.util.ArrayList"/>
<publishingEvents id="24" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>Staging</saveVendorDataType>
<streetLamp id="25">
<filterVDDBNotifications>false</filterVDDBNotifications>
<inputMessageSaveOnly>false</inputMessageSaveOnly>
<saveInputMessage>ERROR</saveInputMessage>
<saveLowLevelNotificationsOnlyForErrors>false</saveLowLevelNotificationsOnlyForErrors>
<saveNotifications>WARNING</saveNotifications>
<saveProcessedMessage>ERROR</saveProcessedMessage>
<saveTranslatedMessage>ERROR</saveTranslatedMessage>
<saveUnprocessedInputMessage>false</saveUnprocessedInputMessage>
</streetLamp>
<syncPublishing>false</syncPublishing>
</item>
<item id="26" type="com.j2fe.processing.MessageType">
<applicationName id="27">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="0"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="9"/>
<dataLineageEnabled>true</dataLineageEnabled>
<endOfFileEvents id="28" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="29">db://resource/mapping/Bloomberg/BBXTFixedIncome.mdx</mappingResource>
<metaData id="30" type="java.util.HashMap"/>
<name id="31">P72_CorpGov_Extn_RR</name>
<nearRealtimePublishing>true</nearRealtimePublishing>
<nearRealtimePublishingEvents id="32" type="java.util.ArrayList"/>
<publishingEvents id="33" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>Staging</saveVendorDataType>
<streetLamp id="34">
<filterVDDBNotifications>false</filterVDDBNotifications>
<inputMessageSaveOnly>false</inputMessageSaveOnly>
<saveInputMessage>ERROR</saveInputMessage>
<saveLowLevelNotificationsOnlyForErrors>false</saveLowLevelNotificationsOnlyForErrors>
<saveNotifications>WARNING</saveNotifications>
<saveProcessedMessage>ERROR</saveProcessedMessage>
<saveTranslatedMessage>ERROR</saveTranslatedMessage>
<saveUnprocessedInputMessage>false</saveUnprocessedInputMessage>
</streetLamp>
<syncPublishing>false</syncPublishing>
</item>
</messageTypes>
<name id="35">P72_CorpGov</name>
</com.j2fe.processing.BusinessFeed>
</businessobject>
</goldensource-package>

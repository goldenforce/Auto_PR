<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.22">
<package-comment/>
<businessobject displayString="Reuters" type="com.j2fe.processing.DataSource">
<com.j2fe.processing.DataSource id="0">
<businessFeeds id="1" type="java.util.HashSet">
<item id="2" type="com.j2fe.processing.BusinessFeed">
<dataSource idref="0"/>
<feedDefinition id="3">db://resource/xml/feeds/reuters/DSEPlusLineByLine.xml</feedDefinition>
<fileDefinitions id="4" type="java.util.ArrayList">
<item id="5" type="com.j2fe.processing.FileDefinition">
<file id="6">equities_amer_init.INT.*.txt.zip</file>
<group id="7">1</group>
<messageType id="8">
<applicationName id="9">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="2"/>
<caputureProcessMessage>true</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd id="10">false</createMarketRealTimeInd>
<dataLineageEnabled>true</dataLineageEnabled>
<endOfFileEvents id="11" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="12">db://resource/mapping/reuters/RFTDSP_Equities.omdx</mappingResource>
<metaData id="13" type="java.util.HashMap">
<entry>
<key id="14" type="java.lang.String">DATA_SRC_ID</key>
<value id="15" type="java.lang.String">RFTDSP</value>
</entry>
</metaData>
<name id="16">RFTDSP_Equities</name>
<nearRealtimePublishing>true</nearRealtimePublishing>
<nearRealtimePublishingEvents id="17" type="java.util.ArrayList">
<item id="18" type="java.lang.String">PublishSubscriptionRealTime</item>
</nearRealtimePublishingEvents>
<publishingEvents id="19" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>Staging</saveVendorDataType>
<streetLamp id="20">
<filterVDDBNotifications>false</filterVDDBNotifications>
<inputMessageSaveOnly>false</inputMessageSaveOnly>
<saveInputMessage>SUCCESS</saveInputMessage>
<saveLowLevelNotificationsOnlyForErrors>false</saveLowLevelNotificationsOnlyForErrors>
<saveNotifications>SUCCESS</saveNotifications>
<saveProcessedMessage>SUCCESS</saveProcessedMessage>
<saveTranslatedMessage>SUCCESS</saveTranslatedMessage>
<saveUnprocessedInputMessage>false</saveUnprocessedInputMessage>
</streetLamp>
<syncPublishing>false</syncPublishing>
</messageType>
</item>
<item id="21" type="com.j2fe.processing.FileDefinition">
<file id="22">equities_asia_init.INT.*.txt.zip</file>
<group idref="7"/>
<messageType idref="8"/>
</item>
<item id="23" type="com.j2fe.processing.FileDefinition">
<file id="24">equities_euro_init.INT.*.txt.zip</file>
<group idref="7"/>
<messageType idref="8"/>
</item>
<item id="25" type="com.j2fe.processing.FileDefinition">
<file id="26">equities_global_delta.REF.*.txt.zip</file>
<group idref="7"/>
<messageType idref="8"/>
</item>
<item id="27" type="com.j2fe.processing.FileDefinition">
<file id="28">funds_amer_init.INT.*.txt.zip</file>
<group idref="7"/>
<messageType id="29">
<applicationName id="30">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="2"/>
<caputureProcessMessage>true</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="10"/>
<dataLineageEnabled>true</dataLineageEnabled>
<endOfFileEvents id="31" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="32">db://resource/mapping/reuters/RFTDSP_Mutual_Funds.omdx</mappingResource>
<metaData id="33" type="java.util.HashMap">
<entry>
<key id="34" type="java.lang.String">DATA_SRC_ID</key>
<value id="35" type="java.lang.String">RFTDSP</value>
</entry>
</metaData>
<name id="36">RFTDSP_Mutual_Funds</name>
<nearRealtimePublishing>true</nearRealtimePublishing>
<nearRealtimePublishingEvents id="37" type="java.util.ArrayList">
<item id="38" type="java.lang.String">PublishSubscriptionRealTime</item>
</nearRealtimePublishingEvents>
<publishingEvents id="39" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>Staging</saveVendorDataType>
<streetLamp id="40">
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
</messageType>
</item>
<item id="41" type="com.j2fe.processing.FileDefinition">
<file id="42">funds_asia_init.INT.*.txt.zip</file>
<group idref="7"/>
<messageType idref="29"/>
</item>
<item id="43" type="com.j2fe.processing.FileDefinition">
<file id="44">funds_euro_init.INT.*.txt.zip</file>
<group idref="7"/>
<messageType idref="29"/>
</item>
<item id="45" type="com.j2fe.processing.FileDefinition">
<file id="46">funds_global_delta.REF.*.txt.zip</file>
<group idref="7"/>
<messageType idref="29"/>
</item>
<item id="47" type="com.j2fe.processing.FileDefinition">
<file id="48">warrants_amer_init.INT.*.txt.zip</file>
<group idref="7"/>
<messageType id="49">
<applicationName id="50">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="2"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="10"/>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="51" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="52">db://resource/mapping/reuters/RFTDSP_Warrants.omdx</mappingResource>
<metaData id="53" type="java.util.HashMap">
<entry>
<key id="54" type="java.lang.String">DATA_SRC_ID</key>
<value id="55" type="java.lang.String">RFTDSP</value>
</entry>
</metaData>
<name id="56">RFTDSP_Warrants</name>
<nearRealtimePublishing>true</nearRealtimePublishing>
<nearRealtimePublishingEvents id="57" type="java.util.ArrayList">
<item id="58" type="java.lang.String">PublishSubscriptionRealTime</item>
</nearRealtimePublishingEvents>
<publishingEvents id="59" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>Staging</saveVendorDataType>
<streetLamp id="60">
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
</messageType>
</item>
<item id="61" type="com.j2fe.processing.FileDefinition">
<file id="62">warrants_asia_init.INT.*.txt.zip</file>
<group idref="7"/>
<messageType idref="49"/>
</item>
<item id="63" type="com.j2fe.processing.FileDefinition">
<file id="64">warrants_euro_init.INT.*.txt.zip</file>
<group idref="7"/>
<messageType idref="49"/>
</item>
<item id="65" type="com.j2fe.processing.FileDefinition">
<file id="66">warrants_global_delta.REF.*.txt.zip</file>
<group idref="7"/>
<messageType idref="49"/>
</item>
</fileDefinitions>
<grouping>true</grouping>
<messageTypes id="67" type="java.util.HashSet">
<item idref="8" type="com.j2fe.processing.MessageType"/>
<item idref="49" type="com.j2fe.processing.MessageType"/>
<item idref="29" type="com.j2fe.processing.MessageType"/>
</messageTypes>
<name id="68">Refinitiv_DataScope_Plus_EQ_Descriptive</name>
</item>
</businessFeeds>
<id id="69">REUTERS</id>
<name id="70">Reuters</name>
<requestTypes id="71" type="java.util.HashSet"/>
</com.j2fe.processing.DataSource>
</businessobject>
</goldensource-package>

<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.17">
<package-comment/>
<businessobject displayString="CAPCO" type="com.j2fe.processing.DataSource">
<com.j2fe.processing.DataSource id="0">
<businessFeeds id="1" type="java.util.HashSet">
<item id="2" type="com.j2fe.processing.BusinessFeed">
<dataSource idref="0"/>
<feedDefinition id="3">db://resource/xml/feeds/CAPCO/CAPCO-splitter.xml</feedDefinition>
<fileDefinitions id="4" type="java.util.ArrayList">
<item id="5" type="com.j2fe.processing.FileDefinition">
<file id="6">ETF_*</file>
<group id="7">1</group>
<messageType id="8">
<applicationName id="9">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="2"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd id="10">false</createMarketRealTimeInd>
<dataLineageEnabled>true</dataLineageEnabled>
<endOfFileEvents id="11" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>false</isVDDB>
<mappingResource id="12">db://resource/mapping/CAPCO/CAPCO.mdx</mappingResource>
<metaData id="13" type="java.util.HashMap"/>
<name id="14">CAPCO_ETF</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<nearRealtimePublishingEvents id="15" type="java.util.ArrayList"/>
<publishingEvents id="16" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="17">
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
</fileDefinitions>
<grouping>false</grouping>
<messageTypes id="18" type="java.util.HashSet">
<item idref="8" type="com.j2fe.processing.MessageType"/>
</messageTypes>
<name id="19">CAPCO</name>
</item>
</businessFeeds>
<id id="20">CAPCO</id>
<name id="21">CAPCO</name>
<requestTypes id="22" type="java.util.HashSet"/>
</com.j2fe.processing.DataSource>
</businessobject>
</goldensource-package>

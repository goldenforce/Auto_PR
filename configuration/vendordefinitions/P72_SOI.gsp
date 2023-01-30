<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.17">
<package-comment/>
<businessobject displayString="P72_SOI" type="com.j2fe.processing.DataSource">
<com.j2fe.processing.DataSource id="0">
<businessFeeds id="1" type="java.util.HashSet">
<item id="2" type="com.j2fe.processing.BusinessFeed">
<dataSource idref="0"/>
<feedDefinition id="3">com/j2fe/feeds/LineByLine.xml</feedDefinition>
<fileDefinitions id="4" type="java.util.ArrayList"/>
<grouping>false</grouping>
<messageTypes id="5" type="java.util.HashSet">
<item id="6" type="com.j2fe.processing.MessageType">
<applicationName id="7">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="2"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd id="8">false</createMarketRealTimeInd>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="9" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>false</isVDDB>
<mappingResource id="10">db://resource/mapping/Custom/P72_SOI.mdx</mappingResource>
<metaData id="11" type="java.util.HashMap"/>
<name id="12">SOI</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<nearRealtimePublishingEvents id="13" type="java.util.ArrayList"/>
<publishingEvents id="14" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="15">
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
<name id="16">SOI</name>
</item>
</businessFeeds>
<id id="17">P72_SOI</id>
<name id="18">P72_SOI</name>
<requestTypes id="19" type="java.util.HashSet"/>
</com.j2fe.processing.DataSource>
</businessobject>
</goldensource-package>

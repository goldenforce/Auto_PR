<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.07">
<package-comment/>
<businessobject displayString="Bloomberg" type="com.j2fe.processing.DataSource">
<com.j2fe.processing.DataSource id="0">
<businessFeeds id="1" type="java.util.HashSet">
<item id="2" type="com.j2fe.processing.BusinessFeed">
<dataSource idref="0"/>
<feedDefinition id="3">db://resource/xml/feeds/bloomberg/getdata.xml</feedDefinition>
<fileDefinitions id="4" type="java.util.ArrayList">
<item id="5" type="com.j2fe.processing.FileDefinition">
<file id="6">mtge_abs_namr.dif.gz.enc</file>
<group id="7">2</group>
<messageType id="8">
<applicationName id="9">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="2"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd id="10">false</createMarketRealTimeInd>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="11" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="12">db://resource/mapping/Bloomberg/BBMortgageNonPool.omdx</mappingResource>
<metaData id="13" type="java.util.HashMap">
<entry>
<key id="14" type="java.lang.String">IssuerData</key>
<value id="15" type="java.lang.String">Y</value>
</entry>
<entry>
<key id="16" type="java.lang.String">SecurityData</key>
<value id="17" type="java.lang.String">Y</value>
</entry>
</metaData>
<name id="18">BBMortgageNonPool</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<nearRealtimePublishingEvents id="19" type="java.util.ArrayList"/>
<publishingEvents id="20" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="21">
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
<item id="22" type="com.j2fe.processing.FileDefinition">
<file id="23">mtge_abs_namr.out.gz.enc</file>
<group id="24">1</group>
<messageType idref="8"/>
</item>
<item id="25" type="com.j2fe.processing.FileDefinition">
<file id="26">mtge_cmbs_namr.dif.gz.enc</file>
<group idref="7"/>
<messageType idref="8"/>
</item>
<item id="27" type="com.j2fe.processing.FileDefinition">
<file id="28">mtge_cmbs_namr.out.gz.enc</file>
<group idref="24"/>
<messageType idref="8"/>
</item>
<item id="29" type="com.j2fe.processing.FileDefinition">
<file id="30">mtge_cmo_namr.dif.gz.enc</file>
<group idref="7"/>
<messageType idref="8"/>
</item>
<item id="31" type="com.j2fe.processing.FileDefinition">
<file id="32">mtge_cmo_namr.out.gz.enc</file>
<group idref="24"/>
<messageType idref="8"/>
</item>
<item id="33" type="com.j2fe.processing.FileDefinition">
<file id="34">mtge_wholeloan_namr.dif.gz.enc</file>
<group idref="7"/>
<messageType idref="8"/>
</item>
<item id="35" type="com.j2fe.processing.FileDefinition">
<file id="36">mtge_wholeloan_namr.out.gz.enc</file>
<group idref="24"/>
<messageType idref="8"/>
</item>
<item id="37" type="com.j2fe.processing.FileDefinition">
<file id="38">mtge_abs_namr.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="8"/>
</item>
<item id="39" type="com.j2fe.processing.FileDefinition">
<file id="40">mtge_abs_namr.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="8"/>
</item>
<item id="41" type="com.j2fe.processing.FileDefinition">
<file id="42">mtge_cmbs_namr.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="8"/>
</item>
<item id="43" type="com.j2fe.processing.FileDefinition">
<file id="44">mtge_cmbs_namr.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="8"/>
</item>
<item id="45" type="com.j2fe.processing.FileDefinition">
<file id="46">mtge_cmo_namr.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="8"/>
</item>
<item id="47" type="com.j2fe.processing.FileDefinition">
<file id="48">mtge_cmo_namr.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="8"/>
</item>
<item id="49" type="com.j2fe.processing.FileDefinition">
<file id="50">mtge_wholeloan_namr.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="8"/>
</item>
<item id="51" type="com.j2fe.processing.FileDefinition">
<file id="52">mtge_wholeloan_namr.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="8"/>
</item>
</fileDefinitions>
<grouping>false</grouping>
<messageTypes id="53" type="java.util.HashSet">
<item idref="8" type="com.j2fe.processing.MessageType"/>
</messageTypes>
<name id="54">Bloomberg_DL_CMO_Whole_Loans_CMBS</name>
</item>
<item id="55" type="com.j2fe.processing.BusinessFeed">
<dataSource idref="0"/>
<feedDefinition id="56">db://resource/xml/feeds/bloomberg/getdata.xml</feedDefinition>
<fileDefinitions id="57" type="java.util.ArrayList"/>
<grouping>false</grouping>
<messageTypes id="58" type="java.util.HashSet">
<item id="59" type="com.j2fe.processing.MessageType">
<businessEntity>false</businessEntity>
<businessFeed idref="55"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="10"/>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="60" type="java.util.ArrayList"/>
<isKeyStreaming>false</isKeyStreaming>
<isVDDB>true</isVDDB>
<metaData id="61" type="java.util.HashMap"/>
<name id="62">BBCancelScheduled</name>
<nearRealtimePublishing>true</nearRealtimePublishing>
<nearRealtimePublishingEvents id="63" type="java.util.ArrayList">
<item id="64" type="java.lang.String">PublishSubscriptionRealTime</item>
</nearRealtimePublishingEvents>
<publishingEvents id="65" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="66">
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
</item>
</messageTypes>
<name id="67">Bloomberg_Cancel_Scheduled_Feed</name>
</item>
<item id="68" type="com.j2fe.processing.BusinessFeed">
<dataSource idref="0"/>
<feedDefinition id="69">db://resource/xml/feeds/bloomberg/getdata.xml</feedDefinition>
<fileDefinitions id="70" type="java.util.ArrayList">
<item id="71" type="com.j2fe.processing.FileDefinition">
<file id="72">equity_warrant_*.dif.gz.enc.20*</file>
<group id="73">4</group>
<messageType id="74">
<applicationName id="75">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="68"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="10"/>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="76" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="77">db://resource/mapping/Bloomberg/BBGlobalWarrants.omdx</mappingResource>
<metaData id="78" type="java.util.HashMap"/>
<name id="79">BBGlobalWarrants</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<nearRealtimePublishingEvents id="80" type="java.util.ArrayList"/>
<publishingEvents id="81" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>Staging</saveVendorDataType>
<streetLamp id="82">
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
<item id="83" type="com.j2fe.processing.FileDefinition">
<file id="84">equity_warrant_*.out.gz.enc.20*</file>
<group id="85">3</group>
<messageType idref="74"/>
</item>
</fileDefinitions>
<grouping>false</grouping>
<messageTypes id="86" type="java.util.HashSet">
<item idref="74" type="com.j2fe.processing.MessageType"/>
</messageTypes>
<name id="87">Bloomberg_DL_Global_Warrants</name>
</item>
<item id="88" type="com.j2fe.processing.BusinessFeed">
<dataSource idref="0"/>
<feedDefinition id="89">db://resource/xml/feeds/bloomberg/getdata.xml</feedDefinition>
<fileDefinitions id="90" type="java.util.ArrayList">
<item id="91" type="com.j2fe.processing.FileDefinition">
<file id="92">*.px.hpc.gz.enc.20*</file>
<group id="93">0</group>
<messageType id="94">
<applicationName id="95">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="88"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="10"/>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="96" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="97">db://resource/mapping/Bloomberg/BBHistPriceCorrections.mdx</mappingResource>
<metaData id="98" type="java.util.HashMap">
<entry>
<key id="99" type="java.lang.String">DescriptiveData</key>
<value id="100" type="java.lang.String">Y</value>
</entry>
<entry>
<key id="101" type="java.lang.String">PriceData</key>
<value id="102" type="java.lang.String">Y</value>
</entry>
</metaData>
<name id="103">BBHistPriceCorrections</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<nearRealtimePublishingEvents id="104" type="java.util.ArrayList"/>
<publishingEvents id="105" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="106">
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
</fileDefinitions>
<grouping>false</grouping>
<messageTypes id="107" type="java.util.HashSet">
<item idref="94" type="com.j2fe.processing.MessageType"/>
</messageTypes>
<name id="108">BBHistPriceCorrections</name>
</item>
<item id="109" type="com.j2fe.processing.BusinessFeed">
<dataSource idref="0"/>
<feedDefinition id="110">db://resource/xml/feeds/bloomberg/getdata.xml</feedDefinition>
<fileDefinitions id="111" type="java.util.ArrayList">
<item id="112" type="com.j2fe.processing.FileDefinition">
<file id="113">index_symbology_*.out.gz.enc.20*</file>
<group idref="24"/>
<messageType id="114">
<applicationName id="115">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="109"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="10"/>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="116" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="117">db://resource/mapping/Bloomberg/BBSymbology.mdx</mappingResource>
<metaData id="118" type="java.util.HashMap"/>
<name id="119">BBSymbology</name>
<nearRealtimePublishing>true</nearRealtimePublishing>
<nearRealtimePublishingEvents id="120" type="java.util.ArrayList">
<item id="121" type="java.lang.String">PublishSubscriptionRealTime</item>
</nearRealtimePublishingEvents>
<publishingEvents id="122" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="123">
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
<item id="124" type="com.j2fe.processing.FileDefinition">
<file id="125">index_symbology_*.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="114"/>
</item>
</fileDefinitions>
<grouping>false</grouping>
<messageTypes id="126" type="java.util.HashSet">
<item idref="114" type="com.j2fe.processing.MessageType"/>
</messageTypes>
<name id="127">Bloomberg_DL_Symbology</name>
</item>
<item id="128" type="com.j2fe.processing.BusinessFeed">
<dataSource idref="0"/>
<feedDefinition id="129">db://resource/xml/feeds/bloomberg/getdata.xml</feedDefinition>
<fileDefinitions id="130" type="java.util.ArrayList">
<item id="131" type="com.j2fe.processing.FileDefinition">
<file id="132">mmkt.out</file>
<group idref="24"/>
<messageType id="133">
<applicationName id="134">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="128"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="10"/>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="135" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="136">db://resource/mapping/Bloomberg/BBGlobalMoneyMkt.omdx</mappingResource>
<metaData id="137" type="java.util.HashMap"/>
<name id="138">BBGlobalMoneyMkt</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<nearRealtimePublishingEvents id="139" type="java.util.ArrayList"/>
<publishingEvents id="140" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="141">
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
<item id="142" type="com.j2fe.processing.FileDefinition">
<file id="143">mmkt.dif</file>
<group idref="7"/>
<messageType idref="133"/>
</item>
</fileDefinitions>
<grouping>false</grouping>
<messageTypes id="144" type="java.util.HashSet">
<item idref="133" type="com.j2fe.processing.MessageType"/>
</messageTypes>
<name id="145">Bloomberg_DL_Money_Market</name>
</item>
<item id="146" type="com.j2fe.processing.BusinessFeed">
<dataSource idref="0"/>
<feedDefinition id="147">db://resource/xml/feeds/bloomberg/getactions.xml</feedDefinition>
<fileDefinitions id="148" type="java.util.ArrayList">
<item id="149" type="com.j2fe.processing.FileDefinition">
<file id="150">equityAsia1CorporateActionsV2.cax.gz.enc.20*</file>
<group idref="24"/>
<messageType id="151">
<applicationName id="152">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="146"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="10"/>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="153" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>false</isVDDB>
<mappingResource id="154">db://resource/mapping/Bloomberg/BloombergCAX_V2.omdx</mappingResource>
<metaData id="155" type="java.util.HashMap"/>
<name id="156">BloombergCAX</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<nearRealtimePublishingEvents id="157" type="java.util.ArrayList"/>
<publishingEvents id="158" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="159">
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
<item id="160" type="com.j2fe.processing.FileDefinition">
<file id="161">equityAsia2CorporateActionsV2.cax.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="151"/>
</item>
<item id="162" type="com.j2fe.processing.FileDefinition">
<file id="163">equityEuroCorporateActionsV2.cax.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="151"/>
</item>
<item id="164" type="com.j2fe.processing.FileDefinition">
<file id="165">equityLamrCorporateActionsV2.cax.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="151"/>
</item>
<item id="166" type="com.j2fe.processing.FileDefinition">
<file id="167">equityNamrCorporateActionsV2.cax.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="151"/>
</item>
<item id="168" type="com.j2fe.processing.FileDefinition">
<file id="169">premarketEquityAsia1CorporateActionsV2.cax.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="151"/>
</item>
<item id="170" type="com.j2fe.processing.FileDefinition">
<file id="171">premarketEquityAsia2CorporateActionsV2.cax.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="151"/>
</item>
<item id="172" type="com.j2fe.processing.FileDefinition">
<file id="173">premarketEquityEuroCorporateActionsV2.cax.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="151"/>
</item>
<item id="174" type="com.j2fe.processing.FileDefinition">
<file id="175">premarketEquityLamrCorporateActionsV2.cax.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="151"/>
</item>
<item id="176" type="com.j2fe.processing.FileDefinition">
<file id="177">premarketEquityNamrCorporateActionsV2.cax.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="151"/>
</item>
<item id="178" type="com.j2fe.processing.FileDefinition">
<file id="179">pfdExchAsiaCorporateActionsV2.cax.gz.enc.20*</file>
<group idref="93"/>
<messageType idref="151"/>
</item>
<item id="180" type="com.j2fe.processing.FileDefinition">
<file id="181">pfdExchEuroCorporateActionsV2.cax.gz.enc.20*</file>
<group idref="93"/>
<messageType idref="151"/>
</item>
<item id="182" type="com.j2fe.processing.FileDefinition">
<file id="183">pfdExchLamrCorporateActionsV2.cax.gz.enc.20*</file>
<group idref="93"/>
<messageType idref="151"/>
</item>
<item id="184" type="com.j2fe.processing.FileDefinition">
<file id="185">pfdExchNamrCorporateActionsV2.cax.gz.enc.20*</file>
<group idref="93"/>
<messageType idref="151"/>
</item>
<item id="186" type="com.j2fe.processing.FileDefinition">
<file id="187">premarketPfdExchAsiaCorporateActionsV2.cax.gz.enc.20*</file>
<group idref="93"/>
<messageType idref="151"/>
</item>
<item id="188" type="com.j2fe.processing.FileDefinition">
<file id="189">premarketPfdExchEuroCorporateActionsV2.cax.gz.enc.20*</file>
<group idref="93"/>
<messageType idref="151"/>
</item>
<item id="190" type="com.j2fe.processing.FileDefinition">
<file id="191">premarketPfdExchLamrCorporateActionsV2.cax.gz.enc.20*</file>
<group idref="93"/>
<messageType idref="151"/>
</item>
<item id="192" type="com.j2fe.processing.FileDefinition">
<file id="193">premarketPfdExchNamrCorporateActionsV2.cax.gz.enc.20*</file>
<group idref="93"/>
<messageType idref="151"/>
</item>
<item id="194" type="com.j2fe.processing.FileDefinition">
<file id="195">equityAsia1CorporateActionsV2.cax.20*</file>
<group idref="24"/>
<messageType idref="151"/>
</item>
<item id="196" type="com.j2fe.processing.FileDefinition">
<file id="197">equityAsia2CorporateActionsV2.cax.20*</file>
<group idref="24"/>
<messageType idref="151"/>
</item>
<item id="198" type="com.j2fe.processing.FileDefinition">
<file id="199">equityEuroCorporateActionsV2.cax.20*</file>
<group idref="24"/>
<messageType idref="151"/>
</item>
<item id="200" type="com.j2fe.processing.FileDefinition">
<file id="201">equityLamrCorporateActionsV2.cax.20*</file>
<group idref="24"/>
<messageType idref="151"/>
</item>
<item id="202" type="com.j2fe.processing.FileDefinition">
<file id="203">equityNamrCorporateActionsV2.cax.20*</file>
<group idref="24"/>
<messageType idref="151"/>
</item>
<item id="204" type="com.j2fe.processing.FileDefinition">
<file id="205">pfdExchAsiaCorporateActionsV2.cax.20*</file>
<group idref="93"/>
<messageType idref="151"/>
</item>
<item id="206" type="com.j2fe.processing.FileDefinition">
<file id="207">pfdExchEuroCorporateActionsV2.cax.20*</file>
<group idref="93"/>
<messageType idref="151"/>
</item>
<item id="208" type="com.j2fe.processing.FileDefinition">
<file id="209">pfdExchLamrCorporateActionsV2.cax.20*</file>
<group idref="93"/>
<messageType idref="151"/>
</item>
<item id="210" type="com.j2fe.processing.FileDefinition">
<file id="211">pfdExchNamrCorporateActionsV2.cax.20*</file>
<group idref="93"/>
<messageType idref="151"/>
</item>
<item id="212" type="com.j2fe.processing.FileDefinition">
<file id="213">premarketEquityAsia1CorporateActionsV2.cax.20*</file>
<group idref="24"/>
<messageType idref="151"/>
</item>
<item id="214" type="com.j2fe.processing.FileDefinition">
<file id="215">premarketEquityAsia2CorporateActionsV2.cax.20*</file>
<group idref="24"/>
<messageType idref="151"/>
</item>
<item id="216" type="com.j2fe.processing.FileDefinition">
<file id="217">premarketEquityEuroCorporateActionsV2.cax.20*</file>
<group idref="24"/>
<messageType idref="151"/>
</item>
<item id="218" type="com.j2fe.processing.FileDefinition">
<file id="219">premarketEquityLamrCorporateActionsV2.cax.20*</file>
<group idref="24"/>
<messageType idref="151"/>
</item>
<item id="220" type="com.j2fe.processing.FileDefinition">
<file id="221">premarketEquityNamrCorporateActionsV2.cax.20*</file>
<group idref="24"/>
<messageType idref="151"/>
</item>
<item id="222" type="com.j2fe.processing.FileDefinition">
<file id="223">premarketPfdExchAsiaCorporateActionsV2.cax.20*</file>
<group idref="93"/>
<messageType idref="151"/>
</item>
<item id="224" type="com.j2fe.processing.FileDefinition">
<file id="225">premarketPfdExchEuroCorporateActionsV2.cax.20*</file>
<group idref="93"/>
<messageType idref="151"/>
</item>
<item id="226" type="com.j2fe.processing.FileDefinition">
<file id="227">premarketPfdExchLamrCorporateActionsV2.cax.20*</file>
<group idref="93"/>
<messageType idref="151"/>
</item>
<item id="228" type="com.j2fe.processing.FileDefinition">
<file id="229">premarketPfdExchNamrCorporateActionsV2.cax.20*</file>
<group idref="93"/>
<messageType idref="151"/>
</item>
</fileDefinitions>
<grouping>false</grouping>
<messageTypes id="230" type="java.util.HashSet">
<item idref="151" type="com.j2fe.processing.MessageType"/>
</messageTypes>
<name id="231">Bloomberg_DL_Corporate_Actions</name>
</item>
<item id="232" type="com.j2fe.processing.BusinessFeed">
<dataSource idref="0"/>
<feedDefinition id="233">db://resource/xml/feeds/bloomberg/getdata.xml</feedDefinition>
<fileDefinitions id="234" type="java.util.ArrayList">
<item id="235" type="com.j2fe.processing.FileDefinition">
<file id="236">pfd_euro.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType id="237">
<applicationName id="238">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="232"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="10"/>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="239" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="240">db://resource/mapping/Bloomberg/BBPreferreds.omdx</mappingResource>
<metaData id="241" type="java.util.HashMap"/>
<name id="242">BBPreferreds</name>
<nearRealtimePublishing>true</nearRealtimePublishing>
<nearRealtimePublishingEvents id="243" type="java.util.ArrayList">
<item id="244" type="java.lang.String">PublishSubscriptionRealTime</item>
</nearRealtimePublishingEvents>
<publishingEvents id="245" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>Staging</saveVendorDataType>
<streetLamp id="246">
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
<item id="247" type="com.j2fe.processing.FileDefinition">
<file id="248">pfd_euro.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="237"/>
</item>
<item id="249" type="com.j2fe.processing.FileDefinition">
<file id="250">pfd_namr.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="237"/>
</item>
<item id="251" type="com.j2fe.processing.FileDefinition">
<file id="252">pfd_asia.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="237"/>
</item>
<item id="253" type="com.j2fe.processing.FileDefinition">
<file id="254">pfd_asia.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="237"/>
</item>
<item id="255" type="com.j2fe.processing.FileDefinition">
<file id="256">pfd_lamr.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="237"/>
</item>
<item id="257" type="com.j2fe.processing.FileDefinition">
<file id="258">pfd_lamr.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="237"/>
</item>
</fileDefinitions>
<grouping>false</grouping>
<messageTypes id="259" type="java.util.HashSet">
<item idref="237" type="com.j2fe.processing.MessageType"/>
</messageTypes>
<name id="260">Bloomberg_DL_Global_Preferred</name>
</item>
<item id="261" type="com.j2fe.processing.BusinessFeed">
<dataSource idref="0"/>
<feedDefinition id="262">db://resource/xml/feeds/bloomberg/getdata.xml</feedDefinition>
<fileDefinitions id="263" type="java.util.ArrayList">
<item id="264" type="com.j2fe.processing.FileDefinition">
<file id="265">equity_gics.out.gz.enc.20*</file>
<group idref="24"/>
<messageType id="266">
<applicationName id="267">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="261"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="10"/>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="268" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="269">db://resource/mapping/Bloomberg/BBGICS.mdx</mappingResource>
<metaData id="270" type="java.util.HashMap"/>
<name id="271">BBGICS</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<nearRealtimePublishingEvents id="272" type="java.util.ArrayList"/>
<publishingEvents id="273" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="274">
<filterVDDBNotifications>false</filterVDDBNotifications>
<inputMessageSaveOnly>false</inputMessageSaveOnly>
<saveInputMessage>ERROR</saveInputMessage>
<saveLowLevelNotificationsOnlyForErrors>false</saveLowLevelNotificationsOnlyForErrors>
<saveNotifications>INFO</saveNotifications>
<saveProcessedMessage>ERROR</saveProcessedMessage>
<saveTranslatedMessage>INFO</saveTranslatedMessage>
<saveUnprocessedInputMessage>false</saveUnprocessedInputMessage>
</streetLamp>
<syncPublishing>false</syncPublishing>
</messageType>
</item>
<item id="275" type="com.j2fe.processing.FileDefinition">
<file id="276">equity_gics.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="266"/>
</item>
<item id="277" type="com.j2fe.processing.FileDefinition">
<file id="278">pfd_gics.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="266"/>
</item>
<item id="279" type="com.j2fe.processing.FileDefinition">
<file id="280">pfd_gics.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="266"/>
</item>
</fileDefinitions>
<grouping>false</grouping>
<messageTypes id="281" type="java.util.HashSet">
<item idref="266" type="com.j2fe.processing.MessageType"/>
</messageTypes>
<name id="282">Bloomberg_DL_BO_GICS</name>
</item>
<item id="283" type="com.j2fe.processing.BusinessFeed">
<dataSource idref="0"/>
<feedDefinition id="284">db://resource/xml/feeds/bloomberg/getdata.xml</feedDefinition>
<fileDefinitions id="285" type="java.util.ArrayList">
<item id="286" type="com.j2fe.processing.FileDefinition">
<file id="287">corp_pfd_convert_*.dif.gz.enc.20*</file>
<group idref="73"/>
<messageType id="288">
<applicationName id="289">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="283"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="10"/>
<dataLineageEnabled>true</dataLineageEnabled>
<endOfFileEvents id="290" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="291">db://resource/mapping/Bloomberg/BBCorpGovtConvPrfd.omdx</mappingResource>
<metaData id="292" type="java.util.HashMap"/>
<name id="293">BBCorpGovtConvPrfd</name>
<nearRealtimePublishing>true</nearRealtimePublishing>
<nearRealtimePublishingEvents id="294" type="java.util.ArrayList">
<item id="295" type="java.lang.String">PublishSubscriptionRealTime</item>
</nearRealtimePublishingEvents>
<publishingEvents id="296" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>Staging</saveVendorDataType>
<streetLamp id="297">
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
<item id="298" type="com.j2fe.processing.FileDefinition">
<file id="299">corp_pfd_convert_*.out.gz.enc.20*</file>
<group idref="85"/>
<messageType idref="288"/>
</item>
<item id="300" type="com.j2fe.processing.FileDefinition">
<file id="301">govt_agency_regl_*.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="288"/>
</item>
<item id="302" type="com.j2fe.processing.FileDefinition">
<file id="303">govt_agency_regl_*.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="288"/>
</item>
<item id="304" type="com.j2fe.processing.FileDefinition">
<file id="305">govt_national_*.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="288"/>
</item>
<item id="306" type="com.j2fe.processing.FileDefinition">
<file id="307">govt_national_*.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="288"/>
</item>
<item id="308" type="com.j2fe.processing.FileDefinition">
<file id="309">corpPfdAsiaV2.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="288"/>
</item>
<item id="310" type="com.j2fe.processing.FileDefinition">
<file id="311">corpPfdEuroV2.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="288"/>
</item>
<item id="312" type="com.j2fe.processing.FileDefinition">
<file id="313">corpPfdLamrV2.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="288"/>
</item>
<item id="314" type="com.j2fe.processing.FileDefinition">
<file id="315">corpPfdNamrV2.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="288"/>
</item>
<item id="316" type="com.j2fe.processing.FileDefinition">
<file id="317">corpPfdAsiaV2.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="288"/>
</item>
<item id="318" type="com.j2fe.processing.FileDefinition">
<file id="319">corpPfdEuroV2.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="288"/>
</item>
<item id="320" type="com.j2fe.processing.FileDefinition">
<file id="321">corpPfdLamrV2.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="288"/>
</item>
<item id="322" type="com.j2fe.processing.FileDefinition">
<file id="323">corpPfdNamrV2.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="288"/>
</item>
<item id="324" type="com.j2fe.processing.FileDefinition">
<file id="325">fixedincomeBo.out.gz.enc.20*</file>
<group idref="93"/>
<messageType idref="288"/>
</item>
<item id="326" type="com.j2fe.processing.FileDefinition">
<file id="327">fixedincomeBo.dif.gz.enc.20*</file>
<group idref="93"/>
<messageType idref="288"/>
</item>
<item id="328" type="com.j2fe.processing.FileDefinition">
<file id="329">fixedincome_bo_*.dif.gz.enc.20*</file>
<group idref="93"/>
<messageType idref="288"/>
</item>
<item id="330" type="com.j2fe.processing.FileDefinition">
<file id="331">fixedincome_bo_*.out.gz.enc.20*</file>
<group idref="93"/>
<messageType idref="288"/>
</item>
</fileDefinitions>
<grouping>false</grouping>
<messageTypes id="332" type="java.util.HashSet">
<item idref="288" type="com.j2fe.processing.MessageType"/>
</messageTypes>
<name id="333">Bloomberg_DL_Corp_Gov_Conv</name>
</item>
<item id="334" type="com.j2fe.processing.BusinessFeed">
<dataSource idref="0"/>
<feedDefinition id="335">db://resource/xml/feeds/bloomberg/getdata.xml</feedDefinition>
<fileDefinitions id="336" type="java.util.ArrayList">
<item id="337" type="com.j2fe.processing.FileDefinition">
<file id="338">shareFuturesAsia1.out.gz.enc.20*</file>
<group idref="24"/>
<messageType id="339">
<applicationName id="340">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="334"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="341" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="342">db://resource/mapping/Bloomberg/BBGlobalListedFutures.mdx</mappingResource>
<metaData id="343" type="java.util.HashMap"/>
<name id="344">BBGlobalListedFutures</name>
<nearRealtimePublishing>true</nearRealtimePublishing>
<nearRealtimePublishingEvents id="345" type="java.util.ArrayList">
<item id="346" type="java.lang.String">PublishSubscriptionRealTime</item>
</nearRealtimePublishingEvents>
<publishingEvents id="347" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="348">
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
<item id="349" type="com.j2fe.processing.FileDefinition">
<file id="350">shareFuturesAsia2.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="339"/>
</item>
<item id="351" type="com.j2fe.processing.FileDefinition">
<file id="352">shareFuturesAsia3.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="339"/>
</item>
<item id="353" type="com.j2fe.processing.FileDefinition">
<file id="354">shareFuturesEuro.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="339"/>
</item>
<item id="355" type="com.j2fe.processing.FileDefinition">
<file id="356">shareFuturesLamr.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="339"/>
</item>
<item id="357" type="com.j2fe.processing.FileDefinition">
<file id="358">shareFuturesNamr.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="339"/>
</item>
<item id="359" type="com.j2fe.processing.FileDefinition">
<file id="360">nonShareFuturesAsia.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="339"/>
</item>
<item id="361" type="com.j2fe.processing.FileDefinition">
<file id="362">nonShareFuturesLamr.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="339"/>
</item>
<item id="363" type="com.j2fe.processing.FileDefinition">
<file id="364">nonShareFuturesNamr.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="339"/>
</item>
<item id="365" type="com.j2fe.processing.FileDefinition">
<file id="366">nonShareFuturesEuro.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="339"/>
</item>
<item id="367" type="com.j2fe.processing.FileDefinition">
<file id="368">shareFuturesAsia1.dif.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="339"/>
</item>
<item id="369" type="com.j2fe.processing.FileDefinition">
<file id="370">shareFuturesAsia2.dif.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="339"/>
</item>
<item id="371" type="com.j2fe.processing.FileDefinition">
<file id="372">shareFuturesAsia3.dif.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="339"/>
</item>
<item id="373" type="com.j2fe.processing.FileDefinition">
<file id="374">shareFuturesEuro.dif.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="339"/>
</item>
<item id="375" type="com.j2fe.processing.FileDefinition">
<file id="376">shareFuturesLamr.dif.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="339"/>
</item>
<item id="377" type="com.j2fe.processing.FileDefinition">
<file id="378">shareFuturesNamr.dif.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="339"/>
</item>
<item id="379" type="com.j2fe.processing.FileDefinition">
<file id="380">nonShareFuturesAsia.dif.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="339"/>
</item>
<item id="381" type="com.j2fe.processing.FileDefinition">
<file id="382">nonShareFuturesLamr.dif.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="339"/>
</item>
<item id="383" type="com.j2fe.processing.FileDefinition">
<file id="384">nonShareFuturesNamr.dif.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="339"/>
</item>
<item id="385" type="com.j2fe.processing.FileDefinition">
<file id="386">nonShareFuturesEuro.dif.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="339"/>
</item>
</fileDefinitions>
<grouping>false</grouping>
<messageTypes id="387" type="java.util.HashSet">
<item idref="339" type="com.j2fe.processing.MessageType"/>
</messageTypes>
<name id="388">Bloomberg_DL_Equity_Listed_Futures</name>
</item>
<item id="389" type="com.j2fe.processing.BusinessFeed">
<dataSource idref="0"/>
<feedDefinition id="390">db://resource/xml/feeds/bloomberg/getdata.xml</feedDefinition>
<fileDefinitions id="391" type="java.util.ArrayList">
<item id="392" type="com.j2fe.processing.FileDefinition">
<file id="393">index_*.out.gz.enc.20*</file>
<group idref="24"/>
<messageType id="394">
<applicationName id="395">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="389"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="396" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="397">db://resource/mapping/Bloomberg/BBIndexPricing.mdx</mappingResource>
<metaData id="398" type="java.util.HashMap">
<entry>
<key id="399" type="java.lang.String">DescriptiveData</key>
<value id="400" type="java.lang.String">Y</value>
</entry>
<entry>
<key id="401" type="java.lang.String">PriceData</key>
<value id="402" type="java.lang.String">Y</value>
</entry>
</metaData>
<name id="403">BBIndexPricing</name>
<nearRealtimePublishing>true</nearRealtimePublishing>
<nearRealtimePublishingEvents id="404" type="java.util.ArrayList">
<item id="405" type="java.lang.String">PublishSubscriptionRealTime</item>
</nearRealtimePublishingEvents>
<publishingEvents id="406" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="407">
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
<item id="408" type="com.j2fe.processing.FileDefinition">
<file id="409">index_*.px.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="394"/>
</item>
<item id="410" type="com.j2fe.processing.FileDefinition">
<file id="411">index_*.epx.gz.enc.20*</file>
<group idref="24"/>
<messageType id="412">
<applicationName id="413">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="389"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="414" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="415">db://resource/mapping/Bloomberg/BBIndexEPX.mdx</mappingResource>
<metaData id="416" type="java.util.HashMap"/>
<name id="417">BBIndexEPX</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<nearRealtimePublishingEvents id="418" type="java.util.ArrayList"/>
<publishingEvents id="419" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="420">
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
<item id="421" type="com.j2fe.processing.FileDefinition">
<file id="422">index_*.diff.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="394"/>
</item>
</fileDefinitions>
<grouping>false</grouping>
<messageTypes id="423" type="java.util.HashSet">
<item idref="394" type="com.j2fe.processing.MessageType"/>
<item idref="412" type="com.j2fe.processing.MessageType"/>
</messageTypes>
<name id="424">Bloomberg_DL_Global_Index</name>
</item>
<item id="425" type="com.j2fe.processing.BusinessFeed">
<dataSource idref="0"/>
<feedDefinition id="426">db://resource/xml/feeds/bloomberg/getdata.xml</feedDefinition>
<fileDefinitions id="427" type="java.util.ArrayList">
<item id="428" type="com.j2fe.processing.FileDefinition">
<file id="429">equityOptionsAsia1.out.gz.enc.20*</file>
<group idref="24"/>
<messageType id="430">
<applicationName id="431">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="425"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="10"/>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="432" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="433">db://resource/mapping/Bloomberg/BBGlobalEquityListedOptions.mdx</mappingResource>
<metaData id="434" type="java.util.HashMap"/>
<name id="435">BBGlobalEquityListedOptions</name>
<nearRealtimePublishing>true</nearRealtimePublishing>
<nearRealtimePublishingEvents id="436" type="java.util.ArrayList">
<item id="437" type="java.lang.String">PublishSubscriptionRealTime</item>
</nearRealtimePublishingEvents>
<publishingEvents id="438" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="439">
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
<item id="440" type="com.j2fe.processing.FileDefinition">
<file id="441">equityOptionsAsia2.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="430"/>
</item>
<item id="442" type="com.j2fe.processing.FileDefinition">
<file id="443">equityOptionsAsia3.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="430"/>
</item>
<item id="444" type="com.j2fe.processing.FileDefinition">
<file id="445">equityOptionsAsia4.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="430"/>
</item>
<item id="446" type="com.j2fe.processing.FileDefinition">
<file id="447">equityOptionsAsia5.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="430"/>
</item>
<item id="448" type="com.j2fe.processing.FileDefinition">
<file id="449">equityOptionsEuro1.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="430"/>
</item>
<item id="450" type="com.j2fe.processing.FileDefinition">
<file id="451">equityOptionsEuro2.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="430"/>
</item>
<item id="452" type="com.j2fe.processing.FileDefinition">
<file id="453">equityOptionsLamr1.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="430"/>
</item>
<item id="454" type="com.j2fe.processing.FileDefinition">
<file id="455">equityOptionsLamr2.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="430"/>
</item>
<item id="456" type="com.j2fe.processing.FileDefinition">
<file id="457">equityOptionsNamr1.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="430"/>
</item>
<item id="458" type="com.j2fe.processing.FileDefinition">
<file id="459">equityOptionsNamr2.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="430"/>
</item>
<item id="460" type="com.j2fe.processing.FileDefinition">
<file id="461">equityOptionsNamr3.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="430"/>
</item>
<item id="462" type="com.j2fe.processing.FileDefinition">
<file id="463">equityOptionsLocal1Namr2.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="430"/>
</item>
<item id="464" type="com.j2fe.processing.FileDefinition">
<file id="465">equityOptionsLocal2Namr2.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="430"/>
</item>
<item id="466" type="com.j2fe.processing.FileDefinition">
<file id="467">equityOptionsLocal3Namr2.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="430"/>
</item>
<item id="468" type="com.j2fe.processing.FileDefinition">
<file id="469">equityOptionsLocal4Namr2.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="430"/>
</item>
<item id="470" type="com.j2fe.processing.FileDefinition">
<file id="471">equityOptionsLocal5Namr2.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="430"/>
</item>
<item id="472" type="com.j2fe.processing.FileDefinition">
<file id="473">equityOptionsAsia1.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="430"/>
</item>
<item id="474" type="com.j2fe.processing.FileDefinition">
<file id="475">equityOptionsAsia2.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="430"/>
</item>
<item id="476" type="com.j2fe.processing.FileDefinition">
<file id="477">equityOptionsAsia3.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="430"/>
</item>
<item id="478" type="com.j2fe.processing.FileDefinition">
<file id="479">equityOptionsAsia4.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="430"/>
</item>
<item id="480" type="com.j2fe.processing.FileDefinition">
<file id="481">equityOptionsAsia5.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="430"/>
</item>
<item id="482" type="com.j2fe.processing.FileDefinition">
<file id="483">equityOptionsEuro1.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="430"/>
</item>
<item id="484" type="com.j2fe.processing.FileDefinition">
<file id="485">equityOptionsEuro2.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="430"/>
</item>
<item id="486" type="com.j2fe.processing.FileDefinition">
<file id="487">equityOptionsLamr1.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="430"/>
</item>
<item id="488" type="com.j2fe.processing.FileDefinition">
<file id="489">equityOptionsLamr2.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="430"/>
</item>
<item id="490" type="com.j2fe.processing.FileDefinition">
<file id="491">equityOptionsNamr1.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="430"/>
</item>
<item id="492" type="com.j2fe.processing.FileDefinition">
<file id="493">equityOptionsNamr2.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="430"/>
</item>
<item id="494" type="com.j2fe.processing.FileDefinition">
<file id="495">equityOptionsNamr3.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="430"/>
</item>
<item id="496" type="com.j2fe.processing.FileDefinition">
<file id="497">equityOptionsLocal1Namr2.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="430"/>
</item>
<item id="498" type="com.j2fe.processing.FileDefinition">
<file id="499">equityOptionsLocal2Namr2.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="430"/>
</item>
<item id="500" type="com.j2fe.processing.FileDefinition">
<file id="501">equityOptionsLocal3Namr2.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="430"/>
</item>
<item id="502" type="com.j2fe.processing.FileDefinition">
<file id="503">equityOptionsLocal4Namr2.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="430"/>
</item>
<item id="504" type="com.j2fe.processing.FileDefinition">
<file id="505">equityOptionsLocal5Namr2.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="430"/>
</item>
</fileDefinitions>
<grouping>false</grouping>
<messageTypes id="506" type="java.util.HashSet">
<item idref="430" type="com.j2fe.processing.MessageType"/>
</messageTypes>
<name id="507">Bloomberg_DL_Equity_Listed_Options</name>
</item>
<item id="508" type="com.j2fe.processing.BusinessFeed">
<dataSource idref="0"/>
<feedDefinition id="509">db://resource/xml/feeds/bloomberg/getdata.xml</feedDefinition>
<fileDefinitions id="510" type="java.util.ArrayList">
<item id="511" type="com.j2fe.processing.FileDefinition">
<file id="512">mtge_canadian_namr.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType id="513">
<applicationName id="514">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="508"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="10"/>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="515" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="516">db://resource/mapping/Bloomberg/BBMortgagePools.mdx</mappingResource>
<metaData id="517" type="java.util.HashMap">
<entry>
<key id="518" type="java.lang.String">IssuerData</key>
<value id="519" type="java.lang.String">Y</value>
</entry>
<entry>
<key id="520" type="java.lang.String">SecurityData</key>
<value id="521" type="java.lang.String">Y</value>
</entry>
</metaData>
<name id="522">BBMortgagePools</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<nearRealtimePublishingEvents id="523" type="java.util.ArrayList"/>
<publishingEvents id="524" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="525">
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
<item id="526" type="com.j2fe.processing.FileDefinition">
<file id="527">mtge_canadian_namr.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="513"/>
</item>
<item id="528" type="com.j2fe.processing.FileDefinition">
<file id="529">mtge_fhlmc_namr.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="513"/>
</item>
<item id="530" type="com.j2fe.processing.FileDefinition">
<file id="531">mtge_fhlmc_namr.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="513"/>
</item>
<item id="532" type="com.j2fe.processing.FileDefinition">
<file id="533">mtge_fnma_namr.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="513"/>
</item>
<item id="534" type="com.j2fe.processing.FileDefinition">
<file id="535">mtge_fnma_namr.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="513"/>
</item>
<item id="536" type="com.j2fe.processing.FileDefinition">
<file id="537">mtge_generic_namr.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="513"/>
</item>
<item id="538" type="com.j2fe.processing.FileDefinition">
<file id="539">mtge_generic_namr.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="513"/>
</item>
<item id="540" type="com.j2fe.processing.FileDefinition">
<file id="541">mtge_gnma_namr.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="513"/>
</item>
<item id="542" type="com.j2fe.processing.FileDefinition">
<file id="543">mtge_gnma_namr.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="513"/>
</item>
<item id="544" type="com.j2fe.processing.FileDefinition">
<file id="545">mtge_sba_namr.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="513"/>
</item>
<item id="546" type="com.j2fe.processing.FileDefinition">
<file id="547">mtge_sba_namr.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="513"/>
</item>
<item id="548" type="com.j2fe.processing.FileDefinition">
<file id="549">mtge_tba_namr.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="513"/>
</item>
<item id="550" type="com.j2fe.processing.FileDefinition">
<file id="551">mtge_tba_namr.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="513"/>
</item>
</fileDefinitions>
<grouping>false</grouping>
<messageTypes id="552" type="java.util.HashSet">
<item idref="513" type="com.j2fe.processing.MessageType"/>
</messageTypes>
<name id="553">Bloomberg_DL_Mortgage_Pools</name>
</item>
<item id="554" type="com.j2fe.processing.BusinessFeed">
<dataSource idref="0"/>
<feedDefinition id="555">db://resource/xml/feeds/bloomberg/getdata.xml</feedDefinition>
<fileDefinitions id="556" type="java.util.ArrayList">
<item id="557" type="com.j2fe.processing.FileDefinition">
<file id="558">cert_*_cins.out</file>
<group idref="24"/>
<messageType id="559">
<applicationName id="560">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="554"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="10"/>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="561" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="562">db://resource/mapping/Bloomberg/BBCINS.mdx</mappingResource>
<metaData id="563" type="java.util.HashMap"/>
<name id="564">BBCINS</name>
<nearRealtimePublishing>true</nearRealtimePublishing>
<nearRealtimePublishingEvents id="565" type="java.util.ArrayList">
<item id="566" type="java.lang.String">PublishSubscriptionRealTime</item>
</nearRealtimePublishingEvents>
<publishingEvents id="567" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>Staging</saveVendorDataType>
<streetLamp id="568">
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
<item id="569" type="com.j2fe.processing.FileDefinition">
<file id="570">cert_*_cins.out.gz.enc</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="571" type="com.j2fe.processing.FileDefinition">
<file id="572">cert_*_cins.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="573" type="com.j2fe.processing.FileDefinition">
<file id="574">corp_pfd_*_cins.out</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="575" type="com.j2fe.processing.FileDefinition">
<file id="576">corp_pfd_*_cins.out.gz.enc</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="577" type="com.j2fe.processing.FileDefinition">
<file id="578">corp_pfd_*_cins.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="579" type="com.j2fe.processing.FileDefinition">
<file id="580">corp_pfd_convert_*_cins.out</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="581" type="com.j2fe.processing.FileDefinition">
<file id="582">corp_pfd_convert_*_cins.out.gz.enc</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="583" type="com.j2fe.processing.FileDefinition">
<file id="584">corp_pfd_convert_*_cins.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="585" type="com.j2fe.processing.FileDefinition">
<file id="586">corp_pfd_convert_quant_*_cins.out</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="587" type="com.j2fe.processing.FileDefinition">
<file id="588">corp_pfd_convert_quant_*_cins.out.gz.enc</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="589" type="com.j2fe.processing.FileDefinition">
<file id="590">corp_pfd_convert_quant_*_cins.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="591" type="com.j2fe.processing.FileDefinition">
<file id="592">equity_*_cins.out</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="593" type="com.j2fe.processing.FileDefinition">
<file id="594">equity_*_cins.out.gz.enc</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="595" type="com.j2fe.processing.FileDefinition">
<file id="596">equity_*_cins.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="597" type="com.j2fe.processing.FileDefinition">
<file id="598">equity_bdvd_*_cins.out</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="599" type="com.j2fe.processing.FileDefinition">
<file id="600">equity_bdvd_*_cins.out.gz.enc</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="601" type="com.j2fe.processing.FileDefinition">
<file id="602">equity_bdvd_*_cins.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="603" type="com.j2fe.processing.FileDefinition">
<file id="604">equity_fund_*_cins.out</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="605" type="com.j2fe.processing.FileDefinition">
<file id="606">equity_fund_*_cins.out.gz.enc</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="607" type="com.j2fe.processing.FileDefinition">
<file id="608">equity_fund_*_cins.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="609" type="com.j2fe.processing.FileDefinition">
<file id="610">equity_gics_cins.out</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="611" type="com.j2fe.processing.FileDefinition">
<file id="612">equity_gics_cins.out.gz.enc</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="613" type="com.j2fe.processing.FileDefinition">
<file id="614">equity_gics_cins.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="615" type="com.j2fe.processing.FileDefinition">
<file id="616">equity_open_*_cins.out</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="617" type="com.j2fe.processing.FileDefinition">
<file id="618">equity_open_*_cins.out.gz.enc</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="619" type="com.j2fe.processing.FileDefinition">
<file id="620">equity_open_*_cins.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="621" type="com.j2fe.processing.FileDefinition">
<file id="622">equity_warrant_*_cins.out</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="623" type="com.j2fe.processing.FileDefinition">
<file id="624">equity_warrant_*_cins.out.gz.enc</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="625" type="com.j2fe.processing.FileDefinition">
<file id="626">equity_warrant_*_cins.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="627" type="com.j2fe.processing.FileDefinition">
<file id="628">equity_warrant_quant_*_cins.out</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="629" type="com.j2fe.processing.FileDefinition">
<file id="630">equity_warrant_quant_*_cins.out.gz.enc</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="631" type="com.j2fe.processing.FileDefinition">
<file id="632">equity_warrant_quant_*_cins.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="633" type="com.j2fe.processing.FileDefinition">
<file id="634">fixedincome_bo_*_cins.out</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="635" type="com.j2fe.processing.FileDefinition">
<file id="636">fixedincome_bo_*_cins.out.gz.enc</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="637" type="com.j2fe.processing.FileDefinition">
<file id="638">fixedincome_bo_*_cins.out.gz.enc.20220207*</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="639" type="com.j2fe.processing.FileDefinition">
<file id="640">fixedincome_matured_*_cins.out</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="641" type="com.j2fe.processing.FileDefinition">
<file id="642">fixedincome_matured_*_cins.out.gz.enc</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="643" type="com.j2fe.processing.FileDefinition">
<file id="644">fixedincome_matured_*_cins.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="645" type="com.j2fe.processing.FileDefinition">
<file id="646">govt_agency_regl_*_cins.out</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="647" type="com.j2fe.processing.FileDefinition">
<file id="648">govt_agency_regl_*_cins.out.gz.enc</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="649" type="com.j2fe.processing.FileDefinition">
<file id="650">govt_agency_regl_*_cins.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="651" type="com.j2fe.processing.FileDefinition">
<file id="652">govt_national_*_cins.out</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="653" type="com.j2fe.processing.FileDefinition">
<file id="654">govt_national_*_cins.out.gz.enc</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="655" type="com.j2fe.processing.FileDefinition">
<file id="656">govt_national_*_cins.out.gz.enc.20220207*</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="657" type="com.j2fe.processing.FileDefinition">
<file id="658">mtge_abs_cins.out</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="659" type="com.j2fe.processing.FileDefinition">
<file id="660">mtge_abs_cins.out.gz.enc</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="661" type="com.j2fe.processing.FileDefinition">
<file id="662">mtge_abs_cins.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="663" type="com.j2fe.processing.FileDefinition">
<file id="664">mtge_cmbs_cins.out</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="665" type="com.j2fe.processing.FileDefinition">
<file id="666">mtge_cmbs_cins.out.gz.enc</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="667" type="com.j2fe.processing.FileDefinition">
<file id="668">mtge_cmbs_cins.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="669" type="com.j2fe.processing.FileDefinition">
<file id="670">mtge_cmo_cins.out</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="671" type="com.j2fe.processing.FileDefinition">
<file id="672">mtge_cmo_cins.out.gz.enc</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="673" type="com.j2fe.processing.FileDefinition">
<file id="674">mtge_cmo_cins.out.gz.enc.20220207*</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="675" type="com.j2fe.processing.FileDefinition">
<file id="676">mtge_wholeloan_cins.out</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="677" type="com.j2fe.processing.FileDefinition">
<file id="678">mtge_wholeloan_cins.out.gz.enc</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="679" type="com.j2fe.processing.FileDefinition">
<file id="680">mtge_wholeloan_cins.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="681" type="com.j2fe.processing.FileDefinition">
<file id="682">mtge_abs_*_cins.out</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="683" type="com.j2fe.processing.FileDefinition">
<file id="684">mtge_abs_*_cins.out.gz.enc</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="685" type="com.j2fe.processing.FileDefinition">
<file id="686">mtge_abs_*_cins.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="687" type="com.j2fe.processing.FileDefinition">
<file id="688">mtge_cmbs_*_cins.out</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="689" type="com.j2fe.processing.FileDefinition">
<file id="690">mtge_cmbs_*_cins.out.gz.enc</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="691" type="com.j2fe.processing.FileDefinition">
<file id="692">mtge_cmbs_*_cins.out.gz.enc.20220207*</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="693" type="com.j2fe.processing.FileDefinition">
<file id="694">mtge_cmo_*_cins.out</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="695" type="com.j2fe.processing.FileDefinition">
<file id="696">mtge_cmo_*_cins.out.gz.enc</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="697" type="com.j2fe.processing.FileDefinition">
<file id="698">mtge_cmo_*_cins.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="699" type="com.j2fe.processing.FileDefinition">
<file id="700">mtge_wholeloan_*_cins.out</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="701" type="com.j2fe.processing.FileDefinition">
<file id="702">mtge_wholeloan_*_cins.out.gz.enc</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="703" type="com.j2fe.processing.FileDefinition">
<file id="704">mtge_wholeloan_*_cins.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="705" type="com.j2fe.processing.FileDefinition">
<file id="706">pfd_*_cins.out</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="707" type="com.j2fe.processing.FileDefinition">
<file id="708">pfd_*_cins.out.gz.enc</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="709" type="com.j2fe.processing.FileDefinition">
<file id="710">pfd_*_cins.out.gz.enc.20220207*</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="711" type="com.j2fe.processing.FileDefinition">
<file id="712">pfd_exch_*_cins.out</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="713" type="com.j2fe.processing.FileDefinition">
<file id="714">pfd_exch_*_cins.out.gz.enc</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="715" type="com.j2fe.processing.FileDefinition">
<file id="716">pfd_exch_*_cins.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="717" type="com.j2fe.processing.FileDefinition">
<file id="718">pfd_gics_cins.out</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="719" type="com.j2fe.processing.FileDefinition">
<file id="720">pfd_gics_cins.out.gz.enc</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="721" type="com.j2fe.processing.FileDefinition">
<file id="722">pfd_gics_cins.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="559"/>
</item>
<item id="723" type="com.j2fe.processing.FileDefinition">
<file id="724">cert_*_cins.dif</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="725" type="com.j2fe.processing.FileDefinition">
<file id="726">cert_*_cins.dif.gz.enc</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="727" type="com.j2fe.processing.FileDefinition">
<file id="728">cert_*_cins.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="729" type="com.j2fe.processing.FileDefinition">
<file id="730">corp_pfd_*_cins.dif</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="731" type="com.j2fe.processing.FileDefinition">
<file id="732">corp_pfd_*_cins.dif.gz.enc</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="733" type="com.j2fe.processing.FileDefinition">
<file id="734">corp_pfd_*_cins.dif.gz.enc.20220207*</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="735" type="com.j2fe.processing.FileDefinition">
<file id="736">corp_pfd_convert_*_cins.dif</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="737" type="com.j2fe.processing.FileDefinition">
<file id="738">corp_pfd_convert_*_cins.dif.gz.enc</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="739" type="com.j2fe.processing.FileDefinition">
<file id="740">corp_pfd_convert_*_cins.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="741" type="com.j2fe.processing.FileDefinition">
<file id="742">corp_pfd_convert_quant_*_cins.dif</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="743" type="com.j2fe.processing.FileDefinition">
<file id="744">corp_pfd_convert_quant_*_cins.dif.gz.enc</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="745" type="com.j2fe.processing.FileDefinition">
<file id="746">corp_pfd_convert_quant_*_cins.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="747" type="com.j2fe.processing.FileDefinition">
<file id="748">equity_*_cins.dif</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="749" type="com.j2fe.processing.FileDefinition">
<file id="750">equity_*_cins.dif.gz.enc</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="751" type="com.j2fe.processing.FileDefinition">
<file id="752">equity_*_cins.dif.gz.enc.20220207*</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="753" type="com.j2fe.processing.FileDefinition">
<file id="754">equity_bdvd_*_cins.dif</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="755" type="com.j2fe.processing.FileDefinition">
<file id="756">equity_bdvd_*_cins.dif.gz.enc</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="757" type="com.j2fe.processing.FileDefinition">
<file id="758">equity_bdvd_*_cins.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="759" type="com.j2fe.processing.FileDefinition">
<file id="760">equity_fund_*_cins.dif</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="761" type="com.j2fe.processing.FileDefinition">
<file id="762">equity_fund_*_cins.dif.gz.enc</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="763" type="com.j2fe.processing.FileDefinition">
<file id="764">equity_fund_*_cins.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="765" type="com.j2fe.processing.FileDefinition">
<file id="766">equity_gics_cins.dif</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="767" type="com.j2fe.processing.FileDefinition">
<file id="768">equity_gics_cins.dif.gz.enc</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="769" type="com.j2fe.processing.FileDefinition">
<file id="770">equity_gics_cins.dif.gz.enc.20220207*</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="771" type="com.j2fe.processing.FileDefinition">
<file id="772">equity_open_*_cins.dif</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="773" type="com.j2fe.processing.FileDefinition">
<file id="774">equity_open_*_cins.dif.gz.enc</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="775" type="com.j2fe.processing.FileDefinition">
<file id="776">equity_open_*_cins.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="777" type="com.j2fe.processing.FileDefinition">
<file id="778">equity_warrant_*_cins.dif</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="779" type="com.j2fe.processing.FileDefinition">
<file id="780">equity_warrant_*_cins.dif.gz.enc</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="781" type="com.j2fe.processing.FileDefinition">
<file id="782">equity_warrant_*_cins.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="783" type="com.j2fe.processing.FileDefinition">
<file id="784">equity_warrant_quant_*_cins.dif</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="785" type="com.j2fe.processing.FileDefinition">
<file id="786">equity_warrant_quant_*_cins.dif.gz.enc</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="787" type="com.j2fe.processing.FileDefinition">
<file id="788">equity_warrant_quant_*_cins.dif.gz.enc.20220207*</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="789" type="com.j2fe.processing.FileDefinition">
<file id="790">fixedincome_bo_*_cins.dif</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="791" type="com.j2fe.processing.FileDefinition">
<file id="792">fixedincome_bo_*_cins.dif.gz.enc</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="793" type="com.j2fe.processing.FileDefinition">
<file id="794">fixedincome_bo_*_cins.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="795" type="com.j2fe.processing.FileDefinition">
<file id="796">fixedincome_matured_*_cins.dif</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="797" type="com.j2fe.processing.FileDefinition">
<file id="798">fixedincome_matured_*_cins.dif.gz.enc</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="799" type="com.j2fe.processing.FileDefinition">
<file id="800">fixedincome_matured_*_cins.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="801" type="com.j2fe.processing.FileDefinition">
<file id="802">govt_agency_regl_*_cins.dif</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="803" type="com.j2fe.processing.FileDefinition">
<file id="804">govt_agency_regl_*_cins.dif.gz.enc</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="805" type="com.j2fe.processing.FileDefinition">
<file id="806">govt_agency_regl_*_cins.dif.gz.enc.20220207*</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="807" type="com.j2fe.processing.FileDefinition">
<file id="808">govt_national_*_cins.dif</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="809" type="com.j2fe.processing.FileDefinition">
<file id="810">govt_national_*_cins.dif.gz.enc</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="811" type="com.j2fe.processing.FileDefinition">
<file id="812">govt_national_*_cins.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="813" type="com.j2fe.processing.FileDefinition">
<file id="814">mtge_abs_cins.dif</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="815" type="com.j2fe.processing.FileDefinition">
<file id="816">mtge_abs_cins.dif.gz.enc</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="817" type="com.j2fe.processing.FileDefinition">
<file id="818">mtge_abs_cins.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="819" type="com.j2fe.processing.FileDefinition">
<file id="820">mtge_cmbs_cins.dif</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="821" type="com.j2fe.processing.FileDefinition">
<file id="822">mtge_cmbs_cins.dif.gz.enc</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="823" type="com.j2fe.processing.FileDefinition">
<file id="824">mtge_cmbs_cins.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="825" type="com.j2fe.processing.FileDefinition">
<file id="826">mtge_cmo_cins.dif</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="827" type="com.j2fe.processing.FileDefinition">
<file id="828">mtge_cmo_cins.dif.gz.enc</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="829" type="com.j2fe.processing.FileDefinition">
<file id="830">mtge_cmo_cins.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="831" type="com.j2fe.processing.FileDefinition">
<file id="832">mtge_wholeloan_cins.dif</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="833" type="com.j2fe.processing.FileDefinition">
<file id="834">mtge_wholeloan_cins.dif.gz.enc</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="835" type="com.j2fe.processing.FileDefinition">
<file id="836">mtge_wholeloan_cins.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="837" type="com.j2fe.processing.FileDefinition">
<file id="838">mtge_abs_*_cins.dif</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="839" type="com.j2fe.processing.FileDefinition">
<file id="840">mtge_abs_*_cins.dif.gz.enc</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="841" type="com.j2fe.processing.FileDefinition">
<file id="842">mtge_abs_*_cins.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="843" type="com.j2fe.processing.FileDefinition">
<file id="844">mtge_cmbs_*_cins.dif</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="845" type="com.j2fe.processing.FileDefinition">
<file id="846">mtge_cmbs_*_cins.dif.gz.enc</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="847" type="com.j2fe.processing.FileDefinition">
<file id="848">mtge_cmbs_*_cins.dif.gz.enc.20220207*</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="849" type="com.j2fe.processing.FileDefinition">
<file id="850">mtge_cmo_*_cins.dif</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="851" type="com.j2fe.processing.FileDefinition">
<file id="852">mtge_cmo_*_cins.dif.gz.enc</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="853" type="com.j2fe.processing.FileDefinition">
<file id="854">mtge_cmo_*_cins.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="855" type="com.j2fe.processing.FileDefinition">
<file id="856">mtge_wholeloan_*_cins.dif</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="857" type="com.j2fe.processing.FileDefinition">
<file id="858">mtge_wholeloan_*_cins.dif.gz.enc</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="859" type="com.j2fe.processing.FileDefinition">
<file id="860">mtge_wholeloan_*_cins.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="861" type="com.j2fe.processing.FileDefinition">
<file id="862">pfd_*_cins.dif</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="863" type="com.j2fe.processing.FileDefinition">
<file id="864">pfd_*_cins.dif.gz.enc</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="865" type="com.j2fe.processing.FileDefinition">
<file id="866">pfd_*_cins.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="867" type="com.j2fe.processing.FileDefinition">
<file id="868">pfd_exch_*_cins.dif</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="869" type="com.j2fe.processing.FileDefinition">
<file id="870">pfd_exch_*_cins.dif.gz.enc</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="871" type="com.j2fe.processing.FileDefinition">
<file id="872">pfd_exch_*_cins.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="873" type="com.j2fe.processing.FileDefinition">
<file id="874">pfd_gics_cins.dif</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="875" type="com.j2fe.processing.FileDefinition">
<file id="876">pfd_gics_cins.dif.gz.enc</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
<item id="877" type="com.j2fe.processing.FileDefinition">
<file id="878">pfd_gics_cins.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="559"/>
</item>
</fileDefinitions>
<grouping>false</grouping>
<messageTypes id="879" type="java.util.HashSet">
<item idref="559" type="com.j2fe.processing.MessageType"/>
</messageTypes>
<name id="880">Bloomberg_DL_CINS</name>
</item>
<item id="881" type="com.j2fe.processing.BusinessFeed">
<dataSource idref="0"/>
<feedDefinition id="882">db://resource/xml/feeds/bloomberg/getdata.xml</feedDefinition>
<fileDefinitions id="883" type="java.util.ArrayList">
<item id="884" type="com.j2fe.processing.FileDefinition">
<file id="885">equity_option_open_*.out.gz.enc.20*</file>
<group idref="93"/>
<messageType id="886">
<businessEntity>false</businessEntity>
<businessFeed idref="881"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="887" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="888">db://resource/mapping/Bloomberg/BBPreMarketEquityOption.mdx</mappingResource>
<metaData id="889" type="java.util.HashMap"/>
<name id="890">BBPreMarketEquityOption</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<nearRealtimePublishingEvents id="891" type="java.util.ArrayList"/>
<publishingEvents id="892" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="893">
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
<item id="894" type="com.j2fe.processing.FileDefinition">
<file id="895">equity_option_open_*.dif.gz.enc.20*</file>
<group idref="93"/>
<messageType idref="886"/>
</item>
<item id="896" type="com.j2fe.processing.FileDefinition">
<file id="897">equity_option_open_*.dlt.gz.enc.20*</file>
<group idref="93"/>
<messageType idref="886"/>
</item>
<item id="898" type="com.j2fe.processing.FileDefinition">
<file id="899">equity_open_*.px.gz.enc.20*</file>
<group idref="93"/>
<messageType id="900">
<applicationName id="901">CUSTOMERANDCTPTY</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="881"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="10"/>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="902" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="903">db://resource/mapping/Bloomberg/BBPreMarketEquity.omdx</mappingResource>
<metaData id="904" type="java.util.HashMap"/>
<name id="905">BBPreMarketEquity</name>
<nearRealtimePublishing>true</nearRealtimePublishing>
<nearRealtimePublishingEvents id="906" type="java.util.ArrayList">
<item id="907" type="java.lang.String">PublishSubscriptionRealTime</item>
</nearRealtimePublishingEvents>
<publishingEvents id="908" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="909">
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
<item id="910" type="com.j2fe.processing.FileDefinition">
<file id="911">equity_open_*.dif.gz.enc.20*</file>
<group idref="93"/>
<messageType idref="900"/>
</item>
<item id="912" type="com.j2fe.processing.FileDefinition">
<file id="913">equity_open_*.dlt.gz.enc.20*</file>
<group idref="93"/>
<messageType idref="900"/>
</item>
<item id="914" type="com.j2fe.processing.FileDefinition">
<file id="915">equity_open_*.out.gz.enc.20*</file>
<group idref="93"/>
<messageType idref="900"/>
</item>
</fileDefinitions>
<grouping>false</grouping>
<messageTypes id="916" type="java.util.HashSet">
<item idref="886" type="com.j2fe.processing.MessageType"/>
<item idref="900" type="com.j2fe.processing.MessageType"/>
</messageTypes>
<name id="917">Bloomberg_DL_Premarket</name>
</item>
<item id="918" type="com.j2fe.processing.BusinessFeed">
<dataSource idref="0"/>
<feedDefinition id="919">db://resource/xml/feeds/bloomberg/getdata.xml</feedDefinition>
<fileDefinitions id="920" type="java.util.ArrayList">
<item id="921" type="com.j2fe.processing.FileDefinition">
<file id="922">govt_national_namr.epx.gz.enc.20*</file>
<group id="923">5</group>
<messageType id="924">
<applicationName id="925">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="918"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="926" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="927">db://resource/mapping/Bloomberg/BBCorpGovtConvEPX.mdx</mappingResource>
<metaData id="928" type="java.util.HashMap">
<entry>
<key id="929" type="java.lang.String">DescriptiveData</key>
<value id="930" type="java.lang.String">Y</value>
</entry>
<entry>
<key id="931" type="java.lang.String">PriceData</key>
<value id="932" type="java.lang.String">Y</value>
</entry>
</metaData>
<name id="933">BBCorpGovtConvEPX</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<nearRealtimePublishingEvents id="934" type="java.util.ArrayList"/>
<publishingEvents id="935" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="936">
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
<item id="937" type="com.j2fe.processing.FileDefinition">
<file id="938">govt_national_lamr.epx.gz.enc.20*</file>
<group idref="923"/>
<messageType idref="924"/>
</item>
<item id="939" type="com.j2fe.processing.FileDefinition">
<file id="940">govt_national_euro.epx.gz.enc.20*</file>
<group idref="923"/>
<messageType idref="924"/>
</item>
<item id="941" type="com.j2fe.processing.FileDefinition">
<file id="942">govt_national_asia.epx.gz.enc.20*</file>
<group idref="923"/>
<messageType idref="924"/>
</item>
<item id="943" type="com.j2fe.processing.FileDefinition">
<file id="944">govt_agency_regl_namr.epx.gz.enc.20*</file>
<group idref="923"/>
<messageType idref="924"/>
</item>
<item id="945" type="com.j2fe.processing.FileDefinition">
<file id="946">govt_agency_regl_lamr.epx.gz.enc.20*</file>
<group idref="923"/>
<messageType idref="924"/>
</item>
<item id="947" type="com.j2fe.processing.FileDefinition">
<file id="948">govt_agency_regl_euro.epx.gz.enc.20*</file>
<group idref="923"/>
<messageType idref="924"/>
</item>
<item id="949" type="com.j2fe.processing.FileDefinition">
<file id="950">govt_agency_regl_asia.epx.gz.enc.20*</file>
<group idref="923"/>
<messageType idref="924"/>
</item>
<item id="951" type="com.j2fe.processing.FileDefinition">
<file id="952">corp_pfd_namr.epx.gz.enc.20*</file>
<group idref="923"/>
<messageType idref="924"/>
</item>
<item id="953" type="com.j2fe.processing.FileDefinition">
<file id="954">corp_pfd_lamr.epx.gz.enc.20*</file>
<group idref="923"/>
<messageType idref="924"/>
</item>
<item id="955" type="com.j2fe.processing.FileDefinition">
<file id="956">corp_pfd_euro.epx.gz.enc.20*</file>
<group idref="923"/>
<messageType idref="924"/>
</item>
<item id="957" type="com.j2fe.processing.FileDefinition">
<file id="958">corp_pfd_asia.epx.gz.enc.20*</file>
<group idref="923"/>
<messageType idref="924"/>
</item>
<item id="959" type="com.j2fe.processing.FileDefinition">
<file id="960">corp_pfd_convert_namr.epx.gz.enc.20*</file>
<group idref="923"/>
<messageType idref="924"/>
</item>
<item id="961" type="com.j2fe.processing.FileDefinition">
<file id="962">corp_pfd_convert_lamr.epx.gz.enc.20*</file>
<group idref="923"/>
<messageType idref="924"/>
</item>
<item id="963" type="com.j2fe.processing.FileDefinition">
<file id="964">corp_pfd_convert_asia.epx.gz.enc.20*</file>
<group idref="923"/>
<messageType idref="924"/>
</item>
<item id="965" type="com.j2fe.processing.FileDefinition">
<file id="966">corp_pfd_convert_euro.px.gz.enc.20*</file>
<group id="967">6</group>
<messageType id="968">
<applicationName id="969">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="918"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="970" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="971">db://resource/mapping/Bloomberg/BBCorpGovtConvPfdPricing.mdx</mappingResource>
<metaData id="972" type="java.util.HashMap">
<entry>
<key id="973" type="java.lang.String">DescriptiveData</key>
<value id="974" type="java.lang.String">Y</value>
</entry>
<entry>
<key id="975" type="java.lang.String">PriceData</key>
<value id="976" type="java.lang.String">Y</value>
</entry>
</metaData>
<name id="977">BBCorpGovtConvPfdPricing</name>
<nearRealtimePublishing>true</nearRealtimePublishing>
<nearRealtimePublishingEvents id="978" type="java.util.ArrayList">
<item id="979" type="java.lang.String">PublishSubscriptionRealTime</item>
</nearRealtimePublishingEvents>
<publishingEvents id="980" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="981">
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
<item id="982" type="com.j2fe.processing.FileDefinition">
<file id="983">corp_pfd_convert_namr.px.gz.enc.20*</file>
<group idref="967"/>
<messageType idref="968"/>
</item>
<item id="984" type="com.j2fe.processing.FileDefinition">
<file id="985">corp_pfd_euro.px.gz.enc.20*</file>
<group idref="967"/>
<messageType idref="968"/>
</item>
<item id="986" type="com.j2fe.processing.FileDefinition">
<file id="987">corp_pfd_namr.px.gz.enc.20*</file>
<group idref="967"/>
<messageType idref="968"/>
</item>
<item id="988" type="com.j2fe.processing.FileDefinition">
<file id="989">govt_agency_regl_euro.px.gz.enc.20*</file>
<group idref="967"/>
<messageType idref="968"/>
</item>
<item id="990" type="com.j2fe.processing.FileDefinition">
<file id="991">govt_agency_regl_namr.px.gz.enc.20*</file>
<group idref="967"/>
<messageType idref="968"/>
</item>
<item id="992" type="com.j2fe.processing.FileDefinition">
<file id="993">govt_national_euro.px.gz.enc.20*</file>
<group idref="967"/>
<messageType idref="968"/>
</item>
<item id="994" type="com.j2fe.processing.FileDefinition">
<file id="995">govt_national_namr.px.gz.enc.20*</file>
<group idref="967"/>
<messageType idref="968"/>
</item>
<item id="996" type="com.j2fe.processing.FileDefinition">
<file id="997">corp_pfd_convert_asia.px.gz.enc.20*</file>
<group idref="967"/>
<messageType idref="968"/>
</item>
<item id="998" type="com.j2fe.processing.FileDefinition">
<file id="999">corp_pfd_convert_lamr.px.gz.enc.20*</file>
<group idref="967"/>
<messageType idref="968"/>
</item>
<item id="1000" type="com.j2fe.processing.FileDefinition">
<file id="1001">corp_pfd_asia.px.gz.enc.20*</file>
<group idref="967"/>
<messageType idref="968"/>
</item>
<item id="1002" type="com.j2fe.processing.FileDefinition">
<file id="1003">corp_pfd_lamr.px.gz.enc.20*</file>
<group idref="967"/>
<messageType idref="968"/>
</item>
<item id="1004" type="com.j2fe.processing.FileDefinition">
<file id="1005">govt_agency_regl_asia.px.gz.enc.20*</file>
<group idref="967"/>
<messageType idref="968"/>
</item>
<item id="1006" type="com.j2fe.processing.FileDefinition">
<file id="1007">govt_agency_regl_lamr.px.gz.enc.20*</file>
<group idref="967"/>
<messageType idref="968"/>
</item>
<item id="1008" type="com.j2fe.processing.FileDefinition">
<file id="1009">govt_national_asia.px.gz.enc.20*</file>
<group idref="967"/>
<messageType idref="968"/>
</item>
<item id="1010" type="com.j2fe.processing.FileDefinition">
<file id="1011">govt_national_lamr.px.gz.enc.20*</file>
<group idref="967"/>
<messageType idref="968"/>
</item>
<item id="1012" type="com.j2fe.processing.FileDefinition">
<file id="1013">equity_option_euro.px.gz.enc.20*</file>
<group idref="923"/>
<messageType id="1014">
<applicationName id="1015">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="918"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="10"/>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="1016" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="1017">db://resource/mapping/Bloomberg/BBGlobalEquityOptionPricing.mdx</mappingResource>
<metaData id="1018" type="java.util.HashMap">
<entry>
<key id="1019" type="java.lang.String">DescriptiveData</key>
<value id="1020" type="java.lang.String">Y</value>
</entry>
<entry>
<key id="1021" type="java.lang.String">PriceData</key>
<value id="1022" type="java.lang.String">Y</value>
</entry>
</metaData>
<name id="1023">BBGlobalEquityOptionPricing</name>
<nearRealtimePublishing>true</nearRealtimePublishing>
<nearRealtimePublishingEvents id="1024" type="java.util.ArrayList">
<item id="1025" type="java.lang.String">PublishSubscriptionRealTime</item>
</nearRealtimePublishingEvents>
<publishingEvents id="1026" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="1027">
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
<item id="1028" type="com.j2fe.processing.FileDefinition">
<file id="1029">equity_option_asia1.px.gz.enc.20*</file>
<group idref="923"/>
<messageType idref="1014"/>
</item>
<item id="1030" type="com.j2fe.processing.FileDefinition">
<file id="1031">equity_option_asia2.px.gz.enc.20*</file>
<group idref="923"/>
<messageType idref="1014"/>
</item>
<item id="1032" type="com.j2fe.processing.FileDefinition">
<file id="1033">equity_option_lamr.px.gz.enc.20*</file>
<group idref="923"/>
<messageType idref="1014"/>
</item>
<item id="1034" type="com.j2fe.processing.FileDefinition">
<file id="1035">equity_asia1.px.gz.enc.20*</file>
<group idref="85"/>
<messageType id="1036">
<applicationName id="1037">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="918"/>
<caputureProcessMessage>true</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="10"/>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="1038" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="1039">db://resource/mapping/Bloomberg/BBGlobalEquityPricing.omdx</mappingResource>
<metaData id="1040" type="java.util.HashMap">
<entry>
<key id="1041" type="java.lang.String">DescriptiveData</key>
<value id="1042" type="java.lang.String">Y</value>
</entry>
<entry>
<key id="1043" type="java.lang.String">PriceData</key>
<value id="1044" type="java.lang.String">N</value>
</entry>
</metaData>
<name id="1045">BBGlobalEquityPricing</name>
<nearRealtimePublishing>true</nearRealtimePublishing>
<nearRealtimePublishingEvents id="1046" type="java.util.ArrayList">
<item id="1047" type="java.lang.String">PublishSubscriptionRealTime</item>
</nearRealtimePublishingEvents>
<publishingEvents id="1048" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="1049">
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
<item id="1050" type="com.j2fe.processing.FileDefinition">
<file id="1051">equity_asia2.px.gz.enc.20*</file>
<group idref="85"/>
<messageType idref="1036"/>
</item>
<item id="1052" type="com.j2fe.processing.FileDefinition">
<file id="1053">equity_euro.px.gz.enc.20*</file>
<group idref="85"/>
<messageType idref="1036"/>
</item>
<item id="1054" type="com.j2fe.processing.FileDefinition">
<file id="1055">equity_lamr.px.gz.enc.20*</file>
<group idref="85"/>
<messageType idref="1036"/>
</item>
<item id="1056" type="com.j2fe.processing.FileDefinition">
<file id="1057">equity_namr.px.gz.enc.20*</file>
<group idref="85"/>
<messageType idref="1036"/>
</item>
<item id="1058" type="com.j2fe.processing.FileDefinition">
<file id="1059">equity_euro.rpx.gz.enc.20*</file>
<group idref="73"/>
<messageType id="1060">
<applicationName id="1061">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="918"/>
<caputureProcessMessage>true</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="10"/>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="1062" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="1063">db://resource/mapping/Bloomberg/BBGlobalEquityRecapPricing.mdx</mappingResource>
<metaData id="1064" type="java.util.HashMap">
<entry>
<key id="1065" type="java.lang.String">DescriptiveData</key>
<value id="1066" type="java.lang.String">Y</value>
</entry>
<entry>
<key id="1067" type="java.lang.String">PriceData</key>
<value id="1068" type="java.lang.String">Y</value>
</entry>
</metaData>
<name id="1069">BBGlobalEquityRecapPricing</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<nearRealtimePublishingEvents id="1070" type="java.util.ArrayList"/>
<publishingEvents id="1071" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="1072">
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
<item id="1073" type="com.j2fe.processing.FileDefinition">
<file id="1074">equity_namr.rpx.gz.enc.20*</file>
<group idref="73"/>
<messageType idref="1060"/>
</item>
<item id="1075" type="com.j2fe.processing.FileDefinition">
<file id="1076">equity_asia2.rpx.gz.enc.20*</file>
<group idref="73"/>
<messageType idref="1060"/>
</item>
<item id="1077" type="com.j2fe.processing.FileDefinition">
<file id="1078">equity_lamr.rpx.gz.enc.20*</file>
<group idref="73"/>
<messageType idref="1060"/>
</item>
<item id="1079" type="com.j2fe.processing.FileDefinition">
<file id="1080">equity_fund_asia1.px.gz.enc.20*</file>
<group idref="85"/>
<messageType id="1081">
<applicationName id="1082">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="918"/>
<caputureProcessMessage>true</caputureProcessMessage>
<commitMode>None</commitMode>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="1083" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="1084">db://resource/mapping/Bloomberg/BBGlobalMutualFundPricing.mdx</mappingResource>
<metaData id="1085" type="java.util.HashMap">
<entry>
<key id="1086" type="java.lang.String">DescriptiveData</key>
<value id="1087" type="java.lang.String">Y</value>
</entry>
<entry>
<key id="1088" type="java.lang.String">PriceData</key>
<value id="1089" type="java.lang.String">Y</value>
</entry>
</metaData>
<name id="1090">BBGlobalMutualFundPricing</name>
<nearRealtimePublishing>true</nearRealtimePublishing>
<nearRealtimePublishingEvents id="1091" type="java.util.ArrayList">
<item id="1092" type="java.lang.String">PublishSubscriptionRealTime</item>
</nearRealtimePublishingEvents>
<publishingEvents id="1093" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="1094">
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
<item id="1095" type="com.j2fe.processing.FileDefinition">
<file id="1096">equity_fund_asia2.px.gz.enc.20*</file>
<group idref="85"/>
<messageType idref="1081"/>
</item>
<item id="1097" type="com.j2fe.processing.FileDefinition">
<file id="1098">equity_fund_euro.px.gz.enc.20*</file>
<group idref="85"/>
<messageType idref="1081"/>
</item>
<item id="1099" type="com.j2fe.processing.FileDefinition">
<file id="1100">equity_fund_lamr.px.gz.enc.20*</file>
<group idref="85"/>
<messageType idref="1081"/>
</item>
<item id="1101" type="com.j2fe.processing.FileDefinition">
<file id="1102">equity_fund_namr.px.gz.enc.20*</file>
<group idref="85"/>
<messageType idref="1081"/>
</item>
<item id="1103" type="com.j2fe.processing.FileDefinition">
<file id="1104">equity_warrant_euro.px.gz.enc.20*</file>
<group idref="923"/>
<messageType id="1105">
<applicationName id="1106">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="918"/>
<caputureProcessMessage>true</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="10"/>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="1107" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="1108">db://resource/mapping/Bloomberg/BBGlobalWarrantsPricing.mdx</mappingResource>
<metaData id="1109" type="java.util.HashMap">
<entry>
<key id="1110" type="java.lang.String">DescriptiveData</key>
<value id="1111" type="java.lang.String">Y</value>
</entry>
<entry>
<key id="1112" type="java.lang.String">PriceData</key>
<value id="1113" type="java.lang.String">N</value>
</entry>
</metaData>
<name id="1114">BBGlobalWarrantsPricing</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<nearRealtimePublishingEvents id="1115" type="java.util.ArrayList"/>
<publishingEvents id="1116" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="1117">
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
<item id="1118" type="com.j2fe.processing.FileDefinition">
<file id="1119">equity_warrant_namr.px.gz.enc.20*</file>
<group idref="923"/>
<messageType idref="1105"/>
</item>
<item id="1120" type="com.j2fe.processing.FileDefinition">
<file id="1121">equity_warrant_asia1.px.gz.enc.20*</file>
<group idref="923"/>
<messageType idref="1105"/>
</item>
<item id="1122" type="com.j2fe.processing.FileDefinition">
<file id="1123">equity_warrant_asia2.px.gz.enc.20*</file>
<group idref="923"/>
<messageType idref="1105"/>
</item>
<item id="1124" type="com.j2fe.processing.FileDefinition">
<file id="1125">equity_warrant_lamr.px.gz.enc.20*</file>
<group idref="923"/>
<messageType idref="1105"/>
</item>
<item id="1126" type="com.j2fe.processing.FileDefinition">
<file id="1127">muni_namr.px.gz.enc.20*</file>
<group idref="85"/>
<messageType id="1128">
<applicationName id="1129">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="918"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="1130" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="1131">db://resource/mapping/Bloomberg/BBMunisPricing.mdx</mappingResource>
<metaData id="1132" type="java.util.HashMap">
<entry>
<key id="1133" type="java.lang.String">DescriptiveData</key>
<value id="1134" type="java.lang.String">Y</value>
</entry>
<entry>
<key id="1135" type="java.lang.String">PriceData</key>
<value id="1136" type="java.lang.String">Y</value>
</entry>
</metaData>
<name id="1137">BBMunisPricing</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<nearRealtimePublishingEvents id="1138" type="java.util.ArrayList"/>
<publishingEvents id="1139" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="1140">
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
<item id="1141" type="com.j2fe.processing.FileDefinition">
<file id="1142">pfd_asia.px.gz.enc.20*</file>
<group idref="85"/>
<messageType id="1143">
<applicationName id="1144">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="918"/>
<caputureProcessMessage>true</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="10"/>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="1145" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="1146">db://resource/mapping/Bloomberg/BBPreferredPricing.mdx</mappingResource>
<metaData id="1147" type="java.util.HashMap">
<entry>
<key id="1148" type="java.lang.String">DescriptiveData</key>
<value id="1149" type="java.lang.String">Y</value>
</entry>
<entry>
<key id="1150" type="java.lang.String">PriceData</key>
<value id="1151" type="java.lang.String">N</value>
</entry>
</metaData>
<name id="1152">BBPreferredPricing</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<nearRealtimePublishingEvents id="1153" type="java.util.ArrayList"/>
<publishingEvents id="1154" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="1155">
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
<item id="1156" type="com.j2fe.processing.FileDefinition">
<file id="1157">pfd_euro.px.gz.enc.20*</file>
<group idref="85"/>
<messageType idref="1143"/>
</item>
<item id="1158" type="com.j2fe.processing.FileDefinition">
<file id="1159">pfd_lamr.px.gz.enc.20*</file>
<group idref="85"/>
<messageType idref="1143"/>
</item>
<item id="1160" type="com.j2fe.processing.FileDefinition">
<file id="1161">pfd_namr.px.gz.enc.20*</file>
<group idref="85"/>
<messageType idref="1143"/>
</item>
<item id="1162" type="com.j2fe.processing.FileDefinition">
<file id="1163">pfd_global.rpx.gz.enc.20*</file>
<group idref="73"/>
<messageType id="1164">
<applicationName id="1165">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="918"/>
<caputureProcessMessage>true</caputureProcessMessage>
<commitMode>None</commitMode>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="1166" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="1167">db://resource/mapping/Bloomberg/BBPreferredRPX.mdx</mappingResource>
<metaData id="1168" type="java.util.HashMap">
<entry>
<key id="1169" type="java.lang.String">DescriptiveData</key>
<value id="1170" type="java.lang.String">Y</value>
</entry>
<entry>
<key id="1171" type="java.lang.String">PriceData</key>
<value id="1172" type="java.lang.String">Y</value>
</entry>
</metaData>
<name id="1173">BBPreferredRPX</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<nearRealtimePublishingEvents id="1174" type="java.util.ArrayList"/>
<publishingEvents id="1175" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="1176">
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
<item id="1177" type="com.j2fe.processing.FileDefinition">
<file id="1178">mtge_abs_namr.px.gz.enc.20*</file>
<group idref="967"/>
<messageType id="1179">
<applicationName id="1180">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="918"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="10"/>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="1181" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="1182">db://resource/mapping/Bloomberg/BBMortgageNonPoolABSPricing.mdx</mappingResource>
<metaData id="1183" type="java.util.HashMap">
<entry>
<key id="1184" type="java.lang.String">DescriptiveData</key>
<value id="1185" type="java.lang.String">Y</value>
</entry>
<entry>
<key id="1186" type="java.lang.String">PriceData</key>
<value id="1187" type="java.lang.String">Y</value>
</entry>
</metaData>
<name id="1188">BBMortgageNonPoolABSPricing</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<nearRealtimePublishingEvents id="1189" type="java.util.ArrayList"/>
<publishingEvents id="1190" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="1191">
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
<item id="1192" type="com.j2fe.processing.FileDefinition">
<file id="1193">pfd_exch_asia.px.gz.enc.20*</file>
<group idref="93"/>
<messageType id="1194">
<applicationName id="1195">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="918"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="10"/>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="1196" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="1197">db://resource/mapping/Bloomberg/BBPreferredExchangePricing.mdx</mappingResource>
<metaData id="1198" type="java.util.HashMap">
<entry>
<key id="1199" type="java.lang.String">DescriptiveData</key>
<value id="1200" type="java.lang.String">Y</value>
</entry>
<entry>
<key id="1201" type="java.lang.String">PriceData</key>
<value id="1202" type="java.lang.String">Y</value>
</entry>
</metaData>
<name id="1203">BBPreferredExchangePricing</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<nearRealtimePublishingEvents id="1204" type="java.util.ArrayList"/>
<publishingEvents id="1205" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="1206">
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
<item id="1207" type="com.j2fe.processing.FileDefinition">
<file id="1208">pfd_exch_euro.px.gz.enc.20*</file>
<group idref="93"/>
<messageType idref="1194"/>
</item>
<item id="1209" type="com.j2fe.processing.FileDefinition">
<file id="1210">pfd_exch_lamr.px.gz.enc.20*</file>
<group idref="93"/>
<messageType idref="1194"/>
</item>
<item id="1211" type="com.j2fe.processing.FileDefinition">
<file id="1212">pfd_exch_namr.px.gz.enc.20*</file>
<group idref="93"/>
<messageType idref="1194"/>
</item>
<item id="1213" type="com.j2fe.processing.FileDefinition">
<file id="1214">equity_mifid_euro.px</file>
<group idref="93"/>
<messageType id="1215">
<applicationName id="1216">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="918"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="10"/>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="1217" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="1218">db://resource/mapping/Bloomberg/BBGlobalEquityMiFIDPricing.mdx</mappingResource>
<metaData id="1219" type="java.util.HashMap">
<entry>
<key id="1220" type="java.lang.String">DescriptiveData</key>
<value id="1221" type="java.lang.String">Y</value>
</entry>
<entry>
<key id="1222" type="java.lang.String">PriceData</key>
<value id="1223" type="java.lang.String">Y</value>
</entry>
</metaData>
<name id="1224">BBGlobalEquityMiFIDPricing</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<nearRealtimePublishingEvents id="1225" type="java.util.ArrayList"/>
<publishingEvents id="1226" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="1227">
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
<item id="1228" type="com.j2fe.processing.FileDefinition">
<file id="1229">equity_mifid_euro.px.hpc</file>
<group idref="93"/>
<messageType idref="1215"/>
</item>
<item id="1230" type="com.j2fe.processing.FileDefinition">
<file id="1231">equityOptionsAsia1.px.gz.enc.20*</file>
<group idref="923"/>
<messageType id="1232">
<applicationName id="1233">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="918"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="10"/>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="1234" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="1235">db://resource/mapping/Bloomberg/BBGlobalEquityListedOptionPricing.mdx</mappingResource>
<metaData id="1236" type="java.util.HashMap">
<entry>
<key id="1237" type="java.lang.String">DescriptiveData</key>
<value id="1238" type="java.lang.String">Y</value>
</entry>
<entry>
<key id="1239" type="java.lang.String">PriceData</key>
<value id="1240" type="java.lang.String">Y</value>
</entry>
</metaData>
<name id="1241">BBGlobalEquityListedOptionPricing</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<nearRealtimePublishingEvents id="1242" type="java.util.ArrayList"/>
<publishingEvents id="1243" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="1244">
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
<item id="1245" type="com.j2fe.processing.FileDefinition">
<file id="1246">equityOptionsAsia2.px.gz.enc.20*</file>
<group idref="923"/>
<messageType idref="1232"/>
</item>
<item id="1247" type="com.j2fe.processing.FileDefinition">
<file id="1248">equityOptionsAsia3.px.gz.enc.20*</file>
<group idref="923"/>
<messageType idref="1232"/>
</item>
<item id="1249" type="com.j2fe.processing.FileDefinition">
<file id="1250">equityOptionsAsia4.px.gz.enc.20*</file>
<group idref="923"/>
<messageType idref="1232"/>
</item>
<item id="1251" type="com.j2fe.processing.FileDefinition">
<file id="1252">equityOptionsAsia5.px.gz.enc.20*</file>
<group idref="923"/>
<messageType idref="1232"/>
</item>
<item id="1253" type="com.j2fe.processing.FileDefinition">
<file id="1254">equityOptionsEuro1.px.gz.enc.20*</file>
<group idref="923"/>
<messageType idref="1232"/>
</item>
<item id="1255" type="com.j2fe.processing.FileDefinition">
<file id="1256">equityOptionsEuro2.px.gz.enc.20*</file>
<group idref="923"/>
<messageType idref="1232"/>
</item>
<item id="1257" type="com.j2fe.processing.FileDefinition">
<file id="1258">equityOptionsLamr1.px.gz.enc.20*</file>
<group idref="923"/>
<messageType idref="1232"/>
</item>
<item id="1259" type="com.j2fe.processing.FileDefinition">
<file id="1260">equityOptionsLamr2.px.gz.enc.20*</file>
<group idref="923"/>
<messageType idref="1232"/>
</item>
<item id="1261" type="com.j2fe.processing.FileDefinition">
<file id="1262">equityOptionsNamr1.px.gz.enc.20*</file>
<group idref="923"/>
<messageType idref="1232"/>
</item>
<item id="1263" type="com.j2fe.processing.FileDefinition">
<file id="1264">equityOptionsNamr2.px.gz.enc.20*</file>
<group idref="923"/>
<messageType idref="1232"/>
</item>
<item id="1265" type="com.j2fe.processing.FileDefinition">
<file id="1266">equityOptionsNamr3.px.gz.enc.20*</file>
<group idref="923"/>
<messageType idref="1232"/>
</item>
<item id="1267" type="com.j2fe.processing.FileDefinition">
<file id="1268">equityOptionsLocal1Namr2.px.gz.enc.20*</file>
<group idref="923"/>
<messageType idref="1232"/>
</item>
<item id="1269" type="com.j2fe.processing.FileDefinition">
<file id="1270">equityOptionsLocal2Namr2.px.gz.enc.20*</file>
<group idref="923"/>
<messageType idref="1232"/>
</item>
<item id="1271" type="com.j2fe.processing.FileDefinition">
<file id="1272">equityOptionsLocal3Namr2.px.gz.enc.20*</file>
<group idref="923"/>
<messageType idref="1232"/>
</item>
<item id="1273" type="com.j2fe.processing.FileDefinition">
<file id="1274">equityOptionsLocal4Namr2.px.gz.enc.20*</file>
<group idref="923"/>
<messageType idref="1232"/>
</item>
<item id="1275" type="com.j2fe.processing.FileDefinition">
<file id="1276">equityOptionsLocal5Namr2.px.gz.enc.20*</file>
<group idref="923"/>
<messageType idref="1232"/>
</item>
<item id="1277" type="com.j2fe.processing.FileDefinition">
<file id="1278">nonEquityOptionsAsia.px.gz.enc.20*</file>
<group id="1279">7</group>
<messageType id="1280">
<applicationName id="1281">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="918"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="10"/>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="1282" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="1283">db://resource/mapping/Bloomberg/BBGlobalNon-EquityListedOptionPricing.mdx</mappingResource>
<metaData id="1284" type="java.util.HashMap">
<entry>
<key id="1285" type="java.lang.String">DescriptiveData</key>
<value id="1286" type="java.lang.String">Y</value>
</entry>
<entry>
<key id="1287" type="java.lang.String">PriceData</key>
<value id="1288" type="java.lang.String">Y</value>
</entry>
</metaData>
<name id="1289">BBGlobalNon-EquityListedOptionPricing</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<nearRealtimePublishingEvents id="1290" type="java.util.ArrayList"/>
<publishingEvents id="1291" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="1292">
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
<item id="1293" type="com.j2fe.processing.FileDefinition">
<file id="1294">nonEquityOptionsEuro.px.gz.enc.20*</file>
<group idref="1279"/>
<messageType idref="1280"/>
</item>
<item id="1295" type="com.j2fe.processing.FileDefinition">
<file id="1296">nonEquityOptionsLamr.px.gz.enc.20*</file>
<group idref="1279"/>
<messageType idref="1280"/>
</item>
<item id="1297" type="com.j2fe.processing.FileDefinition">
<file id="1298">nonEquityOptionsNamr.px.gz.enc.20*</file>
<group idref="1279"/>
<messageType idref="1280"/>
</item>
<item id="1299" type="com.j2fe.processing.FileDefinition">
<file id="1300">shareFuturesAsia1.px.gz.enc.20*</file>
<group id="1301">8</group>
<messageType id="1302">
<applicationName id="1303">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="918"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="10"/>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="1304" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="1305">db://resource/mapping/Bloomberg/BBGlobalListedFuturesPricing.mdx</mappingResource>
<metaData id="1306" type="java.util.HashMap">
<entry>
<key id="1307" type="java.lang.String">DescriptiveData</key>
<value id="1308" type="java.lang.String">Y</value>
</entry>
<entry>
<key id="1309" type="java.lang.String">PriceData</key>
<value id="1310" type="java.lang.String">Y</value>
</entry>
</metaData>
<name id="1311">BBGlobalListedFuturesPricing</name>
<nearRealtimePublishing>true</nearRealtimePublishing>
<nearRealtimePublishingEvents id="1312" type="java.util.ArrayList">
<item id="1313" type="java.lang.String">PublishSubscriptionRealTime</item>
</nearRealtimePublishingEvents>
<publishingEvents id="1314" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="1315">
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
<item id="1316" type="com.j2fe.processing.FileDefinition">
<file id="1317">shareFuturesAsia2.px.gz.enc.20*</file>
<group idref="1301"/>
<messageType idref="1302"/>
</item>
<item id="1318" type="com.j2fe.processing.FileDefinition">
<file id="1319">shareFuturesAsia3.px.gz.enc.20*</file>
<group idref="1301"/>
<messageType idref="1302"/>
</item>
<item id="1320" type="com.j2fe.processing.FileDefinition">
<file id="1321">shareFuturesEuro.px.gz.enc.20*</file>
<group idref="1301"/>
<messageType idref="1302"/>
</item>
<item id="1322" type="com.j2fe.processing.FileDefinition">
<file id="1323">shareFuturesLamr.px.gz.enc.20*</file>
<group idref="1301"/>
<messageType idref="1302"/>
</item>
<item id="1324" type="com.j2fe.processing.FileDefinition">
<file id="1325">shareFuturesNamr.px.gz.enc.20*</file>
<group idref="1301"/>
<messageType idref="1302"/>
</item>
<item id="1326" type="com.j2fe.processing.FileDefinition">
<file id="1327">nonShareFuturesAsia.px.gz.enc.20*</file>
<group idref="1301"/>
<messageType idref="1302"/>
</item>
<item id="1328" type="com.j2fe.processing.FileDefinition">
<file id="1329">nonShareFuturesLamr.px.gz.enc.20*</file>
<group idref="1301"/>
<messageType idref="1302"/>
</item>
<item id="1330" type="com.j2fe.processing.FileDefinition">
<file id="1331">nonShareFuturesEuro.px.gz.enc.20*</file>
<group idref="1301"/>
<messageType idref="1302"/>
</item>
<item id="1332" type="com.j2fe.processing.FileDefinition">
<file id="1333">fixedincome_bo_*.px.gz.enc.20*</file>
<group idref="967"/>
<messageType idref="968"/>
</item>
<item id="1334" type="com.j2fe.processing.FileDefinition">
<file id="1335">nonShareFuturesNamr1.px.gz.enc.20*</file>
<group idref="1301"/>
<messageType idref="1302"/>
</item>
<item id="1336" type="com.j2fe.processing.FileDefinition">
<file id="1337">nonShareFuturesNamr2.px.gz.enc.20*</file>
<group idref="1301"/>
<messageType idref="1302"/>
</item>
<item id="1338" type="com.j2fe.processing.FileDefinition">
<file id="1339">nonShareFuturesNamr3.px.gz.enc.20*</file>
<group idref="1301"/>
<messageType idref="1302"/>
</item>
<item id="1340" type="com.j2fe.processing.FileDefinition">
<file id="1341">nonShareFuturesNamr.px.gz.enc.20*</file>
<group idref="1301"/>
<messageType idref="1302"/>
</item>
</fileDefinitions>
<grouping>false</grouping>
<messageTypes id="1342" type="java.util.HashSet">
<item idref="1060" type="com.j2fe.processing.MessageType"/>
<item idref="1105" type="com.j2fe.processing.MessageType"/>
<item idref="1232" type="com.j2fe.processing.MessageType"/>
<item idref="1302" type="com.j2fe.processing.MessageType"/>
<item idref="1215" type="com.j2fe.processing.MessageType"/>
<item idref="1164" type="com.j2fe.processing.MessageType"/>
<item idref="924" type="com.j2fe.processing.MessageType"/>
<item idref="1081" type="com.j2fe.processing.MessageType"/>
<item idref="1143" type="com.j2fe.processing.MessageType"/>
<item idref="968" type="com.j2fe.processing.MessageType"/>
<item idref="1128" type="com.j2fe.processing.MessageType"/>
<item idref="1194" type="com.j2fe.processing.MessageType"/>
<item idref="1014" type="com.j2fe.processing.MessageType"/>
<item idref="1179" type="com.j2fe.processing.MessageType"/>
<item idref="1280" type="com.j2fe.processing.MessageType"/>
<item idref="1036" type="com.j2fe.processing.MessageType"/>
</messageTypes>
<name id="1343">Bloomberg_DL_End_of_Day_Pricing</name>
</item>
<item id="1344" type="com.j2fe.processing.BusinessFeed">
<dataSource idref="0"/>
<feedDefinition id="1345">db://resource/xml/feeds/bloomberg/getdata.xml</feedDefinition>
<fileDefinitions id="1346" type="java.util.ArrayList">
<item id="1347" type="com.j2fe.processing.FileDefinition">
<file id="1348">creditRiskV2.out.gz.enc.20*</file>
<group idref="24"/>
<messageType id="1349">
<applicationName id="1350">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="1344"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="10"/>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="1351" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="1352">db://resource/mapping/Bloomberg/BBCreditRisk_V2.mdx</mappingResource>
<metaData id="1353" type="java.util.HashMap"/>
<name id="1354">BBCreditRisk</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<nearRealtimePublishingEvents id="1355" type="java.util.ArrayList"/>
<publishingEvents id="1356" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="1357">
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
<item id="1358" type="com.j2fe.processing.FileDefinition">
<file id="1359">creditRiskV2.diff.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="1349"/>
</item>
</fileDefinitions>
<grouping>false</grouping>
<messageTypes id="1360" type="java.util.HashSet">
<item idref="1349" type="com.j2fe.processing.MessageType"/>
</messageTypes>
<name id="1361">Bloomberg_Credit_Risk</name>
</item>
<item id="1362" type="com.j2fe.processing.BusinessFeed">
<dataSource idref="0"/>
<feedDefinition id="1363">db://resource/xml/feeds/bloomberg/getdata.xml</feedDefinition>
<fileDefinitions id="1364" type="java.util.ArrayList">
<item id="1365" type="com.j2fe.processing.FileDefinition">
<file id="1366">muni_namr.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType id="1367">
<applicationName id="1368">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="1362"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="10"/>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="1369" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="1370">db://resource/mapping/Bloomberg/BBMunicipals.mdx</mappingResource>
<metaData id="1371" type="java.util.HashMap">
<entry>
<key id="1372" type="java.lang.String">IssuerData</key>
<value id="1373" type="java.lang.String">Y</value>
</entry>
<entry>
<key id="1374" type="java.lang.String">SecurityData</key>
<value id="1375" type="java.lang.String">Y</value>
</entry>
</metaData>
<name id="1376">BBMunicipals</name>
<nearRealtimePublishing>true</nearRealtimePublishing>
<nearRealtimePublishingEvents id="1377" type="java.util.ArrayList">
<item id="1378" type="java.lang.String">PublishSubscriptionRealTime</item>
</nearRealtimePublishingEvents>
<publishingEvents id="1379" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="1380">
<filterVDDBNotifications>false</filterVDDBNotifications>
<inputMessageSaveOnly>false</inputMessageSaveOnly>
<saveInputMessage>ERROR</saveInputMessage>
<saveLowLevelNotificationsOnlyForErrors>false</saveLowLevelNotificationsOnlyForErrors>
<saveNotifications>ERROR</saveNotifications>
<saveProcessedMessage>ERROR</saveProcessedMessage>
<saveTranslatedMessage>NOTPROCESSED</saveTranslatedMessage>
<saveUnprocessedInputMessage>false</saveUnprocessedInputMessage>
</streetLamp>
<syncPublishing>false</syncPublishing>
</messageType>
</item>
<item id="1381" type="com.j2fe.processing.FileDefinition">
<file id="1382">muni_namr.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="1367"/>
</item>
</fileDefinitions>
<grouping>false</grouping>
<messageTypes id="1383" type="java.util.HashSet">
<item idref="1367" type="com.j2fe.processing.MessageType"/>
</messageTypes>
<name id="1384">Bloomberg_DL_Global_Municipals</name>
</item>
<item id="1385" type="com.j2fe.processing.BusinessFeed">
<dataSource idref="0"/>
<feedDefinition id="1386">db://resource/xml/feeds/bloomberg/getdata.xml</feedDefinition>
<fileDefinitions id="1387" type="java.util.ArrayList">
<item id="1388" type="com.j2fe.processing.FileDefinition">
<file id="1389">nonEquityOptionsAsia.out.gz.enc.20*</file>
<group idref="24"/>
<messageType id="1390">
<applicationName id="1391">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="1385"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="1392" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="1393">db://resource/mapping/Bloomberg/BBGlobalNon-EquityListedOptions.mdx</mappingResource>
<metaData id="1394" type="java.util.HashMap"/>
<name id="1395">BBGlobalNon-EquityListedOptions</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<nearRealtimePublishingEvents id="1396" type="java.util.ArrayList"/>
<publishingEvents id="1397" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="1398">
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
<item id="1399" type="com.j2fe.processing.FileDefinition">
<file id="1400">nonEquityOptionsEuro.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="1390"/>
</item>
<item id="1401" type="com.j2fe.processing.FileDefinition">
<file id="1402">nonEquityOptionsLamr.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="1390"/>
</item>
<item id="1403" type="com.j2fe.processing.FileDefinition">
<file id="1404">nonEquityOptionsNamr.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="1390"/>
</item>
<item id="1405" type="com.j2fe.processing.FileDefinition">
<file id="1406">nonEquityOptionsAsia.dif.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="1390"/>
</item>
<item id="1407" type="com.j2fe.processing.FileDefinition">
<file id="1408">nonEquityOptionsEuro.dif.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="1390"/>
</item>
<item id="1409" type="com.j2fe.processing.FileDefinition">
<file id="1410">nonEquityOptionsLamr.dif.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="1390"/>
</item>
<item id="1411" type="com.j2fe.processing.FileDefinition">
<file id="1412">nonEquityOptionsNamr.dif.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="1390"/>
</item>
</fileDefinitions>
<grouping>false</grouping>
<messageTypes id="1413" type="java.util.HashSet">
<item idref="1390" type="com.j2fe.processing.MessageType"/>
</messageTypes>
<name id="1414">Bloomberg_DL_Non-Equity_Listed_Options</name>
</item>
<item id="1415" type="com.j2fe.processing.BusinessFeed">
<dataSource idref="0"/>
<feedDefinition id="1416">db://resource/xml/feeds/bloomberg/getdata.xml</feedDefinition>
<fileDefinitions id="1417" type="java.util.ArrayList">
<item id="1418" type="com.j2fe.processing.FileDefinition">
<file id="1419">equity_euro.out.gz.enc.20*</file>
<group idref="24"/>
<messageType id="1420">
<applicationName id="1421">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="1415"/>
<caputureProcessMessage>true</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="10"/>
<dataLineageEnabled>true</dataLineageEnabled>
<endOfFileEvents id="1422" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>false</isVDDB>
<mappingResource id="1423">db://resource/mapping/Bloomberg/BBGlobalEquity.omdx</mappingResource>
<metaData id="1424" type="java.util.HashMap"/>
<name id="1425">BBGlobalEquity</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<nearRealtimePublishingEvents id="1426" type="java.util.ArrayList">
<item id="1427" type="java.lang.String">PublishSubscriptionRealTime</item>
</nearRealtimePublishingEvents>
<publishingEvents id="1428" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>Staging</saveVendorDataType>
<streetLamp id="1429">
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
<item id="1430" type="com.j2fe.processing.FileDefinition">
<file id="1431">equity_asia1.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="1420"/>
</item>
<item id="1432" type="com.j2fe.processing.FileDefinition">
<file id="1433">equity_asia2.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="1420"/>
</item>
<item id="1434" type="com.j2fe.processing.FileDefinition">
<file id="1435">equity_lamr.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="1420"/>
</item>
<item id="1436" type="com.j2fe.processing.FileDefinition">
<file id="1437">equity_namr.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="1420"/>
</item>
<item id="1438" type="com.j2fe.processing.FileDefinition">
<file id="1439">equity_euro.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="1420"/>
</item>
<item id="1440" type="com.j2fe.processing.FileDefinition">
<file id="1441">equity_asia1.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="1420"/>
</item>
<item id="1442" type="com.j2fe.processing.FileDefinition">
<file id="1443">equity_asia2.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="1420"/>
</item>
<item id="1444" type="com.j2fe.processing.FileDefinition">
<file id="1445">equity_lamr.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="1420"/>
</item>
<item id="1446" type="com.j2fe.processing.FileDefinition">
<file id="1447">equity_namr.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="1420"/>
</item>
<item id="1448" type="com.j2fe.processing.FileDefinition">
<file id="1449">equity_euro.out.gz.enc</file>
<group idref="24"/>
<messageType idref="1420"/>
</item>
<item id="1450" type="com.j2fe.processing.FileDefinition">
<file id="1451">equity_asia1.out.gz.enc</file>
<group idref="24"/>
<messageType idref="1420"/>
</item>
<item id="1452" type="com.j2fe.processing.FileDefinition">
<file id="1453">equity_asia2.out.gz.enc</file>
<group idref="24"/>
<messageType idref="1420"/>
</item>
<item id="1454" type="com.j2fe.processing.FileDefinition">
<file id="1455">equity_lamr.out.gz.enc</file>
<group idref="24"/>
<messageType idref="1420"/>
</item>
<item id="1456" type="com.j2fe.processing.FileDefinition">
<file id="1457">equity_namr.out.gz.enc</file>
<group idref="24"/>
<messageType idref="1420"/>
</item>
<item id="1458" type="com.j2fe.processing.FileDefinition">
<file id="1459">equity_euro.dif.gz.enc</file>
<group idref="7"/>
<messageType idref="1420"/>
</item>
<item id="1460" type="com.j2fe.processing.FileDefinition">
<file id="1461">equity_asia1.dif.gz.enc</file>
<group idref="7"/>
<messageType idref="1420"/>
</item>
<item id="1462" type="com.j2fe.processing.FileDefinition">
<file id="1463">equity_asia2.dif.gz.enc</file>
<group idref="7"/>
<messageType idref="1420"/>
</item>
<item id="1464" type="com.j2fe.processing.FileDefinition">
<file id="1465">equity_lamr.dif.gz.enc</file>
<group idref="7"/>
<messageType idref="1420"/>
</item>
<item id="1466" type="com.j2fe.processing.FileDefinition">
<file id="1467">equity_namr.dif.gz.enc</file>
<group idref="7"/>
<messageType idref="1420"/>
</item>
<item id="1468" type="com.j2fe.processing.FileDefinition">
<file id="1469">pfd_exch_namr.out.gz.enc.20*</file>
<group idref="24"/>
<messageType id="1470">
<applicationName id="1471">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="1415"/>
<caputureProcessMessage>true</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="10"/>
<dataLineageEnabled>true</dataLineageEnabled>
<endOfFileEvents id="1472" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="1473">db://resource/mapping/Bloomberg/BBPreferredExchangeTraded.mdx</mappingResource>
<metaData id="1474" type="java.util.HashMap"/>
<name id="1475">BBPreferredExchangeTraded</name>
<nearRealtimePublishing>true</nearRealtimePublishing>
<nearRealtimePublishingEvents id="1476" type="java.util.ArrayList">
<item id="1477" type="java.lang.String">PublishSubscriptionRealTime</item>
</nearRealtimePublishingEvents>
<publishingEvents id="1478" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>Staging</saveVendorDataType>
<streetLamp id="1479">
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
<item id="1480" type="com.j2fe.processing.FileDefinition">
<file id="1481">pfd_exch_namr.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="1470"/>
</item>
<item id="1482" type="com.j2fe.processing.FileDefinition">
<file id="1483">pfd_exch_asia.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="1470"/>
</item>
<item id="1484" type="com.j2fe.processing.FileDefinition">
<file id="1485">pfd_exch_asia.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="1470"/>
</item>
<item id="1486" type="com.j2fe.processing.FileDefinition">
<file id="1487">pfd_exch_lamr.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="1470"/>
</item>
<item id="1488" type="com.j2fe.processing.FileDefinition">
<file id="1489">pfd_exch_lamr.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="1470"/>
</item>
<item id="1490" type="com.j2fe.processing.FileDefinition">
<file id="1491">pfd_exch_euro.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="1470"/>
</item>
<item id="1492" type="com.j2fe.processing.FileDefinition">
<file id="1493">pfd_exch_euro.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="1470"/>
</item>
</fileDefinitions>
<grouping>false</grouping>
<messageTypes id="1494" type="java.util.HashSet">
<item idref="1420" type="com.j2fe.processing.MessageType"/>
<item id="1495" type="com.j2fe.processing.MessageType">
<businessEntity>false</businessEntity>
<businessFeed idref="1415"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="1496" type="java.util.ArrayList"/>
<isKeyStreaming>false</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="1497">db://resource/mapping/Bloomberg/BBGlobalEquityShortSaleCircuitBreak.mdx</mappingResource>
<metaData id="1498" type="java.util.HashMap"/>
<name id="1499">BBGlobalEquityShortSaleCircuitBreak</name>
<nearRealtimePublishing>true</nearRealtimePublishing>
<nearRealtimePublishingEvents id="1500" type="java.util.ArrayList">
<item id="1501" type="java.lang.String">PublishSubscriptionRealTime</item>
</nearRealtimePublishingEvents>
<publishingEvents id="1502" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="1503">
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
<item id="1504" type="com.j2fe.processing.MessageType">
<businessEntity>false</businessEntity>
<businessFeed idref="1415"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="1505" type="java.util.ArrayList"/>
<isKeyStreaming>false</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="1506">db://resource/mapping/Bloomberg/BBGlobalEquityShortSale.mdx</mappingResource>
<metaData id="1507" type="java.util.HashMap"/>
<name id="1508">BBGlobalEquityShortSale</name>
<nearRealtimePublishing>false</nearRealtimePublishing>
<nearRealtimePublishingEvents id="1509" type="java.util.ArrayList"/>
<publishingEvents id="1510" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="1511">
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
<item idref="1470" type="com.j2fe.processing.MessageType"/>
</messageTypes>
<name id="1512">Bloomberg_DL_Global_Equity</name>
</item>
<item id="1513" type="com.j2fe.processing.BusinessFeed">
<dataSource idref="0"/>
<feedDefinition id="1514">db://resource/xml/feeds/bloomberg/getdata.xml</feedDefinition>
<fileDefinitions id="1515" type="java.util.ArrayList">
<item id="1516" type="com.j2fe.processing.FileDefinition">
<file id="1517">cert_euro.out.gz.enc.20*</file>
<group idref="24"/>
<messageType id="1518">
<applicationName id="1519">SECURITIESANDPROD</applicationName>
<businessEntity>false</businessEntity>
<businessFeed idref="1513"/>
<caputureProcessMessage>false</caputureProcessMessage>
<commitMode>None</commitMode>
<createMarketRealTimeInd idref="10"/>
<dataLineageEnabled>false</dataLineageEnabled>
<endOfFileEvents id="1520" type="java.util.ArrayList"/>
<isKeyStreaming>true</isKeyStreaming>
<isVDDB>true</isVDDB>
<mappingResource id="1521">db://resource/mapping/Bloomberg/BBGlobalCertificates.mdx</mappingResource>
<metaData id="1522" type="java.util.HashMap"/>
<name id="1523">BBGlobalCertificates</name>
<nearRealtimePublishing>true</nearRealtimePublishing>
<nearRealtimePublishingEvents id="1524" type="java.util.ArrayList">
<item id="1525" type="java.lang.String">PublishSubscriptionRealTime</item>
</nearRealtimePublishingEvents>
<publishingEvents id="1526" type="java.util.ArrayList"/>
<rollbackOnError>false</rollbackOnError>
<saveVendorDataType>None</saveVendorDataType>
<streetLamp id="1527">
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
<item id="1528" type="com.j2fe.processing.FileDefinition">
<file id="1529">cert_asia.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="1518"/>
</item>
<item id="1530" type="com.j2fe.processing.FileDefinition">
<file id="1531">cert_lamr.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="1518"/>
</item>
<item id="1532" type="com.j2fe.processing.FileDefinition">
<file id="1533">cert_namr.out.gz.enc.20*</file>
<group idref="24"/>
<messageType idref="1518"/>
</item>
<item id="1534" type="com.j2fe.processing.FileDefinition">
<file id="1535">cert_euro.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="1518"/>
</item>
<item id="1536" type="com.j2fe.processing.FileDefinition">
<file id="1537">cert_asia.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="1518"/>
</item>
<item id="1538" type="com.j2fe.processing.FileDefinition">
<file id="1539">cert_lamr.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="1518"/>
</item>
<item id="1540" type="com.j2fe.processing.FileDefinition">
<file id="1541">cert_namr.dif.gz.enc.20*</file>
<group idref="7"/>
<messageType idref="1518"/>
</item>
</fileDefinitions>
<grouping>false</grouping>
<messageTypes id="1542" type="java.util.HashSet">
<item idref="1518" type="com.j2fe.processing.MessageType"/>
</messageTypes>
<name id="1543">Bloomberg_DL_Global_Certificates</name>
</item>
</businessFeeds>
<id id="1544">BB</id>
<name id="1545">Bloomberg</name>
<requestTypes id="1546" type="java.util.HashSet">
<item id="1547" type="com.j2fe.connector.RequestType">
<dataSource idref="0"/>
<dataTypes id="1548" type="java.util.HashSet">
<item id="1549" type="java.lang.String">SECMASTER</item>
</dataTypes>
<externalIssueTypes id="1550" type="java.util.HashSet">
<item id="1551" type="java.lang.String">Agncy CMO Other</item>
<item id="1552" type="java.lang.String">ABS Home</item>
<item id="1553" type="java.lang.String">Agncy CMO INV</item>
<item id="1554" type="java.lang.String">CF</item>
<item id="1555" type="java.lang.String">CMBS</item>
<item id="1556" type="java.lang.String">Agncy CMO FLT</item>
<item id="1557" type="java.lang.String">Agncy CMO Z</item>
<item id="1558" type="java.lang.String">Prvt CMO Other</item>
<item id="1559" type="java.lang.String">Prvt CMO Z</item>
<item id="1560" type="java.lang.String">Prvt CMO PO</item>
<item id="1561" type="java.lang.String">MV</item>
<item id="1562" type="java.lang.String">Agncy CMO PO</item>
<item id="1563" type="java.lang.String">Agncy ABS Home</item>
<item id="1564" type="java.lang.String">ABS Auto</item>
<item id="1565" type="java.lang.String">ABS Card</item>
<item id="1566" type="java.lang.String">Agncy CMO IO</item>
<item id="1567" type="java.lang.String">Agncy ABS Other</item>
<item id="1568" type="java.lang.String">HB</item>
<item id="1569" type="java.lang.String">Prvt CMO INV</item>
<item id="1570" type="java.lang.String">SN</item>
<item id="1571" type="java.lang.String">Prvt CMO IO</item>
<item id="1572" type="java.lang.String">ABS Other</item>
<item id="1573" type="java.lang.String">Prvt CMO FLT</item>
</externalIssueTypes>
<filePattern id="1574">gs*.req</filePattern>
<marketSector id="1575" type="java.util.HashSet">
<item id="1576" type="java.lang.String">Mtge</item>
</marketSector>
<messageType idref="8"/>
<requestType id="1577">Mortgage Non Pool</requestType>
<templateURI id="1578">db://resource/xslt/request/bloomberg/BBMortgagePoolNonPool.xslt</templateURI>
</item>
<item id="1579" type="com.j2fe.connector.RequestType">
<dataSource idref="0"/>
<dataTypes id="1580" type="java.util.HashSet"/>
<externalIssueTypes id="1581" type="java.util.HashSet"/>
<filePattern id="1582">gs*.req</filePattern>
<marketSector id="1583" type="java.util.HashSet"/>
<messageType idref="1504"/>
<requestType id="1584">EquityShortSale</requestType>
<templateURI id="1585">db://resource/xslt/request/bloomberg/BBGlobalEquity.xslt</templateURI>
</item>
<item id="1586" type="com.j2fe.connector.RequestType">
<dataSource idref="0"/>
<dataTypes id="1587" type="java.util.HashSet">
<item id="1588" type="java.lang.String">PRICE</item>
</dataTypes>
<externalIssueTypes id="1589" type="java.util.HashSet">
<item id="1590" type="java.lang.String">PUBLIC</item>
<item id="1591" type="java.lang.String">PRIVATE</item>
</externalIssueTypes>
<filePattern id="1592">gs*.req</filePattern>
<marketSector id="1593" type="java.util.HashSet">
<item id="1594" type="java.lang.String">Pfd</item>
</marketSector>
<messageType idref="1143"/>
<requestType id="1595">Pfd Pricing</requestType>
<templateURI id="1596">db://resource/xslt/request/bloomberg/BBCorpGovtConvPrfd.xslt</templateURI>
</item>
<item id="1597" type="com.j2fe.connector.RequestType">
<dataSource idref="0"/>
<dataTypes id="1598" type="java.util.HashSet">
<item id="1599" type="java.lang.String">SECMASTER</item>
</dataTypes>
<externalIssueTypes id="1600" type="java.util.HashSet">
<item id="1601" type="java.lang.String">COMMERCIAL NOTE</item>
<item id="1602" type="java.lang.String">MURABAHA</item>
<item id="1603" type="java.lang.String">MEXICAN CP</item>
<item id="1604" type="java.lang.String">MEDIUM TERM ECD</item>
<item id="1605" type="java.lang.String">MX CERT BURSATIL</item>
<item id="1606" type="java.lang.String">CP-LIKE EXT NOTE</item>
<item id="1607" type="java.lang.String">DISCOUNT FIXBIS</item>
<item id="1608" type="java.lang.String">PROV T-BILL</item>
<item id="1609" type="java.lang.String">U.S. CP</item>
<item id="1610" type="java.lang.String">PORTUGUESE CP</item>
<item id="1611" type="java.lang.String">STERLING CD</item>
<item id="1612" type="java.lang.String">U.S. CD</item>
<item id="1613" type="java.lang.String">SWEDISH CP</item>
<item id="1614" type="java.lang.String">ISLAMIC CP</item>
<item id="1615" type="java.lang.String">NEGOTIABLE CD</item>
<item id="1616" type="java.lang.String">NORWEGIAN CD</item>
<item id="1617" type="java.lang.String">VAR RATE DEM OBL</item>
<item id="1618" type="java.lang.String">BILL OF EXCHANGE</item>
<item id="1619" type="java.lang.String">MUNI INT BEAR CP</item>
<item id="1620" type="java.lang.String">CASH</item>
<item id="1621" type="java.lang.String">ACCEPT BANCARIA</item>
<item id="1622" type="java.lang.String">MEXICAN PAGARE</item>
<item id="1623" type="java.lang.String">YANKEE CD</item>
<item id="1624" type="java.lang.String">LEBANESE CP</item>
<item id="1625" type="java.lang.String">CBLO</item>
<item id="1626" type="java.lang.String">MTN SUBORDINATED</item>
<item id="1627" type="java.lang.String">EURO CP</item>
<item id="1628" type="java.lang.String">KOREAN CD</item>
<item id="1629" type="java.lang.String">YEN CP</item>
<item id="1630" type="java.lang.String">OVER/NIGHT</item>
<item id="1631" type="java.lang.String">JUMBO CD</item>
<item id="1632" type="java.lang.String">COLLAT CALL NOTE</item>
<item id="1633" type="java.lang.String">CAD INT BEAR CP</item>
<item id="1634" type="java.lang.String">DISCOUNT NOTES</item>
<item id="1635" type="java.lang.String">S/A MD TERM YCD</item>
<item id="1636" type="java.lang.String">ISLAMIC BA</item>
<item id="1637" type="java.lang.String">THAILAND CP</item>
<item id="1638" type="java.lang.String">REPO</item>
<item id="1639" type="java.lang.String">MASTER NOTES</item>
<item id="1640" type="java.lang.String">STERLING CP</item>
<item id="1641" type="java.lang.String">FRENCH CP</item>
<item id="1642" type="java.lang.String">FINNISH CP</item>
<item id="1643" type="java.lang.String">TERM DEPOSITS</item>
<item id="1644" type="java.lang.String">DUTCH CP</item>
<item id="1645" type="java.lang.String">FRENCH CD</item>
<item id="1646" type="java.lang.String">FINNISH CD</item>
<item id="1647" type="java.lang.String">FX DISCOUNT NOTE</item>
<item id="1648" type="java.lang.String">LIQUIDITY NOTE</item>
<item id="1649" type="java.lang.String">TAIWAN TIME DEPO</item>
<item id="1650" type="java.lang.String">INDIAN CP</item>
<item id="1651" type="java.lang.String">BANK NOTE</item>
<item id="1652" type="java.lang.String">BANKERS ACCEPT</item>
<item id="1653" type="java.lang.String">MEDIUM TERM CD</item>
<item id="1654" type="java.lang.String">EURO TIME DEPST</item>
<item id="1655" type="java.lang.String">DEPOSIT NOTE</item>
<item id="1656" type="java.lang.String">INDIAN CD</item>
<item id="1657" type="java.lang.String">CALL LOANS</item>
<item id="1658" type="java.lang.String">S.TERM LOAN NOTE</item>
<item id="1659" type="java.lang.String">HONG KONG CD</item>
<item id="1660" type="java.lang.String">FED FUNDS</item>
<item id="1661" type="java.lang.String">TAIWAN CP GUAR</item>
<item id="1662" type="java.lang.String">RETAIL CD</item>
<item id="1663" type="java.lang.String">SHORT TERM BN</item>
<item id="1664" type="java.lang.String">EURO MTN</item>
<item id="1665" type="java.lang.String">SPECIAL LMMK PGM</item>
<item id="1666" type="java.lang.String">BANK ACCEPT BILL</item>
<item id="1667" type="java.lang.String">TAIWAN CP</item>
<item id="1668" type="java.lang.String">YEN CD</item>
<item id="1669" type="java.lang.String">MARGIN TERM DEP</item>
<item id="1670" type="java.lang.String">SINGAPORE CP</item>
<item id="1671" type="java.lang.String">EURO CD</item>
<item id="1672" type="java.lang.String">KOREAN CP</item>
<item id="1673" type="java.lang.String">PROMISSORY NOTE</item>
<item id="1674" type="java.lang.String">BELGIUM CP</item>
<item id="1675" type="java.lang.String">GERMAN CP</item>
<item id="1676" type="java.lang.String">INDONESIAN CP</item>
<item id="1677" type="java.lang.String">EURO STRUCTRD LN</item>
<item id="1678" type="java.lang.String">VENEZUELAN CP</item>
<item id="1679" type="java.lang.String">CANADIAN CP</item>
<item id="1680" type="java.lang.String">PLAZOS FIJOS</item>
<item id="1681" type="java.lang.String">EXTEND COMM NOTE</item>
<item id="1682" type="java.lang.String">NEW ZEALAND CP</item>
<item id="1683" type="java.lang.String">U.S. INT BEAR CP</item>
<item id="1684" type="java.lang.String">CALLABLE CP</item>
<item id="1685" type="java.lang.String">MED TERM NOTE</item>
<item id="1686" type="java.lang.String">MALAYSIAN CP</item>
<item id="1687" type="java.lang.String">RUSSIAN PN</item>
<item id="1688" type="java.lang.String">AUSTRALIAN CP</item>
<item id="1689" type="java.lang.String">PHILIPPINE CP</item>
<item id="1690" type="java.lang.String">CANADIAN CD</item>
<item id="1691" type="java.lang.String">BEARER DEP NOTE</item>
<item id="1692" type="java.lang.String">TAIWAN NEGO CD</item>
<item id="1693" type="java.lang.String">AUSTRALIAN CD</item>
<item id="1694" type="java.lang.String">BRAZILIAN CDI</item>
<item id="1695" type="java.lang.String">EXTEND. NOTE MTN</item>
<item id="1696" type="java.lang.String">MEDIUM TERM YCD</item>
<item id="1697" type="java.lang.String">FLOATING CP</item>
<item id="1698" type="java.lang.String">SHORT TERM DN</item>
<item id="1699" type="java.lang.String">INT BEAR FIXBIS</item>
<item id="1700" type="java.lang.String">DOMESTC TIME DEP</item>
<item id="1701" type="java.lang.String">MUNI CP</item>
<item id="1702" type="java.lang.String">NEG INST DEPOSIT</item>
</externalIssueTypes>
<filePattern id="1703">gs*.req</filePattern>
<marketSector id="1704" type="java.util.HashSet">
<item id="1705" type="java.lang.String">M-Mkt</item>
</marketSector>
<messageType idref="133"/>
<requestType id="1706">BBGlobalMoneyMkt</requestType>
<templateURI id="1707">db://resource/xslt/request/bloomberg/BBGlobalMoneyMkt.xslt</templateURI>
</item>
<item id="1708" type="com.j2fe.connector.RequestType">
<dataSource idref="0"/>
<dataTypes id="1709" type="java.util.HashSet"/>
<description id="1710">BB Corp Govt Conv Early Pricing</description>
<externalIssueTypes id="1711" type="java.util.HashSet"/>
<filePattern id="1712">gs*.req</filePattern>
<marketSector id="1713" type="java.util.HashSet"/>
<messageType idref="924"/>
<requestType id="1714">CorpGvtConv EPX</requestType>
<templateURI id="1715">fti://resource/xslt/Bloomberg/BBCorpGovtConvPrfd.xslt</templateURI>
</item>
<item id="1716" type="com.j2fe.connector.RequestType">
<dataSource idref="0"/>
<dataTypes id="1717" type="java.util.HashSet"/>
<externalIssueTypes id="1718" type="java.util.HashSet"/>
<filePattern id="1719">gs*.req</filePattern>
<marketSector id="1720" type="java.util.HashSet"/>
<messageType idref="114"/>
<requestType id="1721">BBSymbology</requestType>
<templateURI id="1722">db://resource/xslt/request/bloomberg/BBSymbology.xslt</templateURI>
</item>
<item id="1723" type="com.j2fe.connector.RequestType">
<dataSource idref="0"/>
<dataTypes id="1724" type="java.util.HashSet">
<item id="1725" type="java.lang.String">SECMASTER</item>
</dataTypes>
<externalIssueTypes id="1726" type="java.util.HashSet">
<item id="1727" type="java.lang.String">ASSET BACK LOC</item>
<item id="1728" type="java.lang.String">Rec Fix/Pay Flt</item>
<item id="1729" type="java.lang.String">CMS Cap Straddle</item>
<item id="1730" type="java.lang.String">Fixed to Float</item>
<item id="1731" type="java.lang.String">STANDBY TERM</item>
<item id="1732" type="java.lang.String">OIS Swap</item>
<item id="1733" type="java.lang.String">BRIDGE ISLAMIC</item>
<item id="1734" type="java.lang.String">Straddle</item>
<item id="1735" type="java.lang.String">CMS Spread Floor</item>
<item id="1736" type="java.lang.String">ASSET BACK TERM FILO</item>
<item id="1737" type="java.lang.String">European Cancellable Swap</item>
<item id="1738" type="java.lang.String">Asian Swap</item>
<item id="1739" type="java.lang.String">CDS Index</item>
<item id="1740" type="java.lang.String">Floater Range Accrual</item>
<item id="1741" type="java.lang.String">REVOLVER/TERM</item>
<item id="1742" type="java.lang.String">Equity Linked Note Callable Kn</item>
<item id="1743" type="java.lang.String">MEZZANINE</item>
<item id="1744" type="java.lang.String">Inflation Bond Swap</item>
<item id="1745" type="java.lang.String">Fixed-Fixed Swap</item>
<item id="1746" type="java.lang.String">Float to Fixed</item>
<item id="1747" type="java.lang.String">Non Vanilla Swap</item>
<item id="1748" type="java.lang.String">PRDC</item>
<item id="1749" type="java.lang.String">Inflation Cap</item>
<item id="1750" type="java.lang.String">ASSET BACK</item>
<item id="1751" type="java.lang.String">CMS Collar</item>
<item id="1752" type="java.lang.String">Cap Straddle</item>
<item id="1753" type="java.lang.String">IL/Fix Swap</item>
<item id="1754" type="java.lang.String">BRIDGE REV GUARANTEE FAC</item>
<item id="1755" type="java.lang.String">Float</item>
<item id="1756" type="java.lang.String">SAMURAI</item>
<item id="1757" type="java.lang.String">Cross-currency Swaption</item>
<item id="1758" type="java.lang.String">DELAY-DRAW VAT-TRNCH</item>
<item id="1759" type="java.lang.String">Fixed-Float Swaption</item>
<item id="1760" type="java.lang.String">CANCELLABLE</item>
<item id="1761" type="java.lang.String">ISLAMIC</item>
<item id="1762" type="java.lang.String">DELAY-DRAW TERM</item>
<item id="1763" type="java.lang.String">Asset-Backed CDS</item>
<item id="1764" type="java.lang.String">ASSET BACK REV OVERDRAFT</item>
<item id="1765" type="java.lang.String">TERM VAT-TRNCH</item>
<item id="1766" type="java.lang.String">Swap in arrears</item>
<item id="1767" type="java.lang.String">Target Redemption No.</item>
<item id="1768" type="java.lang.String">Fixed Float Swap</item>
<item id="1769" type="java.lang.String">Arrears Swap</item>
<item id="1770" type="java.lang.String">TERM GUARANTEE FAC</item>
<item id="1771" type="java.lang.String">CDS Recovery Rate Lock</item>
<item id="1772" type="java.lang.String">Floater</item>
<item id="1773" type="java.lang.String">ASSET BACK COV-LITE DIP PIK</item>
<item id="1774" type="java.lang.String">PIK REV</item>
<item id="1775" type="java.lang.String">Zero Coupon Swap</item>
<item id="1776" type="java.lang.String">Receive Fixed</item>
<item id="1777" type="java.lang.String">BRIDGE PIK</item>
<item id="1778" type="java.lang.String">TERM TAX-SPARED</item>
<item id="1779" type="java.lang.String">ASSET BACK BRIDGE TERM</item>
<item id="1780" type="java.lang.String">SPARE - N/A</item>
<item id="1781" type="java.lang.String">DIP</item>
<item id="1782" type="java.lang.String">BRIDGE DIP TERM</item>
<item id="1783" type="java.lang.String">GUARANTEE FACILITY</item>
<item id="1784" type="java.lang.String">COV-LITE PIK TERM</item>
<item id="1785" type="java.lang.String">DELAY-DRAW STANDBY TERM</item>
<item id="1786" type="java.lang.String">NDIRS Swap</item>
<item id="1787" type="java.lang.String">VAT-TRNCH</item>
<item id="1788" type="java.lang.String">DIM SUM</item>
<item id="1789" type="java.lang.String">Power Reversal Dual Note</item>
<item id="1790" type="java.lang.String">SYNTHETIC LOC</item>
<item id="1791" type="java.lang.String">ISLAMIC TERM</item>
<item id="1792" type="java.lang.String">SYNTH TERM</item>
<item id="1793" type="java.lang.String">Non Vanilla Swaption</item>
<item id="1794" type="java.lang.String">CMS Cap</item>
<item id="1795" type="java.lang.String">IL/Fix Swap ZC</item>
<item id="1796" type="java.lang.String">AUSTRALIAN</item>
<item id="1797" type="java.lang.String">Inflation-Float YoY Swap</item>
<item id="1798" type="java.lang.String">Pay Fix/Rec Flt</item>
<item id="1799" type="java.lang.String">REV</item>
<item id="1800" type="java.lang.String">Fed Funds Swap</item>
<item id="1801" type="java.lang.String">CMS Straddle</item>
<item id="1802" type="java.lang.String">STANDBY REV</item>
<item id="1803" type="java.lang.String">DELAY-DRAW TERM VAT-TRNCH</item>
<item id="1804" type="java.lang.String">2ND LIEN</item>
<item id="1805" type="java.lang.String">REVOLVER</item>
<item id="1806" type="java.lang.String">US GOVERNMENT</item>
<item id="1807" type="java.lang.String">Pay Fixed</item>
<item id="1808" type="java.lang.String">ASSET-BASED COV-LITE REV</item>
<item id="1809" type="java.lang.String">Knockin/Out Swaption</item>
<item id="1810" type="java.lang.String">American Swaption</item>
<item id="1811" type="java.lang.String">CMS Spread Racl Swap</item>
<item id="1812" type="java.lang.String">ASSET BACK DIP TERM</item>
<item id="1813" type="java.lang.String">Asian Floor</item>
<item id="1814" type="java.lang.String">IL Floor</item>
<item id="1815" type="java.lang.String">Cross Currency Cancellable Swa</item>
<item id="1816" type="java.lang.String">Float-Float Swaption</item>
<item id="1817" type="java.lang.String">LTR OF CREDIT</item>
<item id="1818" type="java.lang.String">Collar</item>
<item id="1819" type="java.lang.String">ASSET BACK REV</item>
<item id="1820" type="java.lang.String">EURO NON-DOLLAR</item>
<item id="1821" type="java.lang.String">REV OVERDRAFT</item>
<item id="1822" type="java.lang.String">TBill Basis</item>
<item id="1823" type="java.lang.String">DIP SYNTH LOC</item>
<item id="1824" type="java.lang.String">CANADIAN</item>
<item id="1825" type="java.lang.String">European Swaption</item>
<item id="1826" type="java.lang.String">Bermudan Swaption</item>
<item id="1827" type="java.lang.String">Cancellable Swap</item>
<item id="1828" type="java.lang.String">COMBO</item>
<item id="1829" type="java.lang.String">ABL REVOLVER</item>
<item id="1830" type="java.lang.String">CMS Spread Range Coupon</item>
<item id="1831" type="java.lang.String">Knockin/out</item>
<item id="1832" type="java.lang.String">CMS Floor Spread</item>
<item id="1833" type="java.lang.String">BRIDGE PIK TERM</item>
<item id="1834" type="java.lang.String">Dual Digital</item>
<item id="1835" type="java.lang.String">BRIDGE</item>
<item id="1836" type="java.lang.String">Inflation</item>
<item id="1837" type="java.lang.String">Non Vanilla Cancellable Swap</item>
<item id="1838" type="java.lang.String">DELAY-DRAW</item>
<item id="1839" type="java.lang.String">DELAY-DRAW ISLAMIC TERM</item>
<item id="1840" type="java.lang.String">Ratchet Floater</item>
<item id="1841" type="java.lang.String">Real Rate IL Swap</item>
<item id="1842" type="java.lang.String">Collared Floater</item>
<item id="1843" type="java.lang.String">Fixed Fixed Swap</item>
<item id="1844" type="java.lang.String">Equity Linked Note Down-In Kno</item>
<item id="1845" type="java.lang.String">GLOBAL</item>
<item id="1846" type="java.lang.String">ASSET-BASED COV-LITE DIP PIK</item>
<item id="1847" type="java.lang.String">Commercial Paper Swap</item>
<item id="1848" type="java.lang.String">SYNTH LOC</item>
<item id="1849" type="java.lang.String">Floater CMS Spread RACL</item>
<item id="1850" type="java.lang.String">US DOMESTIC</item>
<item id="1851" type="java.lang.String">Zero</item>
<item id="1852" type="java.lang.String">ASSET-BASED DELAY-DRAW TERM</item>
<item id="1853" type="java.lang.String">Inflation-Fixed YoY Swap</item>
<item id="1854" type="java.lang.String">DIP TERM</item>
<item id="1855" type="java.lang.String">PAY Float</item>
<item id="1856" type="java.lang.String">TERM REV</item>
<item id="1857" type="java.lang.String">REV INCREMENT</item>
<item id="1858" type="java.lang.String">PIK REVOLVER</item>
<item id="1859" type="java.lang.String">Ratchet Range Accrual</item>
<item id="1860" type="java.lang.String">IL Bond/Flt Swap</item>
<item id="1861" type="java.lang.String">ISLAMIC STANDBY</item>
<item id="1862" type="java.lang.String">CMS Swap</item>
<item id="1863" type="java.lang.String">Cstm fix pmts</item>
<item id="1864" type="java.lang.String">CMS Spread</item>
<item id="1865" type="java.lang.String">EURO-DOLLAR</item>
<item id="1866" type="java.lang.String">SnowBear</item>
<item id="1867" type="java.lang.String">American Cancellable Swap</item>
<item id="1868" type="java.lang.String">CMS Spread Capped Floater</item>
<item id="1869" type="java.lang.String">Fixed-Fixed Swaption</item>
<item id="1870" type="java.lang.String">Multi Leg</item>
<item id="1871" type="java.lang.String">CMS Cap Spread</item>
<item id="1872" type="java.lang.String">PIK TERM LOAN</item>
<item id="1873" type="java.lang.String">USD Basis Swap</item>
<item id="1874" type="java.lang.String">ASSET-BASED BRIDGE TERM</item>
<item id="1875" type="java.lang.String">ASSET BACK BRIDGE REV</item>
<item id="1876" type="java.lang.String">IL Bond/Fix Swap</item>
<item id="1877" type="java.lang.String">Target Redemption Notes</item>
<item id="1878" type="java.lang.String">CMS Flt/Flt</item>
<item id="1879" type="java.lang.String">IL/Fix Swap LPI</item>
<item id="1880" type="java.lang.String">DELAY-DRAW TERM MULTI-DRAW</item>
<item id="1881" type="java.lang.String">DIM SUM DELAY-DRAW TERM</item>
<item id="1882" type="java.lang.String">ASSET BACK REV LIFO</item>
<item id="1883" type="java.lang.String">ISLAMIC REV</item>
<item id="1884" type="java.lang.String">LOC</item>
<item id="1885" type="java.lang.String">RESTRUCTURD DEBT</item>
<item id="1886" type="java.lang.String">Basket Default Swap</item>
<item id="1887" type="java.lang.String">CMS</item>
<item id="1888" type="java.lang.String">Float-Float Cancellable Swap</item>
<item id="1889" type="java.lang.String">DOMESTIC</item>
<item id="1890" type="java.lang.String">PIK SYNTH LOC</item>
<item id="1891" type="java.lang.String">CMS Spread Collared Floater</item>
<item id="1892" type="java.lang.String">Double Range Accrual</item>
<item id="1893" type="java.lang.String">WARRANT</item>
<item id="1894" type="java.lang.String">DELAY-DRAW ISLAMIC</item>
<item id="1895" type="java.lang.String">Amort Fix Flt Swap</item>
<item id="1896" type="java.lang.String">CMS Spread Collar</item>
<item id="1897" type="java.lang.String">DIM SUM TERM</item>
<item id="1898" type="java.lang.String">SWING LINE LOAN</item>
<item id="1899" type="java.lang.String">Synthetic CDO</item>
<item id="1900" type="java.lang.String">Snowblade</item>
<item id="1901" type="java.lang.String">DIP DELAY-DRAW REV</item>
<item id="1902" type="java.lang.String">STANDBY</item>
<item id="1903" type="java.lang.String">Capped Floater</item>
<item id="1904" type="java.lang.String">DEBT IN POSSESS</item>
<item id="1905" type="java.lang.String">CDS Option</item>
<item id="1906" type="java.lang.String">DELAY-DRAW REV</item>
<item id="1907" type="java.lang.String">ASSET BACK COV-LITE REV</item>
<item id="1908" type="java.lang.String">Asset Swap</item>
<item id="1909" type="java.lang.String">DIM SUM REV</item>
<item id="1910" type="java.lang.String">US Fed Fund</item>
<item id="1911" type="java.lang.String">European Loan CDS</item>
<item id="1912" type="java.lang.String">Knockin/Out Swap</item>
<item id="1913" type="java.lang.String">Prime Basis</item>
<item id="1914" type="java.lang.String">SnowBall</item>
<item id="1915" type="java.lang.String">ASSET BACK DIP REV</item>
<item id="1916" type="java.lang.String">Receive Float</item>
<item id="1917" type="java.lang.String">SYNTHETIC REVOLVER</item>
<item id="1918" type="java.lang.String">TARN</item>
<item id="1919" type="java.lang.String">DELAY-DRAW PIK TERM</item>
<item id="1920" type="java.lang.String">BRIDGE REV</item>
<item id="1921" type="java.lang.String">ASSET-BASED DIP</item>
<item id="1922" type="java.lang.String">SWINGLINE</item>
<item id="1923" type="java.lang.String">Loan CDS</item>
<item id="1924" type="java.lang.String">Fixed-Fixed Cancellable Swap</item>
<item id="1925" type="java.lang.String">IL/Flt Swap ZC</item>
<item id="1926" type="java.lang.String">US NON-DOLLAR</item>
<item id="1927" type="java.lang.String">ASSET-BASED REV LIFO</item>
<item id="1928" type="java.lang.String">Bermudan Cancellable Swap</item>
<item id="1929" type="java.lang.String">Thunderball</item>
<item id="1930" type="java.lang.String">REV GUARANTEE FAC</item>
<item id="1931" type="java.lang.String">OVERDRAFT FACILITY</item>
<item id="1932" type="java.lang.String">CMS Spread Cap</item>
<item id="1933" type="java.lang.String">Inflation Floor</item>
<item id="1934" type="java.lang.String">COV-LITE REV</item>
<item id="1935" type="java.lang.String">BRIDGE ISLAMIC TERM</item>
<item id="1936" type="java.lang.String">TAX-SPARED</item>
<item id="1937" type="java.lang.String">COV-LITE TERM</item>
<item id="1938" type="java.lang.String">INCREMENT</item>
<item id="1939" type="java.lang.String">Equity Total Return Swap</item>
<item id="1940" type="java.lang.String">PIK</item>
<item id="1941" type="java.lang.String">PRIV PLACEMENT</item>
<item id="1942" type="java.lang.String">IL/Flt Swap LPI</item>
<item id="1943" type="java.lang.String">US CP Basis</item>
<item id="1944" type="java.lang.String">DIP REV</item>
<item id="1945" type="java.lang.String">FlipFlop</item>
<item id="1946" type="java.lang.String">Amortizing CDS</item>
<item id="1947" type="java.lang.String">ASSET BACK BRIDGE</item>
<item id="1948" type="java.lang.String">SYNTH REV</item>
<item id="1949" type="java.lang.String">TERM MULTI-DRAW</item>
<item id="1950" type="java.lang.String">ASSET BACK DELAY-DRAW TERM</item>
<item id="1951" type="java.lang.String">ASSET-BASED</item>
<item id="1952" type="java.lang.String">OVERDRAFT</item>
<item id="1953" type="java.lang.String">BULLDOG</item>
<item id="1954" type="java.lang.String">DIM SUM BRIDGE TERM</item>
<item id="1955" type="java.lang.String">Flt/Flt Swap</item>
<item id="1956" type="java.lang.String">CAPSPREAD</item>
<item id="1957" type="java.lang.String">Spread</item>
<item id="1958" type="java.lang.String">LOC GUARANTEE FAC</item>
<item id="1959" type="java.lang.String">IL/Flt Swap</item>
<item id="1960" type="java.lang.String">DIP TERM INCREMENT</item>
<item id="1961" type="java.lang.String">Nikkei Linked Note Down-In Kno</item>
<item id="1962" type="java.lang.String">XCCY Float Float Swap</item>
<item id="1963" type="java.lang.String">T-Bill Swap</item>
<item id="1964" type="java.lang.String">DIP PIK TERM MULTI-DRAW</item>
<item id="1965" type="java.lang.String">ASSET BACK TERM</item>
<item id="1966" type="java.lang.String">CMS Sprd Range Accrl</item>
<item id="1967" type="java.lang.String">DIP TERM MULTI-DRAW</item>
<item id="1968" type="java.lang.String">SYNTH</item>
<item id="1969" type="java.lang.String">STANDBY DELAY-DRAW TERM</item>
<item id="1970" type="java.lang.String">Swaption</item>
<item id="1971" type="java.lang.String">EURO MTN</item>
<item id="1972" type="java.lang.String">DOMESTIC MTN</item>
<item id="1973" type="java.lang.String">TERM INCREMENT</item>
<item id="1974" type="java.lang.String">XCCY Fixed Float Swap</item>
<item id="1975" type="java.lang.String">PIK TERM</item>
<item id="1976" type="java.lang.String">Cap Spread</item>
<item id="1977" type="java.lang.String">CMS Spread Floored Floater</item>
<item id="1978" type="java.lang.String">YANKEE</item>
<item id="1979" type="java.lang.String">Cap</item>
<item id="1980" type="java.lang.String">Swaption Strategy</item>
<item id="1981" type="java.lang.String">UK GILT STOCK</item>
<item id="1982" type="java.lang.String">BRIDGE GUARANTEE FAC</item>
<item id="1983" type="java.lang.String">DIP PIK TERM</item>
<item id="1984" type="java.lang.String">ISLAMIC LOC</item>
<item id="1985" type="java.lang.String">FLOORSPREAD</item>
<item id="1986" type="java.lang.String">CMS Floor</item>
<item id="1987" type="java.lang.String">Generic</item>
<item id="1988" type="java.lang.String">NDS Swap</item>
<item id="1989" type="java.lang.String">US 6M Libor</item>
<item id="1990" type="java.lang.String">Prime Swap</item>
<item id="1991" type="java.lang.String">Range Accrual</item>
<item id="1992" type="java.lang.String">US 1M Libor</item>
<item id="1993" type="java.lang.String">ASSET-BASED LOC GUARANTEE F</item>
<item id="1994" type="java.lang.String">Basket Total Return</item>
<item id="1995" type="java.lang.String">COV-LITE LOC</item>
<item id="1996" type="java.lang.String">Fixed-Float Cancellable Swap</item>
<item id="1997" type="java.lang.String">REV MULTI-DRAW</item>
<item id="1998" type="java.lang.String">Amort. Swap</item>
<item id="1999" type="java.lang.String">Asian Cap</item>
<item id="2000" type="java.lang.String">Fix/Fix Swap</item>
<item id="2001" type="java.lang.String">DIP LOC</item>
<item id="2002" type="java.lang.String">Fixed-Float Swap</item>
<item id="2003" type="java.lang.String">Floor</item>
<item id="2004" type="java.lang.String">TERM OVERDRAFT</item>
<item id="2005" type="java.lang.String">DIP DELAY-DRAW TERM</item>
<item id="2006" type="java.lang.String">European Forward Swaption</item>
<item id="2007" type="java.lang.String">Nikkei Linked Note Callable Kn</item>
<item id="2008" type="java.lang.String">Quanto Swap</item>
<item id="2009" type="java.lang.String">Floor Spread</item>
<item id="2010" type="java.lang.String">IL Cap</item>
<item id="2011" type="java.lang.String">ASSET-BASED REV FILO</item>
<item id="2012" type="java.lang.String">ASSET-BASED TERM FILO</item>
<item id="2013" type="java.lang.String">EURO-ZONE</item>
<item id="2014" type="java.lang.String">Total Return</item>
<item id="2015" type="java.lang.String">BRIDGE TERM</item>
<item id="2016" type="java.lang.String">Range Accural Swap</item>
<item id="2017" type="java.lang.String">CDS Index Swap</item>
<item id="2018" type="java.lang.String">American Loan CDS</item>
<item id="2019" type="java.lang.String">REV VAT-TRNCH</item>
<item id="2020" type="java.lang.String">STANDBY LOC</item>
<item id="2021" type="java.lang.String">Floored Floater</item>
<item id="2022" type="java.lang.String">SHOGUN</item>
<item id="2023" type="java.lang.String">XCCY Fixed Fixed Swap</item>
</externalIssueTypes>
<filePattern id="2024">gs*.req</filePattern>
<marketSector id="2025" type="java.util.HashSet">
<item id="2026" type="java.lang.String">Corp</item>
<item id="2027" type="java.lang.String">Govt</item>
</marketSector>
<messageType idref="288"/>
<requestType id="2028">BBCorpGovtConvPrfd</requestType>
<templateURI id="2029">db://resource/xslt/request/bloomberg/BBCorpGovtConvPrfd.xslt</templateURI>
</item>
<item id="2030" type="com.j2fe.connector.RequestType">
<dataSource idref="0"/>
<dataTypes id="2031" type="java.util.HashSet">
<item id="2032" type="java.lang.String">ENTITY</item>
</dataTypes>
<externalIssueTypes id="2033" type="java.util.HashSet"/>
<filePattern id="2034">gs*.req</filePattern>
<marketSector id="2035" type="java.util.HashSet"/>
<messageType idref="1349"/>
<requestType id="2036">BBCreditRisk</requestType>
<templateURI id="2037">db://resource/xslt/request/bloomberg/BBCreditRiskV2.xslt</templateURI>
</item>
<item id="2038" type="com.j2fe.connector.RequestType">
<dataSource idref="0"/>
<dataTypes id="2039" type="java.util.HashSet">
<item id="2040" type="java.lang.String">SECMASTER</item>
</dataTypes>
<externalIssueTypes id="2041" type="java.util.HashSet">
<item id="2042" type="java.lang.String">Canadian</item>
<item id="2043" type="java.lang.String">MBS balloon</item>
<item id="2044" type="java.lang.String">MBS 30yr</item>
<item id="2045" type="java.lang.String">MBS ARM</item>
<item id="2046" type="java.lang.String">SBA Pool</item>
<item id="2047" type="java.lang.String">MBS 10yr</item>
<item id="2048" type="java.lang.String">MBS 20yr</item>
<item id="2049" type="java.lang.String">EQ</item>
<item id="2050" type="java.lang.String">MBS Other</item>
<item id="2051" type="java.lang.String">MBS 15yr</item>
<item id="2052" type="java.lang.String">HF</item>
</externalIssueTypes>
<filePattern id="2053">gs*.req</filePattern>
<marketSector id="2054" type="java.util.HashSet">
<item id="2055" type="java.lang.String">Mtge</item>
</marketSector>
<messageType idref="513"/>
<requestType id="2056">MortgagePools</requestType>
<templateURI id="2057">db://resource/xslt/request/bloomberg/BBMortgagePoolNonPool.xslt</templateURI>
</item>
<item id="2058" type="com.j2fe.connector.RequestType">
<dataSource idref="0"/>
<dataTypes id="2059" type="java.util.HashSet">
<item id="2060" type="java.lang.String">PRICE</item>
</dataTypes>
<externalIssueTypes id="2061" type="java.util.HashSet">
<item id="2062" type="java.lang.String">OTC Option</item>
<item id="2063" type="java.lang.String">Equity OTC Option</item>
</externalIssueTypes>
<filePattern id="2064">gs*.req</filePattern>
<marketSector id="2065" type="java.util.HashSet">
<item id="2066" type="java.lang.String">Equity</item>
</marketSector>
<messageType idref="1014"/>
<requestType id="2067">EqtOptn Pricing</requestType>
<templateURI id="2068">db://resource/xslt/request/bloomberg/BBGlobalEquityOptions.xslt</templateURI>
</item>
<item id="2069" type="com.j2fe.connector.RequestType">
<dataSource idref="0"/>
<dataTypes id="2070" type="java.util.HashSet">
<item id="2071" type="java.lang.String">PRICE</item>
</dataTypes>
<externalIssueTypes id="2072" type="java.util.HashSet">
<item id="2073" type="java.lang.String">ASSET BACK LOC</item>
<item id="2074" type="java.lang.String">STANDBY TERM</item>
<item id="2075" type="java.lang.String">BRIDGE ISLAMIC</item>
<item id="2076" type="java.lang.String">PIK TERM LOAN</item>
<item id="2077" type="java.lang.String">ASSET BACK TERM FILO</item>
<item id="2078" type="java.lang.String">ASSET BACK BRIDGE REV</item>
<item id="2079" type="java.lang.String">DELAY-DRAW TERM MULTI-DRAW</item>
<item id="2080" type="java.lang.String">ASSET BACK REV LIFO</item>
<item id="2081" type="java.lang.String">ISLAMIC REV</item>
<item id="2082" type="java.lang.String">REVOLVER/TERM</item>
<item id="2083" type="java.lang.String">MEZZANINE</item>
<item id="2084" type="java.lang.String">LOC</item>
<item id="2085" type="java.lang.String">RESTRUCTURD DEBT</item>
<item id="2086" type="java.lang.String">ASSET BACK</item>
<item id="2087" type="java.lang.String">DOMESTIC</item>
<item id="2088" type="java.lang.String">WARRANT</item>
<item id="2089" type="java.lang.String">BRIDGE REV GUARANTEE FAC</item>
<item id="2090" type="java.lang.String">SAMURAI</item>
<item id="2091" type="java.lang.String">DELAY-DRAW VAT-TRNCH</item>
<item id="2092" type="java.lang.String">SWING LINE LOAN</item>
<item id="2093" type="java.lang.String">STANDBY</item>
<item id="2094" type="java.lang.String">DEBT IN POSSESS</item>
<item id="2095" type="java.lang.String">DELAY-DRAW REV</item>
<item id="2096" type="java.lang.String">ISLAMIC</item>
<item id="2097" type="java.lang.String">ASSET BACK COV-LITE REV</item>
<item id="2098" type="java.lang.String">DELAY-DRAW TERM</item>
<item id="2099" type="java.lang.String">ASSET BACK REV OVERDRAFT</item>
<item id="2100" type="java.lang.String">TERM VAT-TRNCH</item>
<item id="2101" type="java.lang.String">ASSET BACK DIP REV</item>
<item id="2102" type="java.lang.String">TERM</item>
<item id="2103" type="java.lang.String">SYNTHETIC REVOLVER</item>
<item id="2104" type="java.lang.String">DELAY-DRAW PIK TERM</item>
<item id="2105" type="java.lang.String">BRIDGE REV</item>
<item id="2106" type="java.lang.String">SWINGLINE</item>
<item id="2107" type="java.lang.String">US NON-DOLLAR</item>
<item id="2108" type="java.lang.String">TERM GUARANTEE FAC</item>
<item id="2109" type="java.lang.String">ASSET BACK COV-LITE DIP PIK</item>
<item id="2110" type="java.lang.String">PIK REV</item>
<item id="2111" type="java.lang.String">BRIDGE PIK</item>
<item id="2112" type="java.lang.String">REV GUARANTEE FAC</item>
<item id="2113" type="java.lang.String">TERM TAX-SPARED</item>
<item id="2114" type="java.lang.String">ASSET BACK BRIDGE TERM</item>
<item id="2115" type="java.lang.String">SPARE - N/A</item>
<item id="2116" type="java.lang.String">OVERDRAFT FACILITY</item>
<item id="2117" type="java.lang.String">DIP</item>
<item id="2118" type="java.lang.String">BRIDGE DIP TERM</item>
<item id="2119" type="java.lang.String">COV-LITE REV</item>
<item id="2120" type="java.lang.String">GUARANTEE FACILITY</item>
<item id="2121" type="java.lang.String">COV-LITE PIK TERM</item>
<item id="2122" type="java.lang.String">TAX-SPARED</item>
<item id="2123" type="java.lang.String">COV-LITE TERM</item>
<item id="2124" type="java.lang.String">INCREMENT</item>
<item id="2125" type="java.lang.String">PIK</item>
<item id="2126" type="java.lang.String">PRIV PLACEMENT</item>
<item id="2127" type="java.lang.String">VAT-TRNCH</item>
<item id="2128" type="java.lang.String">SYNTHETIC LOC</item>
<item id="2129" type="java.lang.String">ISLAMIC TERM</item>
<item id="2130" type="java.lang.String">SYNTH TERM</item>
<item id="2131" type="java.lang.String">AUSTRALIAN</item>
<item id="2132" type="java.lang.String">DIP REV</item>
<item id="2133" type="java.lang.String">ASSET BACK BRIDGE</item>
<item id="2134" type="java.lang.String">REV</item>
<item id="2135" type="java.lang.String">SYNTH REV</item>
<item id="2136" type="java.lang.String">STANDBY REV</item>
<item id="2137" type="java.lang.String">TERM MULTI-DRAW</item>
<item id="2138" type="java.lang.String">ASSET BACK DELAY-DRAW TERM</item>
<item id="2139" type="java.lang.String">2ND LIEN</item>
<item id="2140" type="java.lang.String">OVERDRAFT</item>
<item id="2141" type="java.lang.String">REVOLVER</item>
<item id="2142" type="java.lang.String">US GOVERNMENT</item>
<item id="2143" type="java.lang.String">BULLDOG</item>
<item id="2144" type="java.lang.String">LOC GUARANTEE FAC</item>
<item id="2145" type="java.lang.String">ASSET BACK DIP TERM</item>
<item id="2146" type="java.lang.String">DIP TERM INCREMENT</item>
<item id="2147" type="java.lang.String">LTR OF CREDIT</item>
<item id="2148" type="java.lang.String">ASSET BACK TERM</item>
<item id="2149" type="java.lang.String">DIP TERM MULTI-DRAW</item>
<item id="2150" type="java.lang.String">SYNTH</item>
<item id="2151" type="java.lang.String">ASSET BACK REV</item>
<item id="2152" type="java.lang.String">EURO MTN</item>
<item id="2153" type="java.lang.String">EURO NON-DOLLAR</item>
<item id="2154" type="java.lang.String">DOMESTIC MTN</item>
<item id="2155" type="java.lang.String">REV OVERDRAFT</item>
<item id="2156" type="java.lang.String">TERM INCREMENT</item>
<item id="2157" type="java.lang.String">DIP SYNTH LOC</item>
<item id="2158" type="java.lang.String">PIK TERM</item>
<item id="2159" type="java.lang.String">CANADIAN</item>
<item id="2160" type="java.lang.String">YANKEE</item>
<item id="2161" type="java.lang.String">UK GILT STOCK</item>
<item id="2162" type="java.lang.String">BRIDGE GUARANTEE FAC</item>
<item id="2163" type="java.lang.String">DIP PIK TERM</item>
<item id="2164" type="java.lang.String">ISLAMIC LOC</item>
<item id="2165" type="java.lang.String">ABL REVOLVER</item>
<item id="2166" type="java.lang.String">ASSET-BASED LOC GUARANTEE F</item>
<item id="2167" type="java.lang.String">COV-LITE LOC</item>
<item id="2168" type="java.lang.String">REV MULTI-DRAW</item>
<item id="2169" type="java.lang.String">BRIDGE PIK TERM</item>
<item id="2170" type="java.lang.String">BRIDGE</item>
<item id="2171" type="java.lang.String">DELAY-DRAW</item>
<item id="2172" type="java.lang.String">GLOBAL</item>
<item id="2173" type="java.lang.String">DIP LOC</item>
<item id="2174" type="java.lang.String">SYNTH LOC</item>
<item id="2175" type="java.lang.String">TERM OVERDRAFT</item>
<item id="2176" type="java.lang.String">US DOMESTIC</item>
<item id="2177" type="java.lang.String">DIP DELAY-DRAW TERM</item>
<item id="2178" type="java.lang.String">DIP TERM</item>
<item id="2179" type="java.lang.String">TERM REV</item>
<item id="2180" type="java.lang.String">REV INCREMENT</item>
<item id="2181" type="java.lang.String">PIK REVOLVER</item>
<item id="2182" type="java.lang.String">EURO-ZONE</item>
<item id="2183" type="java.lang.String">ISLAMIC STANDBY</item>
<item id="2184" type="java.lang.String">BRIDGE TERM</item>
<item id="2185" type="java.lang.String">EURO-DOLLAR</item>
<item id="2186" type="java.lang.String">REV VAT-TRNCH</item>
<item id="2187" type="java.lang.String">STANDBY LOC</item>
<item id="2188" type="java.lang.String">SHOGUN</item>
</externalIssueTypes>
<filePattern id="2189">gs*.req</filePattern>
<marketSector id="2190" type="java.util.HashSet">
<item id="2191" type="java.lang.String">Corp</item>
<item id="2192" type="java.lang.String">Govt</item>
</marketSector>
<messageType idref="968"/>
<requestType id="2193">CorpGvtConvPfd Price</requestType>
<templateURI id="2194">db://resource/xslt/request/bloomberg/BBCorpGovtConvPrfd.xslt</templateURI>
</item>
<item id="2195" type="com.j2fe.connector.RequestType">
<dataSource idref="0"/>
<dataTypes id="2196" type="java.util.HashSet"/>
<description id="2197">BB Global Equity Recap Pricing</description>
<externalIssueTypes id="2198" type="java.util.HashSet"/>
<filePattern id="2199">gs*.req</filePattern>
<marketSector id="2200" type="java.util.HashSet"/>
<messageType idref="1060"/>
<requestType id="2201">Equity Recap Pricing</requestType>
<templateURI id="2202">fti://resource/xslt/Bloomberg/BBGlobalEquity.xslt</templateURI>
</item>
<item id="2203" type="com.j2fe.connector.RequestType">
<dataSource idref="0"/>
<dataTypes id="2204" type="java.util.HashSet">
<item id="2205" type="java.lang.String">SECMASTER</item>
</dataTypes>
<externalIssueTypes id="2206" type="java.util.HashSet">
<item id="2207" type="java.lang.String">DIVIDEND NEUTRAL STOCK FUTURE</item>
<item id="2208" type="java.lang.String">Physical commodity future.</item>
<item id="2209" type="java.lang.String">Physical commodity forward.</item>
<item id="2210" type="java.lang.String">SINGLE STOCK DIVIDEND FUTURE</item>
<item id="2211" type="java.lang.String">Financial commodity future.</item>
<item id="2212" type="java.lang.String">Physical commodity spot.</item>
<item id="2213" type="java.lang.String">SINGLE STOCK FUTURE SPREAD</item>
<item id="2214" type="java.lang.String">Financial index future.</item>
<item id="2215" type="java.lang.String">Financial commodity spot.</item>
<item id="2216" type="java.lang.String">Currency future.</item>
<item id="2217" type="java.lang.String">Currency spot.</item>
<item id="2218" type="java.lang.String">SINGLE STOCK FUTURE</item>
<item id="2219" type="java.lang.String">CONTRACT FOR DIFFERENCE</item>
<item id="2220" type="java.lang.String">Physical index future.</item>
<item id="2221" type="java.lang.String">Spot index.</item>
<item id="2222" type="java.lang.String">Strategy Trade.</item>
<item id="2223" type="java.lang.String">SINGLE STOCK FORWARD</item>
</externalIssueTypes>
<filePattern id="2224">gs*.req</filePattern>
<marketSector id="2225" type="java.util.HashSet">
<item id="2226" type="java.lang.String">Equity</item>
<item id="2227" type="java.lang.String">Index</item>
<item id="2228" type="java.lang.String">Comdty</item>
<item id="2229" type="java.lang.String">Curncy</item>
</marketSector>
<messageType idref="339"/>
<requestType id="2230">BBGlobalListedFutures</requestType>
<templateURI id="2231">db://resource/xslt/request/bloomberg/BBGlobalListedFutures.xslt</templateURI>
</item>
<item id="2232" type="com.j2fe.connector.RequestType">
<dataSource idref="0"/>
<dataTypes id="2233" type="java.util.HashSet">
<item id="2234" type="java.lang.String">PRICE MiFID</item>
</dataTypes>
<externalIssueTypes id="2235" type="java.util.HashSet">
<item id="2236" type="java.lang.String">ETP</item>
<item id="2237" type="java.lang.String">Amertst</item>
<item id="2238" type="java.lang.String">A/T Score</item>
<item id="2239" type="java.lang.String">Austrian Crt</item>
<item id="2240" type="java.lang.String">Private Eqty</item>
<item id="2241" type="java.lang.String">Variable Annuity</item>
<item id="2242" type="java.lang.String">French Cert</item>
<item id="2243" type="java.lang.String">Right</item>
<item id="2244" type="java.lang.String">Misc.</item>
<item id="2245" type="java.lang.String">Unit</item>
<item id="2246" type="java.lang.String">A/T Unit</item>
<item id="2247" type="java.lang.String">Ltd Part</item>
<item id="2248" type="java.lang.String">ADR</item>
<item id="2249" type="java.lang.String">Car Forward</item>
<item id="2250" type="java.lang.String">CDR</item>
<item id="2251" type="java.lang.String">RDC</item>
<item id="2252" type="java.lang.String">BDR</item>
<item id="2253" type="java.lang.String">Conv Prfd</item>
<item id="2254" type="java.lang.String">Fund of Funds</item>
<item id="2255" type="java.lang.String">EDR</item>
<item id="2256" type="java.lang.String">GDR</item>
<item id="2257" type="java.lang.String">PRES</item>
<item id="2258" type="java.lang.String">IDR</item>
<item id="2259" type="java.lang.String">Conv Bond</item>
<item id="2260" type="java.lang.String">Unit Inv Tst</item>
<item id="2261" type="java.lang.String">Hedge Fund</item>
<item id="2262" type="java.lang.String">Royalty Trst</item>
<item id="2263" type="java.lang.String">Belgium Cert</item>
<item id="2264" type="java.lang.String">Common Stock</item>
<item id="2265" type="java.lang.String">Mutual Fund</item>
<item id="2266" type="java.lang.String">Receipt</item>
<item id="2267" type="java.lang.String">Savings Share</item>
<item id="2268" type="java.lang.String">Dutch Cert</item>
<item id="2269" type="java.lang.String">Sec Lending</item>
<item id="2270" type="java.lang.String">Tracking Stk</item>
<item id="2271" type="java.lang.String">German Cert</item>
<item id="2272" type="java.lang.String">Private Comp</item>
<item id="2273" type="java.lang.String">NY Reg Shrs</item>
<item id="2274" type="java.lang.String">Preferred</item>
<item id="2275" type="java.lang.String">Open-End Fund</item>
<item id="2276" type="java.lang.String">Preference</item>
<item id="2277" type="java.lang.String">FDIC</item>
<item id="2278" type="java.lang.String">REIT</item>
<item id="2279" type="java.lang.String">Swiss Cert</item>
<item id="2280" type="java.lang.String">Bond</item>
<item id="2281" type="java.lang.String">A/T Prime</item>
<item id="2282" type="java.lang.String">Closed-End Fund</item>
</externalIssueTypes>
<filePattern id="2283">gs*.req</filePattern>
<marketSector id="2284" type="java.util.HashSet">
<item id="2285" type="java.lang.String">Equity</item>
</marketSector>
<messageType idref="1215"/>
<requestType id="2286">Mifid Pricing</requestType>
<templateURI id="2287">db://resource/xslt/request/bloomberg/BBGlobalEquity.xslt</templateURI>
</item>
<item id="2288" type="com.j2fe.connector.RequestType">
<dataSource idref="0"/>
<dataTypes id="2289" type="java.util.HashSet">
<item id="2290" type="java.lang.String">PRICE</item>
</dataTypes>
<externalIssueTypes id="2291" type="java.util.HashSet">
<item id="2292" type="java.lang.String">Agncy CMO Other</item>
<item id="2293" type="java.lang.String">ABS Home</item>
<item id="2294" type="java.lang.String">Agncy CMO INV</item>
<item id="2295" type="java.lang.String">CF</item>
<item id="2296" type="java.lang.String">CMBS</item>
<item id="2297" type="java.lang.String">Agncy CMO FLT</item>
<item id="2298" type="java.lang.String">Agncy CMO Z</item>
<item id="2299" type="java.lang.String">Prvt CMO Other</item>
<item id="2300" type="java.lang.String">Prvt CMO Z</item>
<item id="2301" type="java.lang.String">Prvt CMO PO</item>
<item id="2302" type="java.lang.String">MV</item>
<item id="2303" type="java.lang.String">Agncy CMO PO</item>
<item id="2304" type="java.lang.String">Agncy ABS Home</item>
<item id="2305" type="java.lang.String">ABS Auto</item>
<item id="2306" type="java.lang.String">ABS Card</item>
<item id="2307" type="java.lang.String">Agncy CMO IO</item>
<item id="2308" type="java.lang.String">Agncy ABS Other</item>
<item id="2309" type="java.lang.String">HB</item>
<item id="2310" type="java.lang.String">Prvt CMO INV</item>
<item id="2311" type="java.lang.String">SN</item>
<item id="2312" type="java.lang.String">Prvt CMO IO</item>
<item id="2313" type="java.lang.String">ABS Other</item>
<item id="2314" type="java.lang.String">Prvt CMO FLT</item>
</externalIssueTypes>
<filePattern id="2315">gs*.req</filePattern>
<marketSector id="2316" type="java.util.HashSet">
<item id="2317" type="java.lang.String">Mtge</item>
</marketSector>
<messageType idref="1179"/>
<requestType id="2318">BBMortgageNonPoolABSPricing</requestType>
<templateURI id="2319">db://resource/xslt/request/bloomberg/BBMortgagePoolNonPool.xslt</templateURI>
</item>
<item id="2320" type="com.j2fe.connector.RequestType">
<dataSource idref="0"/>
<dataTypes id="2321" type="java.util.HashSet">
<item id="2322" type="java.lang.String">PRICE</item>
</dataTypes>
<externalIssueTypes id="2323" type="java.util.HashSet">
<item id="2324" type="java.lang.String">Equity Index</item>
<item id="2325" type="java.lang.String">Index Option</item>
<item id="2326" type="java.lang.String">Option on Equity Future</item>
<item id="2327" type="java.lang.String">Equity Option</item>
<item id="2328" type="java.lang.String">Financial index option.</item>
<item id="2329" type="java.lang.String">Index</item>
<item id="2330" type="java.lang.String">Physical index option.</item>
</externalIssueTypes>
<filePattern id="2331">gs*.req</filePattern>
<marketSector id="2332" type="java.util.HashSet">
<item id="2333" type="java.lang.String">Equity</item>
<item id="2334" type="java.lang.String">Index</item>
</marketSector>
<messageType idref="1232"/>
<requestType id="2335">Equity Listed Option Pricing</requestType>
<templateURI id="2336">db://resource/xslt/request/bloomberg/BBGlobalEquity.xslt</templateURI>
</item>
<item id="2337" type="com.j2fe.connector.RequestType">
<dataSource idref="0"/>
<dataTypes id="2338" type="java.util.HashSet">
<item id="2339" type="java.lang.String">SECMASTER</item>
</dataTypes>
<externalIssueTypes id="2340" type="java.util.HashSet">
<item id="2341" type="java.lang.String">Calendar Spread Option</item>
<item id="2342" type="java.lang.String">Physical commodity option.</item>
<item id="2343" type="java.lang.String">Currency option.</item>
<item id="2344" type="java.lang.String">Financial commodity option.</item>
</externalIssueTypes>
<filePattern id="2345">gs*.req</filePattern>
<marketSector id="2346" type="java.util.HashSet">
<item id="2347" type="java.lang.String">Curncy</item>
<item id="2348" type="java.lang.String">Comdty</item>
</marketSector>
<messageType idref="1390"/>
<requestType id="2349">BBGlobalNon-EquityListedOptions</requestType>
<templateURI id="2350">db://resource/xslt/request/bloomberg/BBGlobalNon-EquityListedOptions.xslt</templateURI>
</item>
<item id="2351" type="com.j2fe.connector.RequestType">
<dataSource idref="0"/>
<dataTypes id="2352" type="java.util.HashSet">
<item id="2353" type="java.lang.String">PRICE</item>
</dataTypes>
<externalIssueTypes id="2354" type="java.util.HashSet">
<item id="2355" type="java.lang.String">Calendar Spread Option</item>
<item id="2356" type="java.lang.String">Physical commodity option.</item>
<item id="2357" type="java.lang.String">Currency option.</item>
<item id="2358" type="java.lang.String">Financial commodity option.</item>
</externalIssueTypes>
<filePattern id="2359">gs*.req</filePattern>
<marketSector id="2360" type="java.util.HashSet">
<item id="2361" type="java.lang.String">Curncy</item>
<item id="2362" type="java.lang.String">Comdty</item>
</marketSector>
<messageType idref="1280"/>
<requestType id="2363">NonEquityListedOptionPricing</requestType>
<templateURI id="2364">db://resource/xslt/request/bloomberg/BBNonEquityListedOptionPricing.xslt</templateURI>
</item>
<item id="2365" type="com.j2fe.connector.RequestType">
<dataSource idref="0"/>
<dataTypes id="2366" type="java.util.HashSet">
<item id="2367" type="java.lang.String">PRICE</item>
</dataTypes>
<externalIssueTypes id="2368" type="java.util.HashSet">
<item id="2369" type="java.lang.String">DIVIDEND NEUTRAL STOCK FUTURE</item>
<item id="2370" type="java.lang.String">Physical commodity future.</item>
<item id="2371" type="java.lang.String">Physical commodity forward.</item>
<item id="2372" type="java.lang.String">SINGLE STOCK DIVIDEND FUTURE</item>
<item id="2373" type="java.lang.String">Financial commodity future.</item>
<item id="2374" type="java.lang.String">Physical commodity spot.</item>
<item id="2375" type="java.lang.String">SINGLE STOCK FUTURE SPREAD</item>
<item id="2376" type="java.lang.String">Financial index future.</item>
<item id="2377" type="java.lang.String">Financial commodity spot.</item>
<item id="2378" type="java.lang.String">Currency future.</item>
<item id="2379" type="java.lang.String">Currency spot.</item>
<item id="2380" type="java.lang.String">SINGLE STOCK FUTURE</item>
<item id="2381" type="java.lang.String">CONTRACT FOR DIFFERENCE</item>
<item id="2382" type="java.lang.String">Physical index future.</item>
<item id="2383" type="java.lang.String">Spot index.</item>
<item id="2384" type="java.lang.String">Strategy Trade.</item>
<item id="2385" type="java.lang.String">SINGLE STOCK FORWARD</item>
</externalIssueTypes>
<filePattern id="2386">gs*.req</filePattern>
<marketSector id="2387" type="java.util.HashSet">
<item id="2388" type="java.lang.String">Equity</item>
<item id="2389" type="java.lang.String">Index</item>
<item id="2390" type="java.lang.String">Comdty</item>
<item id="2391" type="java.lang.String">Curncy</item>
</marketSector>
<messageType idref="1302"/>
<requestType id="2392">BBGlobalListedFuturesPricing</requestType>
<templateURI id="2393">db://resource/xslt/request/bloomberg/BBGlobalListedFuturesPricing.xslt</templateURI>
</item>
<item id="2394" type="com.j2fe.connector.RequestType">
<dataSource idref="0"/>
<dataTypes id="2395" type="java.util.HashSet">
<item id="2396" type="java.lang.String">ACTIONS</item>
</dataTypes>
<externalIssueTypes id="2397" type="java.util.HashSet">
<item id="2398" type="java.lang.String">ASSET BACK LOC</item>
<item id="2399" type="java.lang.String">Austrian Crt</item>
<item id="2400" type="java.lang.String">Private Eqty</item>
<item id="2401" type="java.lang.String">STANDBY TERM</item>
<item id="2402" type="java.lang.String">Int. Rt. WRT</item>
<item id="2403" type="java.lang.String">BRIDGE ISLAMIC</item>
<item id="2404" type="java.lang.String">PIK TERM LOAN</item>
<item id="2405" type="java.lang.String">ASSET BACK TERM FILO</item>
<item id="2406" type="java.lang.String">Car Forward</item>
<item id="2407" type="java.lang.String">CDR</item>
<item id="2408" type="java.lang.String">Conv Prfd</item>
<item id="2409" type="java.lang.String">Fund of Funds</item>
<item id="2410" type="java.lang.String">ASSET BACK BRIDGE REV</item>
<item id="2411" type="java.lang.String">GDR</item>
<item id="2412" type="java.lang.String">PRES</item>
<item id="2413" type="java.lang.String">Unit Inv Tst</item>
<item id="2414" type="java.lang.String">DELAY-DRAW TERM MULTI-DRAW</item>
<item id="2415" type="java.lang.String">ASSET BACK REV LIFO</item>
<item id="2416" type="java.lang.String">Equity WRT</item>
<item id="2417" type="java.lang.String">ISLAMIC REV</item>
<item id="2418" type="java.lang.String">REVOLVER/TERM</item>
<item id="2419" type="java.lang.String">MEZZANINE</item>
<item id="2420" type="java.lang.String">Royalty Trst</item>
<item id="2421" type="java.lang.String">LOC</item>
<item id="2422" type="java.lang.String">RESTRUCTURD DEBT</item>
<item id="2423" type="java.lang.String">Sec Lending</item>
<item id="2424" type="java.lang.String">Tracking Stk</item>
<item id="2425" type="java.lang.String">ASSET BACK</item>
<item id="2426" type="java.lang.String">DOMESTIC</item>
<item id="2427" type="java.lang.String">Private Comp</item>
<item id="2428" type="java.lang.String">WARRANT</item>
<item id="2429" type="java.lang.String">NY Reg Shrs</item>
<item id="2430" type="java.lang.String">Preferred</item>
<item id="2431" type="java.lang.String">BRIDGE REV GUARANTEE FAC</item>
<item id="2432" type="java.lang.String">Index OTC Option</item>
<item id="2433" type="java.lang.String">SAMURAI</item>
<item id="2434" type="java.lang.String">Open-End Fund</item>
<item id="2435" type="java.lang.String">DELAY-DRAW VAT-TRNCH</item>
<item id="2436" type="java.lang.String">Preference</item>
<item id="2437" type="java.lang.String">SWING LINE LOAN</item>
<item id="2438" type="java.lang.String">PUBLIC</item>
<item id="2439" type="java.lang.String">STANDBY</item>
<item id="2440" type="java.lang.String">DEBT IN POSSESS</item>
<item id="2441" type="java.lang.String">DELAY-DRAW REV</item>
<item id="2442" type="java.lang.String">ISLAMIC</item>
<item id="2443" type="java.lang.String">ASSET BACK COV-LITE REV</item>
<item id="2444" type="java.lang.String">DELAY-DRAW TERM</item>
<item id="2445" type="java.lang.String">UIT</item>
<item id="2446" type="java.lang.String">ASSET BACK REV OVERDRAFT</item>
<item id="2447" type="java.lang.String">TERM VAT-TRNCH</item>
<item id="2448" type="java.lang.String">Right</item>
<item id="2449" type="java.lang.String">ASSET BACK DIP REV</item>
<item id="2450" type="java.lang.String">TERM</item>
<item id="2451" type="java.lang.String">I.R. Swp WRT</item>
<item id="2452" type="java.lang.String">Ltd Part</item>
<item id="2453" type="java.lang.String">SYNTHETIC REVOLVER</item>
<item id="2454" type="java.lang.String">DELAY-DRAW PIK TERM</item>
<item id="2455" type="java.lang.String">BRIDGE REV</item>
<item id="2456" type="java.lang.String">RDC</item>
<item id="2457" type="java.lang.String">BDR</item>
<item id="2458" type="java.lang.String">SWINGLINE</item>
<item id="2459" type="java.lang.String">Index WRT</item>
<item id="2460" type="java.lang.String">US NON-DOLLAR</item>
<item id="2461" type="java.lang.String">TERM GUARANTEE FAC</item>
<item id="2462" type="java.lang.String">Hedge Fund</item>
<item id="2463" type="java.lang.String">ASSET BACK COV-LITE DIP PIK</item>
<item id="2464" type="java.lang.String">PIK REV</item>
<item id="2465" type="java.lang.String">Belgium Cert</item>
<item id="2466" type="java.lang.String">BRIDGE PIK</item>
<item id="2467" type="java.lang.String">REV GUARANTEE FAC</item>
<item id="2468" type="java.lang.String">TERM TAX-SPARED</item>
<item id="2469" type="java.lang.String">ASSET BACK BRIDGE TERM</item>
<item id="2470" type="java.lang.String">SPARE - N/A</item>
<item id="2471" type="java.lang.String">OVERDRAFT FACILITY</item>
<item id="2472" type="java.lang.String">DIP</item>
<item id="2473" type="java.lang.String">BRIDGE DIP TERM</item>
<item id="2474" type="java.lang.String">COV-LITE REV</item>
<item id="2475" type="java.lang.String">GUARANTEE FACILITY</item>
<item id="2476" type="java.lang.String">COV-LITE PIK TERM</item>
<item id="2477" type="java.lang.String">TAX-SPARED</item>
<item id="2478" type="java.lang.String">COV-LITE TERM</item>
<item id="2479" type="java.lang.String">PRIVATE</item>
<item id="2480" type="java.lang.String">INCREMENT</item>
<item id="2481" type="java.lang.String">PIK</item>
<item id="2482" type="java.lang.String">PRIV PLACEMENT</item>
<item id="2483" type="java.lang.String">VAT-TRNCH</item>
<item id="2484" type="java.lang.String">ETF</item>
<item id="2485" type="java.lang.String">Spot index.</item>
<item id="2486" type="java.lang.String">SYNTHETIC LOC</item>
<item id="2487" type="java.lang.String">FDIC</item>
<item id="2488" type="java.lang.String">ISLAMIC TERM</item>
<item id="2489" type="java.lang.String">Swiss Cert</item>
<item id="2490" type="java.lang.String">SYNTH TERM</item>
<item id="2491" type="java.lang.String">Generic index future.</item>
<item id="2492" type="java.lang.String">AUSTRALIAN</item>
<item id="2493" type="java.lang.String">DIP REV</item>
<item id="2494" type="java.lang.String">ETP</item>
<item id="2495" type="java.lang.String">ASSET BACK BRIDGE</item>
<item id="2496" type="java.lang.String">REV</item>
<item id="2497" type="java.lang.String">SYNTH REV</item>
<item id="2498" type="java.lang.String">French Cert</item>
<item id="2499" type="java.lang.String">STANDBY REV</item>
<item id="2500" type="java.lang.String">TERM MULTI-DRAW</item>
<item id="2501" type="java.lang.String">Index</item>
<item id="2502" type="java.lang.String">ASSET BACK DELAY-DRAW TERM</item>
<item id="2503" type="java.lang.String">Physical index option.</item>
<item id="2504" type="java.lang.String">Unit</item>
<item id="2505" type="java.lang.String">2ND LIEN</item>
<item id="2506" type="java.lang.String">OVERDRAFT</item>
<item id="2507" type="java.lang.String">ADR</item>
<item id="2508" type="java.lang.String">REVOLVER</item>
<item id="2509" type="java.lang.String">US GOVERNMENT</item>
<item id="2510" type="java.lang.String">BULLDOG</item>
<item id="2511" type="java.lang.String">EDR</item>
<item id="2512" type="java.lang.String">Equity Index</item>
<item id="2513" type="java.lang.String">LOC GUARANTEE FAC</item>
<item id="2514" type="java.lang.String">Basket WRT</item>
<item id="2515" type="java.lang.String">ASSET BACK DIP TERM</item>
<item id="2516" type="java.lang.String">IDR</item>
<item id="2517" type="java.lang.String">DIP TERM INCREMENT</item>
<item id="2518" type="java.lang.String">Conv Bond</item>
<item id="2519" type="java.lang.String">I.R. Fut WRT</item>
<item id="2520" type="java.lang.String">Prfd WRT</item>
<item id="2521" type="java.lang.String">LTR OF CREDIT</item>
<item id="2522" type="java.lang.String">ASSET BACK TERM</item>
<item id="2523" type="java.lang.String">Common Stock</item>
<item id="2524" type="java.lang.String">Receipt</item>
<item id="2525" type="java.lang.String">DIP TERM MULTI-DRAW</item>
<item id="2526" type="java.lang.String">SYNTH</item>
<item id="2527" type="java.lang.String">ASSET BACK REV</item>
<item id="2528" type="java.lang.String">EURO MTN</item>
<item id="2529" type="java.lang.String">EURO NON-DOLLAR</item>
<item id="2530" type="java.lang.String">DOMESTIC MTN</item>
<item id="2531" type="java.lang.String">REV OVERDRAFT</item>
<item id="2532" type="java.lang.String">TERM INCREMENT</item>
<item id="2533" type="java.lang.String">DIP SYNTH LOC</item>
<item id="2534" type="java.lang.String">PIK TERM</item>
<item id="2535" type="java.lang.String">CANADIAN</item>
<item id="2536" type="java.lang.String">YANKEE</item>
<item id="2537" type="java.lang.String">Physical index future.</item>
<item id="2538" type="java.lang.String">UK GILT STOCK</item>
<item id="2539" type="java.lang.String">REIT</item>
<item id="2540" type="java.lang.String">BRIDGE GUARANTEE FAC</item>
<item id="2541" type="java.lang.String">DIP PIK TERM</item>
<item id="2542" type="java.lang.String">ISLAMIC LOC</item>
<item id="2543" type="java.lang.String">ABL REVOLVER</item>
<item id="2544" type="java.lang.String">Warrant</item>
<item id="2545" type="java.lang.String">Variable Annuity</item>
<item id="2546" type="java.lang.String">ASSET-BASED LOC GUARANTEE F</item>
<item id="2547" type="java.lang.String">Corp Bnd WRT</item>
<item id="2548" type="java.lang.String">COV-LITE LOC</item>
<item id="2549" type="java.lang.String">REV MULTI-DRAW</item>
<item id="2550" type="java.lang.String">BRIDGE PIK TERM</item>
<item id="2551" type="java.lang.String">BRIDGE</item>
<item id="2552" type="java.lang.String">Misc.</item>
<item id="2553" type="java.lang.String">A/T Unit</item>
<item id="2554" type="java.lang.String">DELAY-DRAW</item>
<item id="2555" type="java.lang.String">GLOBAL</item>
<item id="2556" type="java.lang.String">Non-Equity Index</item>
<item id="2557" type="java.lang.String">DIP LOC</item>
<item id="2558" type="java.lang.String">Cmdt Fut WRT</item>
<item id="2559" type="java.lang.String">SYNTH LOC</item>
<item id="2560" type="java.lang.String">TERM OVERDRAFT</item>
<item id="2561" type="java.lang.String">US DOMESTIC</item>
<item id="2562" type="java.lang.String">DIP DELAY-DRAW TERM</item>
<item id="2563" type="java.lang.String">Index Option</item>
<item id="2564" type="java.lang.String">Mutual Fund</item>
<item id="2565" type="java.lang.String">DIP TERM</item>
<item id="2566" type="java.lang.String">TERM REV</item>
<item id="2567" type="java.lang.String">Financial index option.</item>
<item id="2568" type="java.lang.String">Dutch Cert</item>
<item id="2569" type="java.lang.String">REV INCREMENT</item>
<item id="2570" type="java.lang.String">PIK REVOLVER</item>
<item id="2571" type="java.lang.String">Pvt Eqty Fund</item>
<item id="2572" type="java.lang.String">EURO-ZONE</item>
<item id="2573" type="java.lang.String">German Cert</item>
<item id="2574" type="java.lang.String">ISLAMIC STANDBY</item>
<item id="2575" type="java.lang.String">Financial index future.</item>
<item id="2576" type="java.lang.String">BRIDGE TERM</item>
<item id="2577" type="java.lang.String">EURO-DOLLAR</item>
<item id="2578" type="java.lang.String">Indx Fut WRT</item>
<item id="2579" type="java.lang.String">Currency WRT</item>
<item id="2580" type="java.lang.String">REV VAT-TRNCH</item>
<item id="2581" type="java.lang.String">STANDBY LOC</item>
<item id="2582" type="java.lang.String">Strategy Trade.</item>
<item id="2583" type="java.lang.String">SHOGUN</item>
<item id="2584" type="java.lang.String">Bond</item>
<item id="2585" type="java.lang.String">Cmdt Idx WRT</item>
<item id="2586" type="java.lang.String">Closed-End Fund</item>
</externalIssueTypes>
<filePattern id="2587">gs*.req</filePattern>
<marketSector id="2588" type="java.util.HashSet">
<item id="2589" type="java.lang.String">Mtge</item>
<item id="2590" type="java.lang.String">M-Mkt</item>
<item id="2591" type="java.lang.String">Govt</item>
<item id="2592" type="java.lang.String">Muni</item>
<item id="2593" type="java.lang.String">Equity</item>
<item id="2594" type="java.lang.String">Corp</item>
<item id="2595" type="java.lang.String">Index</item>
<item id="2596" type="java.lang.String">Comdty</item>
<item id="2597" type="java.lang.String">Curncy</item>
<item id="2598" type="java.lang.String">Pfd</item>
</marketSector>
<messageType idref="151"/>
<requestType id="2599">Corporate Actions</requestType>
<templateURI id="2600">db://resource/xslt/request/bloomberg/BloombergCAX.xslt</templateURI>
</item>
<item id="2601" type="com.j2fe.connector.RequestType">
<dataSource idref="0"/>
<dataTypes id="2602" type="java.util.HashSet">
<item id="2603" type="java.lang.String">SECMASTER PRE</item>
</dataTypes>
<externalIssueTypes id="2604" type="java.util.HashSet">
<item id="2605" type="java.lang.String">Austrian Crt</item>
<item id="2606" type="java.lang.String">Private Eqty</item>
<item id="2607" type="java.lang.String">French Cert</item>
<item id="2608" type="java.lang.String">Right</item>
<item id="2609" type="java.lang.String">Misc.</item>
<item id="2610" type="java.lang.String">A/T Unit</item>
<item id="2611" type="java.lang.String">Ltd Part</item>
<item id="2612" type="java.lang.String">ADR</item>
<item id="2613" type="java.lang.String">US GOVERNMENT</item>
<item id="2614" type="java.lang.String">CDR</item>
<item id="2615" type="java.lang.String">RDC</item>
<item id="2616" type="java.lang.String">BDR</item>
<item id="2617" type="java.lang.String">Conv Prfd</item>
<item id="2618" type="java.lang.String">Fund of Funds</item>
<item id="2619" type="java.lang.String">EDR</item>
<item id="2620" type="java.lang.String">GDR</item>
<item id="2621" type="java.lang.String">IDR</item>
<item id="2622" type="java.lang.String">Conv Bond</item>
<item id="2623" type="java.lang.String">Royalty Trst</item>
<item id="2624" type="java.lang.String">Belgium Cert</item>
<item id="2625" type="java.lang.String">Common Stock</item>
<item id="2626" type="java.lang.String">Mutual Fund</item>
<item id="2627" type="java.lang.String">SPOT</item>
<item id="2628" type="java.lang.String">Dutch Cert</item>
<item id="2629" type="java.lang.String">German Cert</item>
<item id="2630" type="java.lang.String">Private Comp</item>
<item id="2631" type="java.lang.String">WARRANT</item>
<item id="2632" type="java.lang.String">NY Reg Shrs</item>
<item id="2633" type="java.lang.String">Preferred</item>
<item id="2634" type="java.lang.String">Preference</item>
<item id="2635" type="java.lang.String">CROSS</item>
<item id="2636" type="java.lang.String">FDIC</item>
<item id="2637" type="java.lang.String">REIT</item>
<item id="2638" type="java.lang.String">Swiss Cert</item>
<item id="2639" type="java.lang.String">PUBLIC</item>
<item id="2640" type="java.lang.String">Bond</item>
</externalIssueTypes>
<filePattern id="2641">gs*.req</filePattern>
<marketSector id="2642" type="java.util.HashSet">
<item id="2643" type="java.lang.String">Equity</item>
</marketSector>
<messageType idref="900"/>
<requestType id="2644">BB_Premarket_Equity</requestType>
<templateURI id="2645">db://resource/xslt/request/bloomberg/BBPreMarketEquity.xslt</templateURI>
</item>
<item id="2646" type="com.j2fe.connector.RequestType">
<dataSource idref="0"/>
<dataTypes id="2647" type="java.util.HashSet">
<item id="2648" type="java.lang.String">SECMASTER</item>
</dataTypes>
<externalIssueTypes id="2649" type="java.util.HashSet">
<item id="2650" type="java.lang.String">Equity Index</item>
<item id="2651" type="java.lang.String">Index Option</item>
<item id="2652" type="java.lang.String">Option on Equity Future</item>
<item id="2653" type="java.lang.String">Equity Option</item>
<item id="2654" type="java.lang.String">Financial index option.</item>
<item id="2655" type="java.lang.String">Index</item>
<item id="2656" type="java.lang.String">Physical index option.</item>
</externalIssueTypes>
<filePattern id="2657">gs*.req</filePattern>
<marketSector id="2658" type="java.util.HashSet">
<item id="2659" type="java.lang.String">Equity</item>
<item id="2660" type="java.lang.String">Index</item>
</marketSector>
<messageType idref="430"/>
<requestType id="2661">BBGlobalEquityListedOptions</requestType>
<templateURI id="2662">db://resource/xslt/request/bloomberg/BBGlobalEquityListedOptions.xslt</templateURI>
</item>
<item id="2663" type="com.j2fe.connector.RequestType">
<dataSource idref="0"/>
<dataTypes id="2664" type="java.util.HashSet">
<item id="2665" type="java.lang.String">SECMASTER GICS</item>
</dataTypes>
<externalIssueTypes id="2666" type="java.util.HashSet">
<item id="2667" type="java.lang.String">ETP</item>
<item id="2668" type="java.lang.String">Austrian Crt</item>
<item id="2669" type="java.lang.String">Private Eqty</item>
<item id="2670" type="java.lang.String">Variable Annuity</item>
<item id="2671" type="java.lang.String">French Cert</item>
<item id="2672" type="java.lang.String">Right</item>
<item id="2673" type="java.lang.String">Misc.</item>
<item id="2674" type="java.lang.String">Unit</item>
<item id="2675" type="java.lang.String">A/T Unit</item>
<item id="2676" type="java.lang.String">Ltd Part</item>
<item id="2677" type="java.lang.String">ADR</item>
<item id="2678" type="java.lang.String">Car Forward</item>
<item id="2679" type="java.lang.String">CDR</item>
<item id="2680" type="java.lang.String">MLP</item>
<item id="2681" type="java.lang.String">RDC</item>
<item id="2682" type="java.lang.String">BDR</item>
<item id="2683" type="java.lang.String">Conv Prfd</item>
<item id="2684" type="java.lang.String">EDR</item>
<item id="2685" type="java.lang.String">GDR</item>
<item id="2686" type="java.lang.String">PRES</item>
<item id="2687" type="java.lang.String">IDR</item>
<item id="2688" type="java.lang.String">Conv Bond</item>
<item id="2689" type="java.lang.String">Unit Inv Tst</item>
<item id="2690" type="java.lang.String">Royalty Trst</item>
<item id="2691" type="java.lang.String">Belgium Cert</item>
<item id="2692" type="java.lang.String">Common Stock</item>
<item id="2693" type="java.lang.String">Receipt</item>
<item id="2694" type="java.lang.String">Savings Share</item>
<item id="2695" type="java.lang.String">Dutch Cert</item>
<item id="2696" type="java.lang.String">Sec Lending</item>
<item id="2697" type="java.lang.String">Tracking Stk</item>
<item id="2698" type="java.lang.String">German Cert</item>
<item id="2699" type="java.lang.String">Private Comp</item>
<item id="2700" type="java.lang.String">Foreign Sh.</item>
<item id="2701" type="java.lang.String">PRIVATE</item>
<item id="2702" type="java.lang.String">Stapled Security</item>
<item id="2703" type="java.lang.String">NY Reg Shrs</item>
<item id="2704" type="java.lang.String">Preferred</item>
<item id="2705" type="java.lang.String">NVDR</item>
<item id="2706" type="java.lang.String">Preference</item>
<item id="2707" type="java.lang.String">FDIC</item>
<item id="2708" type="java.lang.String">REIT</item>
<item id="2709" type="java.lang.String">Swiss Cert</item>
<item id="2710" type="java.lang.String">PUBLIC</item>
<item id="2711" type="java.lang.String">Bond</item>
</externalIssueTypes>
<filePattern id="2712">gs*.req</filePattern>
<marketSector id="2713" type="java.util.HashSet"/>
<messageType idref="266"/>
<requestType id="2714">BBGICS</requestType>
<templateURI id="2715">db://resource/xslt/request/bloomberg/BBGICS.xslt</templateURI>
</item>
<item id="2716" type="com.j2fe.connector.RequestType">
<dataSource idref="0"/>
<dataTypes id="2717" type="java.util.HashSet">
<item id="2718" type="java.lang.String">PRICE</item>
</dataTypes>
<externalIssueTypes id="2719" type="java.util.HashSet">
<item id="2720" type="java.lang.String">Warrant</item>
<item id="2721" type="java.lang.String">Corp Bnd WRT</item>
<item id="2722" type="java.lang.String">Int. Rt. WRT</item>
<item id="2723" type="java.lang.String">I.R. Swp WRT</item>
<item id="2724" type="java.lang.String">Index WRT</item>
<item id="2725" type="java.lang.String">Indx Fut WRT</item>
<item id="2726" type="java.lang.String">Basket WRT</item>
<item id="2727" type="java.lang.String">Currency WRT</item>
<item id="2728" type="java.lang.String">I.R. Fut WRT</item>
<item id="2729" type="java.lang.String">Prfd WRT</item>
<item id="2730" type="java.lang.String">Cmdt Fut WRT</item>
<item id="2731" type="java.lang.String">Cmdt Idx WRT</item>
<item id="2732" type="java.lang.String">Equity WRT</item>
</externalIssueTypes>
<filePattern id="2733">gs*.req</filePattern>
<marketSector id="2734" type="java.util.HashSet">
<item id="2735" type="java.lang.String">Equity</item>
</marketSector>
<messageType idref="1105"/>
<requestType id="2736">WarrantsPricing</requestType>
<templateURI id="2737">db://resource/xslt/request/bloomberg/BBGlobalWarrants.xslt</templateURI>
</item>
<item id="2738" type="com.j2fe.connector.RequestType">
<dataSource idref="0"/>
<dataTypes id="2739" type="java.util.HashSet">
<item id="2740" type="java.lang.String">PRICE</item>
</dataTypes>
<externalIssueTypes id="2741" type="java.util.HashSet">
<item id="2742" type="java.lang.String">TAX CREDIT, OID</item>
<item id="2743" type="java.lang.String">INTER. APPRECIATION</item>
<item id="2744" type="java.lang.String">ADJ CONV. TO FIXED, OID</item>
<item id="2745" type="java.lang.String">FIXED</item>
<item id="2746" type="java.lang.String">INTER. APPRECIATION, OID</item>
<item id="2747" type="java.lang.String">ZERO COUPON</item>
<item id="2748" type="java.lang.String">OID</item>
<item id="2749" type="java.lang.String">FLOATING, OID</item>
<item id="2750" type="java.lang.String">TAX CREDIT</item>
<item id="2751" type="java.lang.String">WHEN ISSUED</item>
<item id="2752" type="java.lang.String">CPI LINKED</item>
<item id="2753" type="java.lang.String">ZERO COUPON, OID</item>
<item id="2754" type="java.lang.String">CPI LINKED, OID</item>
<item id="2755" type="java.lang.String">FIXED, OID</item>
<item id="2756" type="java.lang.String">FLOATING</item>
<item id="2757" type="java.lang.String">ADJUSTABLE</item>
<item id="2758" type="java.lang.String">ADJUSTABLE, OID</item>
<item id="2759" type="java.lang.String">ADJ CONV. TO FIXED</item>
<item id="2760" type="java.lang.String">WHEN ISSUED, OID</item>
</externalIssueTypes>
<filePattern id="2761">gs*.req</filePattern>
<marketSector id="2762" type="java.util.HashSet">
<item id="2763" type="java.lang.String">Muni</item>
</marketSector>
<messageType idref="1128"/>
<requestType id="2764">MunisPricing</requestType>
<templateURI id="2765">db://resource/xslt/request/bloomberg/BBMunicipals.xslt</templateURI>
</item>
<item id="2766" type="com.j2fe.connector.RequestType">
<dataSource idref="0"/>
<dataTypes id="2767" type="java.util.HashSet">
<item id="2768" type="java.lang.String">PRICE</item>
</dataTypes>
<externalIssueTypes id="2769" type="java.util.HashSet">
<item id="2770" type="java.lang.String">Fund of Funds</item>
<item id="2771" type="java.lang.String">UIT</item>
<item id="2772" type="java.lang.String">Open-End Fund</item>
<item id="2773" type="java.lang.String">Mutual Fund</item>
<item id="2774" type="java.lang.String">ETF</item>
<item id="2775" type="java.lang.String">Pvt Eqty Fund</item>
<item id="2776" type="java.lang.String">Hedge Fund</item>
<item id="2777" type="java.lang.String">Closed-End Fund</item>
</externalIssueTypes>
<filePattern id="2778">gs*.req</filePattern>
<marketSector id="2779" type="java.util.HashSet">
<item id="2780" type="java.lang.String">Equity</item>
</marketSector>
<messageType idref="1081"/>
<requestType id="2781">MutualFundPricing</requestType>
<templateURI id="2782">db://resource/xslt/request/bloomberg/BBGlobalMutualFund.xslt</templateURI>
</item>
<item id="2783" type="com.j2fe.connector.RequestType">
<dataSource idref="0"/>
<dataTypes id="2784" type="java.util.HashSet">
<item id="2785" type="java.lang.String">SECMASTER</item>
</dataTypes>
<externalIssueTypes id="2786" type="java.util.HashSet">
<item id="2787" type="java.lang.String">TAX CREDIT, OID</item>
<item id="2788" type="java.lang.String">INTER. APPRECIATION</item>
<item id="2789" type="java.lang.String">ADJ CONV. TO FIXED, OID</item>
<item id="2790" type="java.lang.String">FIXED</item>
<item id="2791" type="java.lang.String">INTER. APPRECIATION, OID</item>
<item id="2792" type="java.lang.String">ZERO COUPON</item>
<item id="2793" type="java.lang.String">OID</item>
<item id="2794" type="java.lang.String">FLOATING, OID</item>
<item id="2795" type="java.lang.String">TAX CREDIT</item>
<item id="2796" type="java.lang.String">WHEN ISSUED</item>
<item id="2797" type="java.lang.String">CPI LINKED</item>
<item id="2798" type="java.lang.String">ZERO COUPON, OID</item>
<item id="2799" type="java.lang.String">CPI LINKED, OID</item>
<item id="2800" type="java.lang.String">FIXED, OID</item>
<item id="2801" type="java.lang.String">FLOATING</item>
<item id="2802" type="java.lang.String">ADJUSTABLE</item>
<item id="2803" type="java.lang.String">ADJUSTABLE, OID</item>
<item id="2804" type="java.lang.String">ADJ CONV. TO FIXED</item>
<item id="2805" type="java.lang.String">WHEN ISSUED, OID</item>
</externalIssueTypes>
<filePattern id="2806">gs*.req</filePattern>
<marketSector id="2807" type="java.util.HashSet">
<item id="2808" type="java.lang.String">Muni</item>
</marketSector>
<messageType idref="1367"/>
<requestType id="2809">Municipals</requestType>
<templateURI id="2810">db://resource/xslt/request/bloomberg/BBMunicipals.xslt</templateURI>
</item>
<item id="2811" type="com.j2fe.connector.RequestType">
<dataSource idref="0"/>
<dataTypes id="2812" type="java.util.HashSet">
<item id="2813" type="java.lang.String">SECMASTER ADDN</item>
</dataTypes>
<externalIssueTypes id="2814" type="java.util.HashSet">
<item id="2815" type="java.lang.String">PUBLIC</item>
<item id="2816" type="java.lang.String">PRIVATE</item>
</externalIssueTypes>
<filePattern id="2817">gs*.req</filePattern>
<marketSector id="2818" type="java.util.HashSet">
<item id="2819" type="java.lang.String">Pfd</item>
</marketSector>
<messageType idref="288"/>
<requestType id="2820">PreferredsAddn</requestType>
<templateURI id="2821">db://resource/xslt/request/bloomberg/BBCorpGovtConvPrfd.xslt</templateURI>
</item>
<item id="2822" type="com.j2fe.connector.RequestType">
<dataSource idref="0"/>
<dataTypes id="2823" type="java.util.HashSet">
<item id="2824" type="java.lang.String">PRICE</item>
</dataTypes>
<externalIssueTypes id="2825" type="java.util.HashSet">
<item id="2826" type="java.lang.String">ETP</item>
<item id="2827" type="java.lang.String">Austrian Crt</item>
<item id="2828" type="java.lang.String">Private Eqty</item>
<item id="2829" type="java.lang.String">Variable Annuity</item>
<item id="2830" type="java.lang.String">French Cert</item>
<item id="2831" type="java.lang.String">Right</item>
<item id="2832" type="java.lang.String">Misc.</item>
<item id="2833" type="java.lang.String">Unit</item>
<item id="2834" type="java.lang.String">A/T Unit</item>
<item id="2835" type="java.lang.String">Ltd Part</item>
<item id="2836" type="java.lang.String">ADR</item>
<item id="2837" type="java.lang.String">Car Forward</item>
<item id="2838" type="java.lang.String">CDR</item>
<item id="2839" type="java.lang.String">RDC</item>
<item id="2840" type="java.lang.String">BDR</item>
<item id="2841" type="java.lang.String">Conv Prfd</item>
<item id="2842" type="java.lang.String">EDR</item>
<item id="2843" type="java.lang.String">GDR</item>
<item id="2844" type="java.lang.String">PRES</item>
<item id="2845" type="java.lang.String">IDR</item>
<item id="2846" type="java.lang.String">Conv Bond</item>
<item id="2847" type="java.lang.String">Unit Inv Tst</item>
<item id="2848" type="java.lang.String">Royalty Trst</item>
<item id="2849" type="java.lang.String">Belgium Cert</item>
<item id="2850" type="java.lang.String">Common Stock</item>
<item id="2851" type="java.lang.String">Receipt</item>
<item id="2852" type="java.lang.String">Savings Share</item>
<item id="2853" type="java.lang.String">Dutch Cert</item>
<item id="2854" type="java.lang.String">Sec Lending</item>
<item id="2855" type="java.lang.String">Tracking Stk</item>
<item id="2856" type="java.lang.String">German Cert</item>
<item id="2857" type="java.lang.String">Private Comp</item>
<item id="2858" type="java.lang.String">Foreign Sh.</item>
<item id="2859" type="java.lang.String">NY Reg Shrs</item>
<item id="2860" type="java.lang.String">Preferred</item>
<item id="2861" type="java.lang.String">Preference</item>
<item id="2862" type="java.lang.String">FDIC</item>
<item id="2863" type="java.lang.String">REIT</item>
<item id="2864" type="java.lang.String">Swiss Cert</item>
</externalIssueTypes>
<filePattern id="2865">gs*.req</filePattern>
<marketSector id="2866" type="java.util.HashSet">
<item id="2867" type="java.lang.String">Equity</item>
</marketSector>
<messageType idref="1036"/>
<requestType id="2868">Equity Pricing</requestType>
<templateURI id="2869">db://resource/xslt/request/bloomberg/BBGlobalEquity.xslt</templateURI>
</item>
<item id="2870" type="com.j2fe.connector.RequestType">
<dataSource idref="0"/>
<dataTypes id="2871" type="java.util.HashSet">
<item id="2872" type="java.lang.String">PRICE</item>
<item id="2873" type="java.lang.String">SECMASTER</item>
</dataTypes>
<externalIssueTypes id="2874" type="java.util.HashSet">
<item id="2875" type="java.lang.String">Strategy Trade.</item>
<item id="2876" type="java.lang.String">Fixed Income Index</item>
<item id="2877" type="java.lang.String">Non-Equity Index</item>
</externalIssueTypes>
<filePattern id="2878">gs*.req</filePattern>
<marketSector id="2879" type="java.util.HashSet">
<item id="2880" type="java.lang.String">Index</item>
</marketSector>
<messageType idref="394"/>
<requestType id="2881">IndexPricing</requestType>
<templateURI id="2882">db://resource/xslt/request/bloomberg/BBIndex.xslt</templateURI>
</item>
<item id="2883" type="com.j2fe.connector.RequestType">
<dataSource idref="0"/>
<dataTypes id="2884" type="java.util.HashSet">
<item id="2885" type="java.lang.String">SECMASTER</item>
</dataTypes>
<externalIssueTypes id="2886" type="java.util.HashSet">
<item id="2887" type="java.lang.String">PUBLIC</item>
<item id="2888" type="java.lang.String">PRIVATE</item>
</externalIssueTypes>
<filePattern id="2889">gs*.req</filePattern>
<marketSector id="2890" type="java.util.HashSet">
<item id="2891" type="java.lang.String">Pfd</item>
</marketSector>
<messageType idref="237"/>
<requestType id="2892">Preferreds</requestType>
<templateURI id="2893">db://resource/xslt/request/bloomberg/BBCorpGovtConvPrfd.xslt</templateURI>
</item>
<item id="2894" type="com.j2fe.connector.RequestType">
<dataSource idref="0"/>
<dataTypes id="2895" type="java.util.HashSet">
<item id="2896" type="java.lang.String">SECMASTER ADDN</item>
</dataTypes>
<externalIssueTypes id="2897" type="java.util.HashSet">
<item id="2898" type="java.lang.String">Canadian</item>
<item id="2899" type="java.lang.String">MBS balloon</item>
<item id="2900" type="java.lang.String">MBS 30yr</item>
<item id="2901" type="java.lang.String">MBS ARM</item>
<item id="2902" type="java.lang.String">SBA Pool</item>
<item id="2903" type="java.lang.String">MBS 10yr</item>
<item id="2904" type="java.lang.String">MBS 20yr</item>
<item id="2905" type="java.lang.String">MBS Other</item>
<item id="2906" type="java.lang.String">MBS 15yr</item>
</externalIssueTypes>
<filePattern id="2907">gs*.req</filePattern>
<marketSector id="2908" type="java.util.HashSet">
<item id="2909" type="java.lang.String">Mtge</item>
</marketSector>
<messageType idref="8"/>
<requestType id="2910">Mortgage Non PoolAddn</requestType>
<templateURI id="2911">db://resource/xslt/request/bloomberg/BBMortgagePoolNonPool.xslt</templateURI>
</item>
<item id="2912" type="com.j2fe.connector.RequestType">
<dataSource idref="0"/>
<dataTypes id="2913" type="java.util.HashSet">
<item id="2914" type="java.lang.String">SECMASTER</item>
</dataTypes>
<externalIssueTypes id="2915" type="java.util.HashSet">
<item id="2916" type="java.lang.String">Warrant</item>
<item id="2917" type="java.lang.String">Corp Bnd WRT</item>
<item id="2918" type="java.lang.String">Int. Rt. WRT</item>
<item id="2919" type="java.lang.String">I.R. Swp WRT</item>
<item id="2920" type="java.lang.String">Index WRT</item>
<item id="2921" type="java.lang.String">Indx Fut WRT</item>
<item id="2922" type="java.lang.String">Basket WRT</item>
<item id="2923" type="java.lang.String">Currency WRT</item>
<item id="2924" type="java.lang.String">I.R. Fut WRT</item>
<item id="2925" type="java.lang.String">Prfd WRT</item>
<item id="2926" type="java.lang.String">Cmdt Fut WRT</item>
<item id="2927" type="java.lang.String">Cmdt Idx WRT</item>
<item id="2928" type="java.lang.String">Equity WRT</item>
</externalIssueTypes>
<filePattern id="2929">gs*.req</filePattern>
<marketSector id="2930" type="java.util.HashSet">
<item id="2931" type="java.lang.String">Equity</item>
</marketSector>
<messageType idref="74"/>
<requestType id="2932">Warrants</requestType>
<templateURI id="2933">db://resource/xslt/request/bloomberg/BBGlobalWarrants.xslt</templateURI>
</item>
<item id="2934" type="com.j2fe.connector.RequestType">
<dataSource idref="0"/>
<dataTypes id="2935" type="java.util.HashSet"/>
<description id="2936">BB Preferred Recap Pricing</description>
<externalIssueTypes id="2937" type="java.util.HashSet"/>
<filePattern id="2938">gs*.req</filePattern>
<marketSector id="2939" type="java.util.HashSet"/>
<messageType idref="1164"/>
<requestType id="2940">Pfd Recap Pricing</requestType>
<templateURI id="2941">fti://resource/xslt/Bloomberg/BBCorpGovtConvPrfd.xslt</templateURI>
</item>
<item id="2942" type="com.j2fe.connector.RequestType">
<dataSource idref="0"/>
<dataTypes id="2943" type="java.util.HashSet"/>
<externalIssueTypes id="2944" type="java.util.HashSet"/>
<filePattern id="2945">gs*.req</filePattern>
<marketSector id="2946" type="java.util.HashSet"/>
<messageType idref="1495"/>
<requestType id="2947">EquityShortSaleCircuitBreak</requestType>
<templateURI id="2948">db://resource/xslt/request/bloomberg/BBGlobalEquity.xslt</templateURI>
</item>
<item id="2949" type="com.j2fe.connector.RequestType">
<dataSource idref="0"/>
<dataTypes id="2950" type="java.util.HashSet">
<item id="2951" type="java.lang.String">SECMASTER</item>
</dataTypes>
<externalIssueTypes id="2952" type="java.util.HashSet">
<item id="2953" type="java.lang.String">ETP</item>
<item id="2954" type="java.lang.String">Austrian Crt</item>
<item id="2955" type="java.lang.String">Private Eqty</item>
<item id="2956" type="java.lang.String">Variable Annuity</item>
<item id="2957" type="java.lang.String">French Cert</item>
<item id="2958" type="java.lang.String">Right</item>
<item id="2959" type="java.lang.String">Misc.</item>
<item id="2960" type="java.lang.String">Unit</item>
<item id="2961" type="java.lang.String">A/T Unit</item>
<item id="2962" type="java.lang.String">Ltd Part</item>
<item id="2963" type="java.lang.String">ADR</item>
<item id="2964" type="java.lang.String">Car Forward</item>
<item id="2965" type="java.lang.String">CDR</item>
<item id="2966" type="java.lang.String">MLP</item>
<item id="2967" type="java.lang.String">RDC</item>
<item id="2968" type="java.lang.String">BDR</item>
<item id="2969" type="java.lang.String">Conv Prfd</item>
<item id="2970" type="java.lang.String">EDR</item>
<item id="2971" type="java.lang.String">GDR</item>
<item id="2972" type="java.lang.String">PRES</item>
<item id="2973" type="java.lang.String">IDR</item>
<item id="2974" type="java.lang.String">Conv Bond</item>
<item id="2975" type="java.lang.String">Unit Inv Tst</item>
<item id="2976" type="java.lang.String">Royalty Trst</item>
<item id="2977" type="java.lang.String">Belgium Cert</item>
<item id="2978" type="java.lang.String">Common Stock</item>
<item id="2979" type="java.lang.String">Receipt</item>
<item id="2980" type="java.lang.String">Savings Share</item>
<item id="2981" type="java.lang.String">Dutch Cert</item>
<item id="2982" type="java.lang.String">Sec Lending</item>
<item id="2983" type="java.lang.String">Tracking Stk</item>
<item id="2984" type="java.lang.String">German Cert</item>
<item id="2985" type="java.lang.String">Private Comp</item>
<item id="2986" type="java.lang.String">Foreign Sh.</item>
<item id="2987" type="java.lang.String">Stapled Security</item>
<item id="2988" type="java.lang.String">NY Reg Shrs</item>
<item id="2989" type="java.lang.String">Preferred</item>
<item id="2990" type="java.lang.String">NVDR</item>
<item id="2991" type="java.lang.String">Preference</item>
<item id="2992" type="java.lang.String">FDIC</item>
<item id="2993" type="java.lang.String">REIT</item>
<item id="2994" type="java.lang.String">Swiss Cert</item>
<item id="2995" type="java.lang.String">Bond</item>
</externalIssueTypes>
<filePattern id="2996">gs*.req</filePattern>
<marketSector id="2997" type="java.util.HashSet">
<item id="2998" type="java.lang.String">Equity</item>
</marketSector>
<messageType idref="1420"/>
<requestType id="2999">Equity</requestType>
<templateURI id="3000">db://resource/xslt/request/bloomberg/BBGlobalEquity.xslt</templateURI>
</item>
<item id="3001" type="com.j2fe.connector.RequestType">
<dataSource idref="0"/>
<dataTypes id="3002" type="java.util.HashSet">
<item id="3003" type="java.lang.String">SECMASTER CERT</item>
</dataTypes>
<externalIssueTypes id="3004" type="java.util.HashSet">
<item id="3005" type="java.lang.String">US DOMESTIC</item>
<item id="3006" type="java.lang.String">EURO-DOLLAR</item>
<item id="3007" type="java.lang.String">PRIV PLACEMENT</item>
<item id="3008" type="java.lang.String">GLOBAL</item>
<item id="3009" type="java.lang.String">DOMESTIC</item>
<item id="3010" type="java.lang.String">EURO-ZONE</item>
<item id="3011" type="java.lang.String">EURO MTN</item>
<item id="3012" type="java.lang.String">EURO NON-DOLLAR</item>
<item id="3013" type="java.lang.String">DOMESTIC MTN</item>
<item id="3014" type="java.lang.String">PRIVATE</item>
</externalIssueTypes>
<filePattern id="3015">gs*.req</filePattern>
<marketSector id="3016" type="java.util.HashSet">
<item id="3017" type="java.lang.String">Corp</item>
<item id="3018" type="java.lang.String">Govt</item>
</marketSector>
<messageType idref="1518"/>
<requestType id="3019">BBGlobalCertificates</requestType>
<templateURI id="3020">db://resource/xslt/request/bloomberg/BBGlobalCertificates.xslt</templateURI>
</item>
<item id="3021" type="com.j2fe.connector.RequestType">
<dataSource idref="0"/>
<dataTypes id="3022" type="java.util.HashSet"/>
<externalIssueTypes id="3023" type="java.util.HashSet"/>
<marketSector id="3024" type="java.util.HashSet"/>
<messageType idref="59"/>
<requestType id="3025">CancelScheduledRequest</requestType>
<templateURI id="3026">db://resource/xslt/request/bloomberg/Cancel.xslt</templateURI>
</item>
</requestTypes>
</com.j2fe.processing.DataSource>
</businessobject>
</goldensource-package>

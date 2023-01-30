<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.19">
<package-comment/>
<businessobject displayString="OnMessagePublishing" type="org.quartz.impl.JobDetailImpl">
<org.quartz.impl.JobDetailImpl id="0">
<group id="1">Events</group>
<jobClass>com.j2fe.scheduling.jobs.ExecuteEventJob</jobClass>
<jobDataMap id="2"/>
<name id="3">OnMessagePublishing</name>
</org.quartz.impl.JobDetailImpl>
</businessobject>
<businessobject displayString="Schedule_FlatCountryPrimary" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 0 0 1 1 ?</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:AOIToleranceWindow</key>
<value id="5" type="java.lang.String">0</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:CreateSingleFile</key>
<value id="7" type="java.lang.String">false</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:Database</key>
<value id="9" type="java.lang.String">jdbc/GSDM-1</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:DateFormat</key>
<value id="11" type="java.lang.String">yyyyMMddHHmmssSSSSSSS</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:Delta with ADEL</key>
<value id="13" type="java.lang.String">false</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:Email Session</key>
<value id="15" type="java.lang.String">java/Mail</value>
</entry>
<entry>
<key id="16" type="java.lang.String">Event:Email Subject</key>
<value id="17" type="java.lang.String">Sample Message</value>
</entry>
<entry>
<key id="18" type="java.lang.String">Event:Email Text</key>
<value id="19" type="java.lang.String">Sample Message</value>
</entry>
<entry>
<key id="20" type="java.lang.String">Event:FilePerEntity</key>
<value id="21" type="java.lang.String">true</value>
</entry>
<entry>
<key id="22" type="java.lang.String">Event:Group MultiOccurring Fields</key>
<value id="23" type="java.lang.String">false</value>
</entry>
<entry>
<key id="24" type="java.lang.String">Event:IsFlattened?</key>
<value id="25" type="java.lang.String">true</value>
</entry>
<entry>
<key id="26" type="java.lang.String">Event:JMSBulkSize</key>
<value id="27" type="java.lang.String">500</value>
</entry>
<entry>
<key id="28" type="java.lang.String">Event:KafkaKeyPath</key>
<value id="29" type="java.lang.String">FullInstrument.CountrysPrimaryExchange.MktLstCountryP72CountryPrimaryID</value>
</entry>
<entry>
<key id="30" type="java.lang.String">Event:On Demand VSH</key>
<value id="31" type="java.lang.String">false</value>
</entry>
<entry>
<key id="32" type="java.lang.String">Event:PublishDataOldCSVFormat</key>
<value id="33" type="java.lang.String">false</value>
</entry>
<entry>
<key id="34" type="java.lang.String">Event:PublishDataWithFailedRulesValidation</key>
<value id="35" type="java.lang.String">false</value>
</entry>
<entry>
<key id="36" type="java.lang.String">Event:PublishingBulkSize</key>
<value id="37" type="java.lang.String">500</value>
</entry>
<entry>
<key id="38" type="java.lang.String">Event:PublishingPriorityNumber</key>
<value id="39" type="java.lang.String">0</value>
</entry>
<entry>
<key id="40" type="java.lang.String">Event:RestCall</key>
<value id="41" type="java.lang.String">false</value>
</entry>
<entry>
<key id="42" type="java.lang.String">Event:Senders Email</key>
<value id="43" type="java.lang.String">no-reply@thegoldensource.com</value>
</entry>
<entry>
<key id="44" type="java.lang.String">Event:Separator</key>
<value id="45" type="java.lang.String">COMMA</value>
</entry>
<entry>
<key id="46" type="java.lang.String">Event:StorePublishedMessageToPBDP</key>
<value id="47" type="java.lang.String">false</value>
</entry>
<entry>
<key id="48" type="java.lang.String">Event:SubscriptionName</key>
<value id="49" type="java.lang.String">FLAT_COUNTRY_PRIMARY_PUBLISH</value>
</entry>
<entry>
<key id="50" type="java.lang.String">Event:UICall</key>
<value id="51" type="java.lang.String">false</value>
</entry>
<entry>
<key id="52" type="java.lang.String">Event:XMLCoveringHeaderTag</key>
<value id="53" type="java.lang.String">ROOT</value>
</entry>
<entry>
<key id="54" type="java.lang.String">Event:addCorrelationHeader</key>
<value id="55" type="java.lang.String">true</value>
</entry>
<entry>
<key id="56" type="java.lang.String">Event:addCoveringXMLHeader</key>
<value id="57" type="java.lang.String">true</value>
</entry>
<entry>
<key id="58" type="java.lang.String">Event:addFirstDataGroupNameJSON</key>
<value id="59" type="java.lang.String">true</value>
</entry>
<entry>
<key id="60" type="java.lang.String">Event:addGSONameJSONRoot</key>
<value id="61" type="java.lang.String">true</value>
</entry>
<entry>
<key id="62" type="java.lang.String">Event:appendEOFLine</key>
<value id="63" type="java.lang.String">true</value>
</entry>
<entry>
<key id="64" type="java.lang.String">Event:bulkSize</key>
<value id="65" type="java.lang.String">0</value>
</entry>
<entry>
<key id="66" type="java.lang.String">Event:checkPublishingTimeAOIL</key>
<value id="67" type="java.lang.String">false</value>
</entry>
<entry>
<key id="68" type="java.lang.String">Event:dataPath</key>
<value id="69" type="java.lang.String">FullInstrument/CountrysPrimaryExchange</value>
</entry>
<entry>
<key id="70" type="java.lang.String">Event:enableValueTagJSON</key>
<value id="71" type="java.lang.String">false</value>
</entry>
<entry>
<key id="72" type="java.lang.String">Event:entityMode</key>
<value id="73" type="java.lang.String">BUSINESS_ENTITY</value>
</entry>
<entry>
<key id="74" type="java.lang.String">Event:headerFieldProperty</key>
<value id="75" type="java.lang.String">LABEL</value>
</entry>
<entry>
<key id="76" type="java.lang.String">Event:inlineAOIProcessing</key>
<value id="77" type="java.lang.String">false</value>
</entry>
<entry>
<key id="78" type="java.lang.String">Event:persistDQRulesExceptionsInTable</key>
<value id="79" type="java.lang.String">false</value>
</entry>
<entry>
<key id="80" type="java.lang.String">Event:publishRelationName</key>
<value id="81" type="java.lang.String">true</value>
</entry>
<entry>
<key id="82" type="java.lang.String">Event:publishingMode</key>
<value id="83" type="java.lang.String">BATCH</value>
</entry>
<entry>
<key id="84" type="java.lang.String">Event:startRecordSequence</key>
<value id="85" type="java.lang.String">0</value>
</entry>
<entry>
<key id="86" type="java.lang.String">EventName</key>
<value id="87" type="java.lang.String">P72_EVT_BulkSubscriptionPublishing</value>
</entry>
</jobDataMap>
<jobGroup id="88">Events</jobGroup>
<jobName id="89">OnMessagePublishing</jobName>
<misfireInstruction>1</misfireInstruction>
<name id="90">Schedule_FlatCountryPrimary</name>
<nextFireTime id="91">2023-01-01T00:00:00.000-0500</nextFireTime>
<priority>5</priority>
<startTime id="92">2022-05-18T22:47:30.000-0400</startTime>
<timeZone id="93">America/New_York</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
</goldensource-package>

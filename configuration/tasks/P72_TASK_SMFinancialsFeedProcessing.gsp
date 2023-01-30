<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.22">
<package-comment/>
<businessobject displayString="GenericEvent" type="org.quartz.impl.JobDetailImpl">
<org.quartz.impl.JobDetailImpl id="0">
<group id="1">Events</group>
<jobClass>com.j2fe.scheduling.jobs.ExecuteEventJob</jobClass>
<jobDataMap id="2"/>
<name id="3">GenericEvent</name>
</org.quartz.impl.JobDetailImpl>
</businessobject>
<businessobject displayString="P72_TASK_SMFinancialsFeedProcessing" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 0 0 1 1 ?</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:BusinessFeed</key>
<value id="5" type="java.lang.String">SMChanges</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:DoneDirectory</key>
<value id="7" type="java.lang.String">/devgs/InputFiles/SwapsMonitor/done</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:LocalInputDirectory</key>
<value id="9" type="java.lang.String">/devgs/InputFiles/SwapsMonitor</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:ReDownloadFiles</key>
<value id="11" type="java.lang.String">false</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:ReProcessProcessedFiles</key>
<value id="13" type="java.lang.String">false</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:SFTPDirectory</key>
<value id="15" type="java.lang.String">/</value>
</entry>
<entry>
<key id="16" type="java.lang.String">Event:SortOrder</key>
<value id="17" type="java.lang.String">TIME</value>
</entry>
<entry>
<key id="18" type="java.lang.String">Event:VendorDefinition</key>
<value id="19" type="java.lang.String">SMONITOR</value>
</entry>
<entry>
<key id="20" type="java.lang.String">Event:ZipFIlePattern</key>
<value id="21" type="java.lang.String">P72GS_*.ZIP</value>
</entry>
<entry>
<key id="22" type="java.lang.String">EventName</key>
<value id="23" type="java.lang.String">P72_EVT_SMFinancialsFeedProcessing</value>
</entry>
</jobDataMap>
<jobGroup id="24">Events</jobGroup>
<jobName id="25">GenericEvent</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="26">P72_TASK_SMFinancialsFeedProcessing</name>
<nextFireTime id="27">2023-01-01T10:30:00.000+0530</nextFireTime>
<priority>5</priority>
<startTime id="28">2022-04-28T19:39:56.000+0530</startTime>
<timeZone id="29">America/Toronto</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
</goldensource-package>

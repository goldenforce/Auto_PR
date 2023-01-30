<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.15">
<package-comment/>
<businessobject displayString="GenericEvent" type="org.quartz.impl.JobDetailImpl">
<org.quartz.impl.JobDetailImpl id="0">
<group id="1">Events</group>
<jobClass>com.j2fe.scheduling.jobs.ExecuteEventJob</jobClass>
<jobDataMap id="2"/>
<name id="3">GenericEvent</name>
</org.quartz.impl.JobDetailImpl>
</businessobject>
<businessobject displayString="P72_TASK_IBESFeedProcessing" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 0,15,30,45 * * * ?</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:BusinessFeed</key>
<value id="5" type="java.lang.String">IBES</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:DoneDirectory</key>
<value id="7" type="java.lang.String">/devgs/InputFiles/IBES/done</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:LocalInputDirectory</key>
<value id="9" type="java.lang.String">/devgs/InputFiles/IBES</value>
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
<value id="15" type="java.lang.String">/QFS</value>
</entry>
<entry>
<key id="16" type="java.lang.String">Event:SortOrder</key>
<value id="17" type="java.lang.String">TIME</value>
</entry>
<entry>
<key id="18" type="java.lang.String">Event:VendorDefinition</key>
<value id="19" type="java.lang.String">P72_Custom</value>
</entry>
<entry>
<key id="20" type="java.lang.String">EventName</key>
<value id="21" type="java.lang.String">P72_EVT_IBESFeedProcessing</value>
</entry>
</jobDataMap>
<jobGroup id="22">Events</jobGroup>
<jobName id="23">GenericEvent</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="24">P72_TASK_IBESFeedProcessing</name>
<nextFireTime id="25">2021-12-24T11:30:00.000+0530</nextFireTime>
<previousFireTime id="26">2021-12-24T11:15:00.000+0530</previousFireTime>
<priority>5</priority>
<startTime id="27">2021-12-22T14:54:52.000+0530</startTime>
<timeZone id="28">America/Toronto</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
</goldensource-package>

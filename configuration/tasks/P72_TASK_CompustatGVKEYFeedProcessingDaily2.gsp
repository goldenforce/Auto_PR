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
<businessobject displayString="P72_TASK_CompustatGVKEYFeedProcessingDaily2" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 50 23 * * ?</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:BusinessFeed</key>
<value id="5" type="java.lang.String">Compustat_Gvkey</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:DoneDirectory</key>
<value id="7" type="java.lang.String">/devgs/InputFiles/CompuStat/done</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:LocalInputDirectory</key>
<value id="9" type="java.lang.String">/devgs/InputFiles/CompuStat</value>
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
<value id="15" type="java.lang.String">/Products/SEDOLGvkeySpan</value>
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
<key id="20" type="java.lang.String">Event:ZipFIlePattern</key>
<value id="21" type="java.lang.String">SEDOLGvkeySpanChange</value>
</entry>
<entry>
<key id="22" type="java.lang.String">EventName</key>
<value id="23" type="java.lang.String">P72_EVT_CompustatFeedProcessingDaily</value>
</entry>
</jobDataMap>
<jobGroup id="24">Events</jobGroup>
<jobName id="25">GenericEvent</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="26">P72_TASK_CompustatGVKEYFeedProcessingDaily2</name>
<nextFireTime id="27">2021-12-25T10:20:00.000+0530</nextFireTime>
<previousFireTime id="28">2021-12-24T10:20:00.000+0530</previousFireTime>
<priority>5</priority>
<startTime id="29">2021-12-22T14:55:41.000+0530</startTime>
<timeZone id="30">America/Toronto</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
</goldensource-package>

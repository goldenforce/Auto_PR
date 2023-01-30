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
<businessobject displayString="P72_TASK_BloombergBackofficeDelta" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 0 0 1 1 ?</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:Directory</key>
<value id="5" type="java.lang.String">/</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:FileLoadEvent</key>
<value id="7" type="java.lang.String">StandardFileLoad</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:FilePatterns</key>
<value id="9" type="java.lang.String">"credit_risk.dif.gz.enc.20*","equity_euro.dif.gz.enc.20*","equity_asia1.dif.gz.enc.20*","equity_asia2.dif.gz.enc.20*","equity_lamr.dif.gz.enc.20*","equity_namr.dif.gz.enc.20*","pfd_euro.dif.gz.enc.20*","pfd_asia.dif.gz.enc.20*","pfd_lamr.dif.gz.enc.20*","pfd_namr.dif.gz.enc.20*","equity_open_*.dif.gz.enc.20*","equity_*_cins.dif.gz.enc.20*","equity_gics.dif.gz.enc.20*","equity_warrant_*.dif.gz.enc.20*"</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:IncludeFilePatternNBusinessFeed</key>
<value id="11" type="java.lang.String">false</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:MessageBulkSize</key>
<value id="13" type="java.lang.String">500</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:MessageProcessingEvent</key>
<value id="15" type="java.lang.String">ProcessFeedMessage</value>
</entry>
<entry>
<key id="16" type="java.lang.String">Event:NrOfFilesParallel</key>
<value id="17" type="java.lang.String">2</value>
</entry>
<entry>
<key id="18" type="java.lang.String">Event:OutputDirectory</key>
<value id="19" type="java.lang.String">/devgs/InputFiles/BB/backoffice/Archive</value>
</entry>
<entry>
<key id="20" type="java.lang.String">Event:ParallelBranches</key>
<value id="21" type="java.lang.String">2</value>
</entry>
<entry>
<key id="22" type="java.lang.String">Event:ReProcessProcessedFiles</key>
<value id="23" type="java.lang.String">false</value>
</entry>
<entry>
<key id="24" type="java.lang.String">Event:RecursiveSearch</key>
<value id="25" type="java.lang.String">false</value>
</entry>
<entry>
<key id="26" type="java.lang.String">Event:SortAscending</key>
<value id="27" type="java.lang.String">true</value>
</entry>
<entry>
<key id="28" type="java.lang.String">Event:SortOrder</key>
<value id="29" type="java.lang.String">NATURAL</value>
</entry>
<entry>
<key id="30" type="java.lang.String">Event:SuccessAction</key>
<value id="31" type="java.lang.String">MOVE</value>
</entry>
<entry>
<key id="32" type="java.lang.String">Event:VendorDefinition</key>
<value id="33" type="java.lang.String">BB</value>
</entry>
<entry>
<key id="34" type="java.lang.String">Event:serverTimestampChanged</key>
<value id="35" type="java.lang.String">false</value>
</entry>
<entry>
<key id="36" type="java.lang.String">EventName</key>
<value id="37" type="java.lang.String">P72_EVT_BloombergBackofficeDaily</value>
</entry>
</jobDataMap>
<jobGroup id="38">Events</jobGroup>
<jobName id="39">GenericEvent</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="40">P72_TASK_BloombergBackofficeDelta</name>
<nextFireTime id="41">2023-01-01T10:30:00.000+0530</nextFireTime>
<priority>5</priority>
<startTime id="42">2022-04-08T20:24:46.000+0530</startTime>
<timeZone id="43">America/Toronto</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
</goldensource-package>

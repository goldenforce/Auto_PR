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
<businessobject displayString="P72_TASK_RefinitivEquityInit" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 15 0 ? * 7</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:BulkSize</key>
<value id="5" type="java.lang.String">500</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:BusinessFeed</key>
<value id="7" type="java.lang.String">Refinitiv_DataScope_Plus_EQ_Descriptive</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:Configuration</key>
<value id="9" type="java.lang.String">db://resource/xml/feeds/reuters/dspconfiguration.xml</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:DownloadDirectory</key>
<value id="11" type="java.lang.String">/devgs/InputFiles/Reuters/init</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:EndDate</key>
<value id="13" type="java.lang.String">2022-04-02 00:00:00.00</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:Group</key>
<value id="15" type="java.lang.String">EQDescInit</value>
</entry>
<entry>
<key id="16" type="java.lang.String">Event:Groups</key>
<value id="17" type="java.lang.String">Entity</value>
</entry>
<entry>
<key id="18" type="java.lang.String">Event:IncludeFilePattern</key>
<value id="19" type="java.lang.String">false</value>
</entry>
<entry>
<key id="20" type="java.lang.String">Event:IncludeFilePatternNBusinessFeed</key>
<value id="21" type="java.lang.String">false</value>
</entry>
<entry>
<key id="22" type="java.lang.String">Event:IsDeltaLoad</key>
<value id="23" type="java.lang.String">false</value>
</entry>
<entry>
<key id="24" type="java.lang.String">Event:LoadFiles</key>
<value id="25" type="java.lang.String">true</value>
</entry>
<entry>
<key id="26" type="java.lang.String">Event:MessageBulkSize</key>
<value id="27" type="java.lang.String">500</value>
</entry>
<entry>
<key id="28" type="java.lang.String">Event:MoveDirectory</key>
<value id="29" type="java.lang.String">/devgs/InputFiles/Reuters/done</value>
</entry>
<entry>
<key id="30" type="java.lang.String">Event:NrOfFilesInParallel</key>
<value id="31" type="java.lang.String">2</value>
</entry>
<entry>
<key id="32" type="java.lang.String">Event:ObservationPeriod</key>
<value id="33" type="java.lang.String">0</value>
</entry>
<entry>
<key id="34" type="java.lang.String">Event:ParallelBranches</key>
<value id="35" type="java.lang.String">2</value>
</entry>
<entry>
<key id="36" type="java.lang.String">Event:ReProcessProcessedFiles</key>
<value id="37" type="java.lang.String">false</value>
</entry>
<entry>
<key id="38" type="java.lang.String">Event:Recursive</key>
<value id="39" type="java.lang.String">true</value>
</entry>
<entry>
<key id="40" type="java.lang.String">Event:SortAscending</key>
<value id="41" type="java.lang.String">true</value>
</entry>
<entry>
<key id="42" type="java.lang.String">Event:SortOrder</key>
<value id="43" type="java.lang.String">NATURAL_ALPHANUMERIC</value>
</entry>
<entry>
<key id="44" type="java.lang.String">Event:StartDate</key>
<value id="45" type="java.lang.String">2022-04-02 00:00:00.00</value>
</entry>
<entry>
<key id="46" type="java.lang.String">Event:SuccessAction</key>
<value id="47" type="java.lang.String">MOVE</value>
</entry>
<entry>
<key id="48" type="java.lang.String">Event:VendorDirectory</key>
<value id="49" type="java.lang.String">/Bulk_Reports</value>
</entry>
<entry>
<key id="50" type="java.lang.String">EventName</key>
<value id="51" type="java.lang.String">P72_EVT_DSPConfig</value>
</entry>
</jobDataMap>
<jobGroup id="52">Events</jobGroup>
<jobName id="53">GenericEvent</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="54">P72_TASK_RefinitivEquityInit</name>
<nextFireTime id="55">2022-04-09T05:45:00.000+0530</nextFireTime>
<previousFireTime id="56">2021-11-10T06:00:00.000+0530</previousFireTime>
<priority>5</priority>
<startTime id="57">2022-04-08T13:19:35.000+0530</startTime>
<timeZone id="58">Etc/UTC</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
</goldensource-package>

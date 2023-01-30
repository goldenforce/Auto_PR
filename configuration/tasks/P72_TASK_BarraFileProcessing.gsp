<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.19">
<package-comment/>
<businessobject displayString="GenericEvent" type="org.quartz.impl.JobDetailImpl">
<org.quartz.impl.JobDetailImpl id="0">
<group id="1">Events</group>
<jobClass>com.j2fe.scheduling.jobs.ExecuteEventJob</jobClass>
<jobDataMap id="2"/>
<name id="3">GenericEvent</name>
</org.quartz.impl.JobDetailImpl>
</businessobject>
<businessobject displayString="P72_TASK_BarraFileProcessing" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 30 13-8 * * ?</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:BusinessFeed</key>
<value id="5" type="java.lang.String">P72_Custom</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:DoneDirectory</key>
<value id="7" type="java.lang.String">/devgs/InputFiles/Barra/done</value>
</entry>
<entry>
<key id="8" type="java.lang.String">Event:FileHeader</key>
<value id="9" type="java.lang.String">Barraid|SEDOL|CINS|CUSIP|ISIN|StartDate|EndDate</value>
</entry>
<entry>
<key id="10" type="java.lang.String">Event:LocalFileDirectory</key>
<value id="11" type="java.lang.String">/devgs/InputFiles/Barra/</value>
</entry>
<entry>
<key id="12" type="java.lang.String">Event:NoOfPreProcessThreads</key>
<value id="13" type="java.lang.String">10</value>
</entry>
<entry>
<key id="14" type="java.lang.String">Event:PreProcessMessageType</key>
<value id="15" type="java.lang.String">PreProcessBarraId</value>
</entry>
<entry>
<key id="16" type="java.lang.String">Event:PreProcessedDirectory</key>
<value id="17" type="java.lang.String">/devgs/InputFiles/Barra/preprocessed</value>
</entry>
<entry>
<key id="18" type="java.lang.String">Event:PreProcessedFileName</key>
<value id="19" type="java.lang.String">BarraPreProcessed</value>
</entry>
<entry>
<key id="20" type="java.lang.String">Event:PreProcesseorBusinessFeed</key>
<value id="21" type="java.lang.String">P72_Custom_PreProcess</value>
</entry>
<entry>
<key id="22" type="java.lang.String">Event:PreProcessorBulkSize</key>
<value id="23" type="java.lang.String">1000</value>
</entry>
<entry>
<key id="24" type="java.lang.String">Event:ReDownloadFiles</key>
<value id="25" type="java.lang.String">false</value>
</entry>
<entry>
<key id="26" type="java.lang.String">Event:ReDownloadFilesb</key>
<value id="27" type="java.lang.String">false</value>
</entry>
<entry>
<key id="28" type="java.lang.String">Event:ReProcessProcessedFiles</key>
<value id="29" type="java.lang.String">false</value>
</entry>
<entry>
<key id="30" type="java.lang.String">Event:SequenceQuery</key>
<value id="31" type="java.lang.String">select distinct barra_id barra_id from ft_t_bar1</value>
</entry>
<entry>
<key id="32" type="java.lang.String">Event:SortOrder</key>
<value id="33" type="java.lang.String">TIME</value>
</entry>
<entry>
<key id="34" type="java.lang.String">Event:SuccessAction</key>
<value id="35" type="java.lang.String">MOVE</value>
</entry>
<entry>
<key id="36" type="java.lang.String">Event:VendorDefinition</key>
<value id="37" type="java.lang.String">P72_Custom</value>
</entry>
<entry>
<key id="38" type="java.lang.String">Event:ViewName</key>
<value id="39" type="java.lang.String">ft_v_p72_barra</value>
</entry>
<entry>
<key id="40" type="java.lang.String">Event:ZIPDirectory</key>
<value id="41" type="java.lang.String">/devgs/InputFiles/Barra/zipdir</value>
</entry>
<entry>
<key id="42" type="java.lang.String">EventName</key>
<value id="43" type="java.lang.String">P72_EVT_BarraFileProcessing</value>
</entry>
</jobDataMap>
<jobGroup id="44">Events</jobGroup>
<jobName id="45">GenericEvent</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="46">P72_TASK_BarraFileProcessing</name>
<nextFireTime id="47">2022-03-15T23:00:00.000+0530</nextFireTime>
<previousFireTime id="48">2022-01-14T17:00:00.000+0530</previousFireTime>
<priority>5</priority>
<startTime id="49">2022-03-15T18:02:31.000+0530</startTime>
<timeZone id="50">America/Toronto</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
</goldensource-package>

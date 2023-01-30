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
<businessobject displayString="P72_TASK_BulkResubmit" type="org.quartz.impl.triggers.CronTriggerImpl">
<org.quartz.impl.triggers.CronTriggerImpl id="0">
<cronExpression id="1">0 0 0-23 * * ?</cronExpression>
<group id="2">Events</group>
<jobDataMap id="3">
<entry>
<key id="4" type="java.lang.String">Event:ResubmitSql</key>
<value id="5" type="java.lang.String">select n.ntel_oid from ft_t_trid t, ft_t_ntel n where t.input_msg_typ = 'RFTDSP_Equities' and t.crrnt_severity_cde  in ('40','50')  and t.trn_id=n.last_chg_trn_id and n.notfcn_id ='640' and n.notfcn_stat_typ ='OPEN'</value>
</entry>
<entry>
<key id="6" type="java.lang.String">Event:ThreadsInParallel</key>
<value id="7" type="java.lang.String">5</value>
</entry>
<entry>
<key id="8" type="java.lang.String">EventName</key>
<value id="9" type="java.lang.String">P72_EVT_BulkResubmit</value>
</entry>
</jobDataMap>
<jobGroup id="10">Events</jobGroup>
<jobName id="11">GenericEvent</jobName>
<misfireInstruction>2</misfireInstruction>
<name id="12">P72_TASK_BulkResubmit</name>
<nextFireTime id="13">2021-12-06T19:30:00.000+0530</nextFireTime>
<priority>5</priority>
<startTime id="14">2021-12-06T19:10:33.000+0530</startTime>
<timeZone id="15">America/Toronto</timeZone>
</org.quartz.impl.triggers.CronTriggerImpl>
</businessobject>
</goldensource-package>

<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.17">
<package-comment/>
<businessobject displayString="2 - Initial" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">Initial</comment>
<description id="2"/>
<endNode id="3">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="4">Stop</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="5">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="6" type="java.util.HashSet">
<item id="7" type="com.j2fe.workflow.definition.Transition">
<name id="8">goto-next</name>
<source id="9">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="10">Close Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.CloseJob</nodeHandler>
<nodeHandlerClass id="11">com.j2fe.streetlamp.activities.CloseJob</nodeHandlerClass>
<parameters id="12" type="java.util.HashSet">
<item id="13" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="14">jobId</name>
<stringValue id="15">JobID</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="16" type="java.util.HashSet">
<item id="17" type="com.j2fe.workflow.definition.Transition">
<name id="18">goto-next</name>
<source id="19">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="20">Consolidate Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.ConsolidateJob</nodeHandler>
<nodeHandlerClass id="21">com.j2fe.streetlamp.activities.ConsolidateJob</nodeHandlerClass>
<parameters id="22" type="java.util.HashSet">
<item id="23" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="24">jobId</name>
<stringValue id="25">JobID</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="26" type="java.util.HashSet">
<item id="27" type="com.j2fe.workflow.definition.Transition">
<name id="28">goto-next</name>
<source id="29">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="30">End Date ISGP</name>
<nodeHandler>com.j2fe.general.activities.database.DBStatement</nodeHandler>
<nodeHandlerClass id="31">com.j2fe.general.activities.database.DBStatement</nodeHandlerClass>
<parameters id="32" type="java.util.HashSet">
<item id="33" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="34">database</name>
<stringValue id="35">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="36" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="37">querySQL</name>
<stringValue id="38">EndDateQuery</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="39" type="java.util.HashSet">
<item id="40" type="com.j2fe.workflow.definition.Transition">
<name id="41">goto-next</name>
<source id="42">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="43">Create Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="44">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="45" type="java.util.HashSet">
<item id="46" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="47">configInfo</name>
<stringValue id="48">P72_EndDateISGP</stringValue>
<type>CONSTANT</type>
</item>
<item id="49" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="50">jobId</name>
<stringValue id="51">JobID</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="52" type="java.util.HashSet">
<item id="53" type="com.j2fe.workflow.definition.Transition">
<name id="54">goto-next</name>
<source id="55">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="56">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="57">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="58" type="java.util.HashSet"/>
<targets id="59" type="java.util.HashSet">
<item idref="53" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="42"/>
</item>
</sources>
<targets id="60" type="java.util.HashSet">
<item idref="40" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="29"/>
</item>
</sources>
<targets id="61" type="java.util.HashSet">
<item idref="27" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="19"/>
</item>
</sources>
<targets id="62" type="java.util.HashSet">
<item idref="17" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="9"/>
</item>
</sources>
<targets id="63" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3"/>
</item>
</sources>
<targets id="64" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="65">Custom/Miscellaneous</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="66">user1</lastChangeUser>
<lastUpdate id="67">2022-01-21T12:51:32.000+0530</lastUpdate>
<name id="68">P72_WF_EndDateISGP</name>
<optimize>true</optimize>
<parameter id="69" type="java.util.HashMap">
<entry>
<key id="70" type="java.lang.String">EndDateQuery</key>
<value id="71" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="72">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
</parameter>
<permissions id="73" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="55"/>
<status>RELEASED</status>
<variables id="74" type="java.util.HashMap">
<entry>
<key id="75" type="java.lang.String">EndDateQuery</key>
<value id="76" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="77">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="78" type="java.lang.String">update ft_t_isgp set end_tms=sysdate(), last_chg_tms = sysdate(), last_chg_usr_id ='P72:AUTO:ENDDATE' where isgp_oid in(select isgp_oid from ft_t_isgp where date_trunc('day', start_tms)!=date_trunc('day', sysdate())) </value>
</value>
</entry>
<entry>
<key id="79" type="java.lang.String">JobID</key>
<value id="80" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="81">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
</variables>
<version>2</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>

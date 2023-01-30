<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.19">
<package-comment/>
<businessobject displayString="4 - Initial" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">Initial</comment>
<endNode id="2">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="3"/>
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
<description idref="3"/>
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
</item>
</parameters>
<sources id="16" type="java.util.HashSet">
<item id="17" type="com.j2fe.workflow.definition.Transition">
<name id="18">goto-next</name>
<source id="19">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="20">Call Subworkflow</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="21">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="22" type="java.util.HashSet">
<item id="23" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="24">["IsWorkstationMessage"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="25">input["IsWorkstationMessage"]</name>
<objectValue id="26" type="java.lang.Boolean">false</objectValue>
<type>CONSTANT</type>
</item>
<item id="27" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="28">["Message"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="29">input["Message"]</name>
<stringValue id="30">JMSTextMessage</stringValue>
<type>VARIABLE</type>
</item>
<item id="31" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="32">["MessageType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="33">input["MessageType"]</name>
<stringValue id="34">MessageType</stringValue>
<type>VARIABLE</type>
</item>
<item id="35" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="36">["TransactionId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="37">input["TransactionId"]</name>
<stringValue id="38">TransactionID</stringValue>
<type>VARIABLE</type>
</item>
<item id="39" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="40">name</name>
<stringValue id="41">Basic VDDB Message Processing</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="42" type="java.util.HashSet">
<item id="43" type="com.j2fe.workflow.definition.Transition">
<name id="44">goto-next</name>
<source id="45">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="46">Create Transaction</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateTransaction</nodeHandler>
<nodeHandlerClass id="47">com.j2fe.streetlamp.activities.CreateTransaction</nodeHandlerClass>
<parameters id="48" type="java.util.HashSet">
<item id="49" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="50">jobId</name>
<stringValue id="51">JobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="52" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="53">messageType</name>
<stringValue id="54">MessageType</stringValue>
<type>VARIABLE</type>
</item>
<item id="55" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="56">transactionId</name>
<stringValue id="57">TransactionID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="58" type="java.util.HashSet">
<item id="59" type="com.j2fe.workflow.definition.Transition">
<name id="60">goto-next</name>
<source id="61">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="62">Create Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="63">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="64" type="java.util.HashSet">
<item id="65" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="66">configInfo</name>
<stringValue id="67">KafkaPositionIDProcessing</stringValue>
<type>CONSTANT</type>
</item>
<item id="68" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="69">jobId</name>
<stringValue id="70">JobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="71" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="72">messageType</name>
<stringValue id="73">MessageType</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="74" type="java.util.HashSet">
<item id="75" type="com.j2fe.workflow.definition.Transition">
<name id="76">goto-next</name>
<source id="77">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="78">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="79">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="80" type="java.util.HashSet"/>
<targets id="81" type="java.util.HashSet">
<item idref="75" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="61"/>
</item>
</sources>
<targets id="82" type="java.util.HashSet">
<item idref="59" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="45"/>
</item>
</sources>
<targets id="83" type="java.util.HashSet">
<item idref="43" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="19"/>
</item>
</sources>
<targets id="84" type="java.util.HashSet">
<item idref="17" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="9"/>
</item>
</sources>
<targets id="85" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="2"/>
</item>
</sources>
<targets id="86" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="87">Custom/Kafka</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="88">user1</lastChangeUser>
<lastUpdate id="89">2022-03-22T14:23:28.000+0530</lastUpdate>
<name id="90">P72_WF_KafkaInboundPositionID</name>
<optimize>true</optimize>
<parameter id="91" type="java.util.HashMap">
<entry>
<key id="92" type="java.lang.String">JMSTextMessage</key>
<value id="93" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="94">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="95" type="java.lang.String">MessageType</key>
<value id="96" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="97">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="3"/>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
</parameter>
<permissions id="98" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="77"/>
<status>RELEASED</status>
<variables id="99" type="java.util.HashMap">
<entry>
<key id="100" type="java.lang.String">JMSTextMessage</key>
<value id="101" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="102">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="103" type="java.lang.String">MessageType</key>
<value id="104" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="105">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="3"/>
<persistent>false</persistent>
<value id="106" type="java.lang.String">PositionId</value>
</value>
</entry>
</variables>
<version>4</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>

<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.22">
<package-comment/>
<businessobject displayString="5 - Persist" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">Persist</comment>
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
<name id="20">Consolidate Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.ConsolidateJob</nodeHandler>
<nodeHandlerClass id="21">com.j2fe.streetlamp.activities.ConsolidateJob</nodeHandlerClass>
<parameters id="22" type="java.util.HashSet">
<item id="23" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="24">jobId</name>
<stringValue id="25">JobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="26" type="java.util.HashSet">
<item id="27" type="com.j2fe.workflow.definition.Transition">
<name id="28">goto-next</name>
<source id="29">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>true</directJoin>
<name id="30">Synchronize#2</name>
<nodeHandler>com.j2fe.workflow.handler.impl.StandardAndJoinHandler</nodeHandler>
<nodeHandlerClass id="31">com.j2fe.workflow.handler.impl.StandardAndJoinHandler</nodeHandlerClass>
<sources id="32" type="java.util.HashSet">
<item id="33" type="com.j2fe.workflow.definition.Transition">
<name id="34">goto-next</name>
<source id="35">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>true</directJoin>
<name id="36">Synchronize</name>
<nodeHandler>com.j2fe.workflow.handler.impl.StandardAndJoinHandler</nodeHandler>
<nodeHandlerClass id="37">com.j2fe.workflow.handler.impl.StandardAndJoinHandler</nodeHandlerClass>
<sources id="38" type="java.util.HashSet">
<item id="39" type="com.j2fe.workflow.definition.Transition">
<name id="40">goto-next</name>
<source id="41">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="42">NOP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="43">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="44" type="java.util.HashSet">
<item id="45" type="com.j2fe.workflow.definition.Transition">
<name id="46">goto-next</name>
<source id="47">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="48">Call Subworkflow</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="49">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="50" type="java.util.HashSet">
<item id="51" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="52">["Message"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="53">input["Message"]</name>
<stringValue id="54">InputMessage</stringValue>
<type>VARIABLE</type>
</item>
<item id="55" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="56">["MessageType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="57">input["MessageType"]</name>
<stringValue id="58">MessageType</stringValue>
<type>VARIABLE</type>
</item>
<item id="59" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="60">["TransactionId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="61">input["TransactionId"]</name>
<stringValue id="62">TransactionID</stringValue>
<type>VARIABLE</type>
</item>
<item id="63" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="64">name</name>
<stringValue id="65">Basic Message Processing</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="66" type="java.util.HashSet">
<item id="67" type="com.j2fe.workflow.definition.Transition">
<name id="68">goto-next</name>
<source id="69">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="70">Create Transaction</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateTransaction</nodeHandler>
<nodeHandlerClass id="71">com.j2fe.streetlamp.activities.CreateTransaction</nodeHandlerClass>
<parameters id="72" type="java.util.HashSet">
<item id="73" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="74">jobId</name>
<stringValue id="75">JobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="76" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="77">messageType</name>
<stringValue id="78">MessageType</stringValue>
<type>VARIABLE</type>
</item>
<item id="79" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="80">transactionId</name>
<stringValue id="81">TransactionID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="82" type="java.util.HashSet">
<item id="83" type="com.j2fe.workflow.definition.Transition">
<name id="84">goto-next</name>
<source id="85">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>true</directJoin>
<name id="86">For Each Split</name>
<nodeHandler>com.j2fe.workflow.handler.impl.GenericSplit</nodeHandler>
<nodeHandlerClass id="87">com.j2fe.workflow.handler.impl.GenericSplit</nodeHandlerClass>
<parameters id="88" type="java.util.HashSet">
<item id="89" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="90">input</name>
<stringValue id="91">InputMessageArrayBulks</stringValue>
<type>VARIABLE</type>
</item>
<item id="92" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="93">output</name>
<stringValue id="94">InputMessage</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<persistentVariables id="95" type="java.util.HashSet">
<item id="96" type="java.lang.String">InputMessage
1000</item>
</persistentVariables>
<sources id="97" type="java.util.HashSet">
<item id="98" type="com.j2fe.workflow.definition.Transition">
<name id="99">goto-next</name>
<source id="100">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>true</directJoin>
<name id="101">Bulk Items</name>
<nodeHandler>com.j2fe.general.activities.BulkItems</nodeHandler>
<nodeHandlerClass id="102">com.j2fe.general.activities.BulkItems</nodeHandlerClass>
<parameters id="103" type="java.util.HashSet">
<item id="104" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="105">bulk</name>
<stringValue id="106">BulkSize</stringValue>
<type>VARIABLE</type>
</item>
<item id="107" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="108">input</name>
<stringValue id="109">InputMessageArray</stringValue>
<type>VARIABLE</type>
</item>
<item id="110" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="111">output</name>
<stringValue id="112">InputMessageArrayBulks</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="113" type="java.util.HashSet">
<item id="114" type="com.j2fe.workflow.definition.Transition">
<name id="115">goto-next</name>
<source id="116">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="117">Create Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="118">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="119" type="java.util.HashSet">
<item id="120" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="121">configInfo</name>
<stringValue id="122">P72_AutoApproveCHAL</stringValue>
<type>CONSTANT</type>
</item>
<item id="123" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="124">jobId</name>
<stringValue id="125">JobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="126" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="127">messageType</name>
<stringValue id="128">MessageType</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="129" type="java.util.HashSet">
<item id="130" type="com.j2fe.workflow.definition.Transition">
<name id="131">rows-found</name>
<source id="132">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="133">Fetch Instrument and Create XML</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="134">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="135" type="java.util.HashSet">
<item id="136" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="137">database</name>
<stringValue id="138">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="139" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="140">firstColumnsResult</name>
<stringValue id="141">InputMessageArray</stringValue>
<type>VARIABLE</type>
</item>
<item id="142" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="143">querySQL</name>
<stringValue id="144">QuerySQL</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="145" type="java.util.HashSet">
<item id="146" type="com.j2fe.workflow.definition.Transition">
<name id="147">goto-next</name>
<source id="148">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="149">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="150">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="151" type="java.util.HashSet"/>
<targets id="152" type="java.util.HashSet">
<item idref="146" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="132"/>
</item>
</sources>
<targets id="153" type="java.util.HashSet">
<item id="154" type="com.j2fe.workflow.definition.Transition">
<name id="155">nothing-found</name>
<source idref="132"/>
<target idref="2"/>
</item>
<item idref="130" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="116"/>
</item>
</sources>
<targets id="156" type="java.util.HashSet">
<item idref="114" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="100"/>
</item>
</sources>
<targets id="157" type="java.util.HashSet">
<item idref="98" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ANDSPLIT</type>
</source>
<target idref="85"/>
</item>
</sources>
<targets id="158" type="java.util.HashSet">
<item idref="83" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ANDSPLIT</type>
</source>
<target idref="69"/>
</item>
</sources>
<targets id="159" type="java.util.HashSet">
<item idref="67" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="47"/>
</item>
</sources>
<targets id="160" type="java.util.HashSet">
<item idref="45" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="41"/>
</item>
</sources>
<targets id="161" type="java.util.HashSet">
<item idref="39" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="35"/>
</item>
</sources>
<targets id="162" type="java.util.HashSet">
<item idref="33" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ANDJOIN</type>
</source>
<target idref="29"/>
</item>
</sources>
<targets id="163" type="java.util.HashSet">
<item idref="27" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ANDJOIN</type>
</source>
<target idref="19"/>
</item>
</sources>
<targets id="164" type="java.util.HashSet">
<item idref="17" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="9"/>
</item>
</sources>
<targets id="165" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="2"/>
</item>
<item idref="154" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="166" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="167">Custom/Miscellaneous</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="168">user1</lastChangeUser>
<lastUpdate id="169">2022-05-31T16:40:23.000+0530</lastUpdate>
<name id="170">P72_WF_AutoApproveCHAL</name>
<optimize>true</optimize>
<parameter id="171" type="java.util.HashMap">
<entry>
<key id="172" type="java.lang.String">MessageType</key>
<value id="173" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="174">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="175" type="java.lang.String">QuerySQL</key>
<value id="176" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="177">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="3"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="178" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="148"/>
<status>RELEASED</status>
<variables id="179" type="java.util.HashMap">
<entry>
<key id="180" type="java.lang.String">BulkSize</key>
<value id="181" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="182">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<persistent>false</persistent>
<value id="183" type="java.lang.Integer">500</value>
</value>
</entry>
<entry>
<key id="184" type="java.lang.String">JobID</key>
<value id="185" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="186">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="187" type="java.lang.String">MessageType</key>
<value id="188" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="189">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
<value id="190" type="java.lang.String">REAL</value>
</value>
</entry>
<entry>
<key id="191" type="java.lang.String">QuerySQL</key>
<value id="192" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="193">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="3"/>
<persistent>false</persistent>
<value id="194" type="java.lang.String">select chal_msg from p72_chal_auto_approval</value>
</value>
</entry>
</variables>
<version>5</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>

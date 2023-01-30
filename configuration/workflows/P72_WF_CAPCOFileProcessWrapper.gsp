<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.22">
<package-comment/>
<businessobject displayString="13 - 06062022-EngineChange" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">06062022-EngineChange</comment>
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
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="10">End Date BNPT's</name>
<nodeHandler>com.j2fe.general.activities.database.DBStatement</nodeHandler>
<nodeHandlerClass id="11">com.j2fe.general.activities.database.DBStatement</nodeHandlerClass>
<parameters id="12" type="java.util.HashSet">
<item id="13" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="14">database</name>
<stringValue id="15">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="16" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="17">querySQL</name>
<stringValue id="18">update FT_T_BNPT set end_tms = date(sysdate()), last_chg_tms = sysdate(), last_chg_usr_id='P72:WF:CSTM' where BNPT_OID in (&#13;
select BNPT_OID  from FT_T_BNPT BNPT where bnpt.END_TMS is null and  EXISTS (select 1 from FT_T_BNCH BNCH where BNCH.bnch_oid = BNPT.bnch_oid and BNCH.bnchmrk_eff_dte &gt; BNPT.START_TMS ) )</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="19" type="java.util.HashSet">
<item id="20" type="com.j2fe.workflow.definition.Transition">
<name id="21">goto-next</name>
<source id="22">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="23">Close Job </name>
<nodeHandler>com.j2fe.streetlamp.activities.CloseJob</nodeHandler>
<nodeHandlerClass id="24">com.j2fe.streetlamp.activities.CloseJob</nodeHandlerClass>
<parameters id="25" type="java.util.HashSet">
<item id="26" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="27">jobId</name>
<stringValue id="28">ParentJobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="29" type="java.util.HashSet">
<item id="30" type="com.j2fe.workflow.definition.Transition">
<name id="31">goto-next</name>
<source id="32">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="33">Consolidate Job </name>
<nodeHandler>com.j2fe.streetlamp.activities.ConsolidateJob</nodeHandler>
<nodeHandlerClass id="34">com.j2fe.streetlamp.activities.ConsolidateJob</nodeHandlerClass>
<parameters id="35" type="java.util.HashSet">
<item id="36" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="37">jobId</name>
<stringValue id="38">ParentJobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="39" type="java.util.HashSet">
<item id="40" type="com.j2fe.workflow.definition.Transition">
<name id="41">goto-next</name>
<source id="42">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="43">Call Process Files in Directory</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="44">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="45" type="java.util.HashSet">
<item id="46" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="47">["BusinessFeed"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="48">input["BusinessFeed"]</name>
<stringValue id="49">BusinessFeed</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="50" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="51">["Directory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="52">input["Directory"]</name>
<stringValue id="53">LocalInputDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="54" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="55">["OutputDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="56">input["OutputDirectory"]</name>
<stringValue id="57">DoneDirectory</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="58" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="59">["ParentJobID"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="60">input["ParentJobID"]</name>
<stringValue id="61">ParentJobID</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="62" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="63">["PrimaryGCEngine"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="64">input["PrimaryGCEngine"]</name>
<stringValue id="65">engine/TPS-2</stringValue>
<type>CONSTANT</type>
</item>
<item id="66" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="67">["ReProcessProcessedFiles"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="68">input["ReProcessProcessedFiles"]</name>
<stringValue id="69">ReProcessProcessedFiles</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="70" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="71">["SortOrder"]@com/j2fe/feeds/activities/ListFiles$Sort@</UITypeHint>
<input>true</input>
<name id="72">input["SortOrder"]</name>
<stringValue id="73">SortOrder</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="74" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="75">["SuccessAction"]@com/j2fe/feeds/SuccessAction@</UITypeHint>
<input>true</input>
<name id="76">input["SuccessAction"]</name>
<stringValue id="77">MOVE</stringValue>
<type>CONSTANT</type>
</item>
<item id="78" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="79">["VendorDefinition"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="80">input["VendorDefinition"]</name>
<stringValue id="81">VendorDefinition</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="82" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="83">name</name>
<stringValue id="84">Process Files in Directory</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="85" type="java.util.HashSet">
<item id="86" type="com.j2fe.workflow.definition.Transition">
<name id="87">goto-next</name>
<source id="88">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="89">Create Job </name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="90">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="91" type="java.util.HashSet">
<item id="92" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="93">configInfo</name>
<stringValue id="94">CAPCO Feed Processing</stringValue>
<type>CONSTANT</type>
</item>
<item id="95" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="96">jobId</name>
<stringValue id="97">ParentJobID</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="98" type="java.util.HashSet">
<item id="99" type="com.j2fe.workflow.definition.Transition">
<name id="100">goto-next</name>
<source id="101">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="102">Download from SFTP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="103">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="104" type="java.util.HashSet">
<item id="105" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="106">["BulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="107">input["BulkSize"]</name>
<stringValue id="108">DownloadBulkSize</stringValue>
<type>VARIABLE</type>
</item>
<item id="109" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="110">["BusinessFeed"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="111">input["BusinessFeed"]</name>
<stringValue id="112">BusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="113" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="114">["Directory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="115">input["Directory"]</name>
<stringValue id="116">SFTPDirectory</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="117" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="118">["DownloadDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="119">input["DownloadDirectory"]</name>
<stringValue id="120">LocalInputDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="121" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="122">["FilePatterns"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="123">input["FilePatterns"]</name>
<stringValue id="124">FilePatterns</stringValue>
<type>VARIABLE</type>
</item>
<item id="125" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="126">["ReDownloadfiles"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="127">input["ReDownloadfiles"]</name>
<stringValue id="128">ReDownloadFiles</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="129" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="130">["SortAscending"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="131">input["SortAscending"]</name>
<stringValue id="132">SortAscending</stringValue>
<type>VARIABLE</type>
</item>
<item id="133" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="134">["SortOrder"]@com/j2fe/feeds/activities/ListFiles$Sort@</UITypeHint>
<input>true</input>
<name id="135">input["SortOrder"]</name>
<stringValue id="136">SortOrder</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="137" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="138">name</name>
<stringValue id="139">P72_WF_DownloadCapcoFiles</stringValue>
<type>CONSTANT</type>
</item>
<item id="140" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="141">output["DateDownloadDirectory"]</name>
<stringValue id="142">LocalInputDirectory</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="143" type="java.util.HashSet">
<item id="144" type="com.j2fe.workflow.definition.Transition">
<name id="145">goto-next</name>
<source id="146">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="147">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="148">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="149" type="java.util.HashSet"/>
<targets id="150" type="java.util.HashSet">
<item idref="144" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="101"/>
</item>
</sources>
<targets id="151" type="java.util.HashSet">
<item idref="99" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="88"/>
</item>
</sources>
<targets id="152" type="java.util.HashSet">
<item idref="86" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="42"/>
</item>
</sources>
<targets id="153" type="java.util.HashSet">
<item idref="40" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="32"/>
</item>
</sources>
<targets id="154" type="java.util.HashSet">
<item idref="30" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="22"/>
</item>
</sources>
<targets id="155" type="java.util.HashSet">
<item idref="20" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="9"/>
</item>
</sources>
<targets id="156" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3"/>
</item>
</sources>
<targets id="157" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="158">Custom/CapcoFeedProcessing</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="159">user1</lastChangeUser>
<lastUpdate id="160">2022-06-06T18:32:22.000+0530</lastUpdate>
<name id="161">P72_WF_CAPCOFileProcessWrapper</name>
<optimize>true</optimize>
<parameter id="162" type="java.util.HashMap">
<entry>
<key id="163" type="java.lang.String">BusinessFeed</key>
<value id="164" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="165">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="166" type="java.lang.String">DoneDirectory</key>
<value id="167" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="168">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="169" type="java.lang.String">DownloadBulkSize</key>
<value id="170" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="171">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="172" type="java.lang.String">FilePatterns</key>
<value id="173" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="174">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="175" type="java.lang.String">LocalInputDirectory</key>
<value id="176" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="177">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="178" type="java.lang.String">ReDownloadFiles</key>
<value id="179" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="180">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="181" type="java.lang.String">ReProcessProcessedFiles</key>
<value id="182" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="183">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="184" type="java.lang.String">SFTPDirectory</key>
<value id="185" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="186">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="187" type="java.lang.String">SortAscending</key>
<value id="188" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="189">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="190" type="java.lang.String">SortOrder</key>
<value id="191" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="192">com.j2fe.feeds.activities.ListFiles$Sort</className>
<clazz>com.j2fe.feeds.activities.ListFiles$Sort</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="193" type="java.lang.String">VendorDefinition</key>
<value id="194" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="195">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="196" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="146"/>
<status>RELEASED</status>
<variables id="197" type="java.util.HashMap">
<entry>
<key id="198" type="java.lang.String">BusinessFeed</key>
<value id="199" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="200">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="201" type="java.lang.String">CAPCO</value>
</value>
</entry>
<entry>
<key id="202" type="java.lang.String">DoneDirectory</key>
<value id="203" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="204">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="205" type="java.lang.String">/devgs/InputFiles/CAPCO/done</value>
</value>
</entry>
<entry>
<key id="206" type="java.lang.String">DownloadBulkSize</key>
<value id="207" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="208">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="209" type="java.lang.Integer">10</value>
</value>
</entry>
<entry>
<key id="210" type="java.lang.String">FilePatterns</key>
<value id="211" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="212">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="213" type="java.lang.String">ETF_</value>
</value>
</entry>
<entry>
<key id="214" type="java.lang.String">LocalInputDirectory</key>
<value id="215" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="216">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="217" type="java.lang.String">/devgs/InputFiles/CAPCO/input</value>
</value>
</entry>
<entry>
<key id="218" type="java.lang.String">ParentJobID</key>
<value id="219" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="220">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="221" type="java.lang.String">ReDownloadFiles</key>
<value id="222" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="223">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="224" type="java.lang.Boolean">false</value>
</value>
</entry>
<entry>
<key id="225" type="java.lang.String">ReProcessProcessedFiles</key>
<value id="226" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="227">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value idref="224"/>
</value>
</entry>
<entry>
<key id="228" type="java.lang.String">SFTPDirectory</key>
<value id="229" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="230">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="231" type="java.lang.String">/</value>
</value>
</entry>
<entry>
<key id="232" type="java.lang.String">SortAscending</key>
<value id="233" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="234">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="235" type="java.lang.Boolean">true</value>
</value>
</entry>
<entry>
<key id="236" type="java.lang.String">SortOrder</key>
<value id="237" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="238">com.j2fe.feeds.activities.ListFiles$Sort</className>
<clazz>com.j2fe.feeds.activities.ListFiles$Sort</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="239" type="com.j2fe.feeds.activities.ListFiles$Sort">TIME</value>
</value>
</entry>
<entry>
<key id="240" type="java.lang.String">VendorDefinition</key>
<value id="241" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="242">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="243" type="java.lang.String">CAPCO</value>
</value>
</entry>
</variables>
<version>13</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>

<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.22">
<package-comment/>
<businessobject displayString="4 - Final\" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">Final\</comment>
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
<name id="10">Close Job </name>
<nodeHandler>com.j2fe.streetlamp.activities.CloseJob</nodeHandler>
<nodeHandlerClass id="11">com.j2fe.streetlamp.activities.CloseJob</nodeHandlerClass>
<parameters id="12" type="java.util.HashSet">
<item id="13" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="14">jobId</name>
<stringValue id="15">ParentJobID</stringValue>
<type>VARIABLE</type>
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
<name id="20">Consolidate Job </name>
<nodeHandler>com.j2fe.streetlamp.activities.ConsolidateJob</nodeHandler>
<nodeHandlerClass id="21">com.j2fe.streetlamp.activities.ConsolidateJob</nodeHandlerClass>
<parameters id="22" type="java.util.HashSet">
<item id="23" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="24">jobId</name>
<stringValue id="25">ParentJobID</stringValue>
<type>VARIABLE</type>
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
<name id="30">Call Process Files in Directory</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="31">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="32" type="java.util.HashSet">
<item id="33" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="34">["BusinessFeed"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="35">input["BusinessFeed"]</name>
<stringValue id="36">BusinessFeed</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="37" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="38">["Directory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="39">input["Directory"]</name>
<stringValue id="40">LocalInputDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="41" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="42">["FilePatterns"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="43">input["FilePatterns"]</name>
<stringValue id="44">FilePatterns</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="45" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="46">["OutputDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="47">input["OutputDirectory"]</name>
<stringValue id="48">DoneDirectory</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="49" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="50">["ParentJobID"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="51">input["ParentJobID"]</name>
<stringValue id="52">ParentJobID</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="53" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="54">["ReProcessProcessedFiles"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="55">input["ReProcessProcessedFiles"]</name>
<stringValue id="56">ReProcessProcessedFiles</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="57" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="58">["SortOrder"]@com/j2fe/feeds/activities/ListFiles$Sort@</UITypeHint>
<input>true</input>
<name id="59">input["SortOrder"]</name>
<stringValue id="60">SortOrder</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="61" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="62">["SuccessAction"]@com/j2fe/feeds/SuccessAction@</UITypeHint>
<input>true</input>
<name id="63">input["SuccessAction"]</name>
<stringValue id="64">MOVE</stringValue>
<type>CONSTANT</type>
</item>
<item id="65" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="66">["VendorDefinition"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="67">input["VendorDefinition"]</name>
<stringValue id="68">VendorDefinition</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="69" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="70">name</name>
<stringValue id="71">Process Files in Directory</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="72" type="java.util.HashSet">
<item id="73" type="com.j2fe.workflow.definition.Transition">
<name id="74">goto-next</name>
<source id="75">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="76">Create Job </name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="77">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="78" type="java.util.HashSet">
<item id="79" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="80">configInfo</name>
<stringValue id="81">Starmine Feed Processing</stringValue>
<type>CONSTANT</type>
</item>
<item id="82" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="83">jobId</name>
<stringValue id="84">ParentJobID</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
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
<name id="89">Download from SFTP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="90">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="91" type="java.util.HashSet">
<item id="92" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="93">["Directory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="94">input["Directory"]</name>
<stringValue id="95">SFTPDirectory</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="96" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="97">["DownloadDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="98">input["DownloadDirectory"]</name>
<stringValue id="99">LocalInputDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="100" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="101">["FilePatterns"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="102">input["FilePatterns"]</name>
<stringValue id="103">ZipFIlePattern</stringValue>
<type>VARIABLE</type>
</item>
<item id="104" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="105">["ReDownloadfiles"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="106">input["ReDownloadfiles"]</name>
<stringValue id="107">ReDownloadFiles</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="108" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="109">["SortOrder"]@com/j2fe/feeds/activities/ListFiles$Sort@</UITypeHint>
<input>true</input>
<name id="110">input["SortOrder"]</name>
<stringValue id="111">SortOrder</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="112" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="113">name</name>
<stringValue id="114">P72_WF_DownloadStarmineFiles</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="115" type="java.util.HashSet">
<item id="116" type="com.j2fe.workflow.definition.Transition">
<name id="117">goto-next</name>
<source id="118">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="119">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="120">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="121" type="java.util.HashSet"/>
<targets id="122" type="java.util.HashSet">
<item idref="116" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="88"/>
</item>
</sources>
<targets id="123" type="java.util.HashSet">
<item idref="86" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="75"/>
</item>
</sources>
<targets id="124" type="java.util.HashSet">
<item idref="73" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="29"/>
</item>
</sources>
<targets id="125" type="java.util.HashSet">
<item idref="27" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="19"/>
</item>
</sources>
<targets id="126" type="java.util.HashSet">
<item idref="17" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="9"/>
</item>
</sources>
<targets id="127" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3"/>
</item>
</sources>
<targets id="128" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="129">Custom/StarmineFeedProcessing</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="130">user1</lastChangeUser>
<lastUpdate id="131">2022-05-12T13:57:02.000+0530</lastUpdate>
<name id="132">P72_WF_StarmineFileProcessWrapper</name>
<optimize>true</optimize>
<parameter id="133" type="java.util.HashMap">
<entry>
<key id="134" type="java.lang.String">BusinessFeed</key>
<value id="135" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="136">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="137" type="java.lang.String">DoneDirectory</key>
<value id="138" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="139">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="140" type="java.lang.String">FilePatterns</key>
<value id="141" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="142">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="143" type="java.lang.String">LocalInputDirectory</key>
<value id="144" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="145">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="146" type="java.lang.String">ReDownloadFiles</key>
<value id="147" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="148">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="149" type="java.lang.String">ReProcessProcessedFiles</key>
<value id="150" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="151">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="152" type="java.lang.String">SFTPDirectory</key>
<value id="153" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="154">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="155" type="java.lang.String">SortOrder</key>
<value id="156" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="157">com.j2fe.feeds.activities.ListFiles$Sort</className>
<clazz>com.j2fe.feeds.activities.ListFiles$Sort</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="158" type="java.lang.String">VendorDefinition</key>
<value id="159" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="160">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="161" type="java.lang.String">ZipFIlePattern</key>
<value id="162" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="163">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="164" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="118"/>
<status>RELEASED</status>
<variables id="165" type="java.util.HashMap">
<entry>
<key id="166" type="java.lang.String">BusinessFeed</key>
<value id="167" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="168">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="169" type="java.lang.String">Starmine</value>
</value>
</entry>
<entry>
<key id="170" type="java.lang.String">DoneDirectory</key>
<value id="171" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="172">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="173" type="java.lang.String">/devgs/InputFiles/Starmine/done</value>
</value>
</entry>
<entry>
<key id="174" type="java.lang.String">FilePatterns</key>
<value id="175" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="176">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="177" type="java.lang.String">LocalInputDirectory</key>
<value id="178" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="179">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="180" type="java.lang.String">/devgs/InputFiles/Starmine</value>
</value>
</entry>
<entry>
<key id="181" type="java.lang.String">ParentJobID</key>
<value id="182" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="183">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="184" type="java.lang.String">ReDownloadFiles</key>
<value id="185" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="186">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="187" type="java.lang.Boolean">false</value>
</value>
</entry>
<entry>
<key id="188" type="java.lang.String">ReProcessProcessedFiles</key>
<value id="189" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="190">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value idref="187"/>
</value>
</entry>
<entry>
<key id="191" type="java.lang.String">SFTPDirectory</key>
<value id="192" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="193">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="194" type="java.lang.String">/daily_download</value>
</value>
</entry>
<entry>
<key id="195" type="java.lang.String">SortOrder</key>
<value id="196" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="197">com.j2fe.feeds.activities.ListFiles$Sort</className>
<clazz>com.j2fe.feeds.activities.ListFiles$Sort</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="198" type="com.j2fe.feeds.activities.ListFiles$Sort">TIME</value>
</value>
</entry>
<entry>
<key id="199" type="java.lang.String">VendorDefinition</key>
<value id="200" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="201">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="202" type="java.lang.String">P72_Custom</value>
</value>
</entry>
<entry>
<key id="203" type="java.lang.String">ZipFIlePattern</key>
<value id="204" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="205">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="206" type="java.lang.String">ARM_All_</value>
</value>
</entry>
</variables>
<version>4</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>

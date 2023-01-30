<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.19">
<package-comment/>
<businessobject displayString="19 - Unzip&amp;Rename" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">Unzip&amp;Rename</comment>
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
</item>
<item id="37" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="38">["Directory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="39">input["Directory"]</name>
<stringValue id="40">PreProcessedDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="41" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="42">["FilePatterns"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="43">input["FilePatterns"]</name>
<stringValue id="44">FilePatterns</stringValue>
<type>VARIABLE</type>
</item>
<item id="45" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="46">["OutputDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="47">input["OutputDirectory"]</name>
<stringValue id="48">DoneDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="49" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="50">["ParentJobID"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="51">input["ParentJobID"]</name>
<stringValue id="52">ParentJobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="53" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="54">["ReProcessProcessedFiles"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="55">input["ReProcessProcessedFiles"]</name>
<stringValue id="56">ReProcessProcessedFiles</stringValue>
<type>VARIABLE</type>
</item>
<item id="57" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="58">["SortOrder"]@com/j2fe/feeds/activities/ListFiles$Sort@</UITypeHint>
<input>true</input>
<name id="59">input["SortOrder"]</name>
<stringValue id="60">SortOrder</stringValue>
<type>VARIABLE</type>
</item>
<item id="61" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="62">["SuccessAction"]@com/j2fe/feeds/SuccessAction@</UITypeHint>
<input>true</input>
<name id="63">input["SuccessAction"]</name>
<objectValue id="64" type="com.j2fe.feeds.SuccessAction">MOVE</objectValue>
<type>CONSTANT</type>
</item>
<item id="65" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="66">["VendorDefinition"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="67">input["VendorDefinition"]</name>
<stringValue id="68">VendorDefinition</stringValue>
<type>VARIABLE</type>
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
<name id="76">Truncate FT_T_BAR1</name>
<nodeHandler>com.j2fe.general.activities.database.DBStatement</nodeHandler>
<nodeHandlerClass id="77">com.j2fe.general.activities.database.DBStatement</nodeHandlerClass>
<parameters id="78" type="java.util.HashSet">
<item id="79" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="80">database</name>
<stringValue id="81">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="82" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="83">querySQL</name>
<stringValue id="84">delete from ft_t_bar1</stringValue>
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
<name id="89">Call PreProcessor workflow</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="90">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="91" type="java.util.HashSet">
<item id="92" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="93">["BulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="94">input["BulkSize"]</name>
<stringValue id="95">PreProcessorBulkSize</stringValue>
<type>VARIABLE</type>
</item>
<item id="96" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="97">["FileHeader"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="98">input["FileHeader"]</name>
<stringValue id="99">FileHeader</stringValue>
<type>VARIABLE</type>
</item>
<item id="100" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="101">["FileName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="102">input["FileName"]</name>
<stringValue id="103">PreProcessedFileName</stringValue>
<type>VARIABLE</type>
</item>
<item id="104" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="105">["InputDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="106">input["InputDirectory"]</name>
<stringValue id="107">LocalFileDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="108" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="109">["NoOfThread"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="110">input["NoOfThread"]</name>
<stringValue id="111">NoOfPreProcessThreads</stringValue>
<type>VARIABLE</type>
</item>
<item id="112" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="113">["OutputDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="114">input["OutputDirectory"]</name>
<stringValue id="115">DoneDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="116" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="117">["ParentJobID"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="118">input["ParentJobID"]</name>
<stringValue id="119">ParentJobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="120" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="121">["PreProcessMessageType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="122">input["PreProcessMessageType"]</name>
<stringValue id="123">PreProcessMessageType</stringValue>
<type>VARIABLE</type>
</item>
<item id="124" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="125">["PreProcessedDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="126">input["PreProcessedDirectory"]</name>
<stringValue id="127">PreProcessedDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="128" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="129">["PreProcessedFileName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="130">input["PreProcessedFileName"]</name>
<stringValue id="131">PreProcessedFileName</stringValue>
<type>VARIABLE</type>
</item>
<item id="132" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="133">["PreProcessorBusinessFeed"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="134">input["PreProcessorBusinessFeed"]</name>
<stringValue id="135">PreProcesseorBusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="136" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="137">["SequenceQuery"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="138">input["SequenceQuery"]</name>
<stringValue id="139">SequenceQuery</stringValue>
<type>VARIABLE</type>
</item>
<item id="140" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="141">["Viewname"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="142">input["Viewname"]</name>
<stringValue id="143">ViewName</stringValue>
<type>VARIABLE</type>
</item>
<item id="144" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="145">name</name>
<stringValue id="146">P72_WF_BARRAPreProcessor</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="147" type="java.util.HashSet">
<item id="148" type="com.j2fe.workflow.definition.Transition">
<name id="149">goto-next</name>
<source id="150">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="151">Create Job </name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="152">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="153" type="java.util.HashSet">
<item id="154" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="155">configInfo</name>
<stringValue id="156">BARRA Feed Processing</stringValue>
<type>CONSTANT</type>
</item>
<item id="157" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="158">jobId</name>
<stringValue id="159">ParentJobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="160" type="java.util.HashSet">
<item id="161" type="com.j2fe.workflow.definition.Transition">
<name id="162">goto-next</name>
<source id="163">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="164">Download from SFTP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="165">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="166" type="java.util.HashSet">
<item id="167" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="168">["DownloadDIrectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="169">input["DownloadDIrectory"]</name>
<stringValue id="170">ZIPDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="171" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="172">["ReDownloadfiles"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="173">input["ReDownloadfiles"]</name>
<stringValue id="174">ReDownloadFiles</stringValue>
<type>VARIABLE</type>
</item>
<item id="175" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="176">["SortOrder"]@com/j2fe/feeds/activities/ListFiles$Sort@</UITypeHint>
<input>true</input>
<name id="177">input["SortOrder"]</name>
<stringValue id="178">SortOrder</stringValue>
<type>VARIABLE</type>
</item>
<item id="179" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="180">name</name>
<stringValue id="181">P72_WF_DownloadBarraFiles</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="182" type="java.util.HashSet">
<item id="183" type="com.j2fe.workflow.definition.Transition">
<name id="184">goto-next</name>
<source id="185">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="186">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="187">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="188" type="java.util.HashSet"/>
<targets id="189" type="java.util.HashSet">
<item idref="183" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="163"/>
</item>
</sources>
<targets id="190" type="java.util.HashSet">
<item idref="161" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="150"/>
</item>
</sources>
<targets id="191" type="java.util.HashSet">
<item idref="148" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="88"/>
</item>
</sources>
<targets id="192" type="java.util.HashSet">
<item idref="86" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="75"/>
</item>
</sources>
<targets id="193" type="java.util.HashSet">
<item idref="73" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="29"/>
</item>
</sources>
<targets id="194" type="java.util.HashSet">
<item idref="27" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="19"/>
</item>
</sources>
<targets id="195" type="java.util.HashSet">
<item idref="17" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="9"/>
</item>
</sources>
<targets id="196" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3"/>
</item>
</sources>
<targets id="197" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="198">Custom/BarraFeedProcessing</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="199">user1</lastChangeUser>
<lastUpdate id="200">2022-03-22T15:07:46.000+0530</lastUpdate>
<name id="201">P72_WF_BARRAFileProcessWrapper</name>
<optimize>true</optimize>
<parameter id="202" type="java.util.HashMap">
<entry>
<key id="203" type="java.lang.String">BusinessFeed</key>
<value id="204" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="205">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="206" type="java.lang.String">DoneDirectory</key>
<value id="207" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="208">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="209" type="java.lang.String">FileHeader</key>
<value id="210" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="211">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="212" type="java.lang.String">FilePatterns</key>
<value id="213" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="214">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="215" type="java.lang.String">LocalFileDirectory</key>
<value id="216" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="217">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="218" type="java.lang.String">NoOfPreProcessThreads</key>
<value id="219" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="220">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="221" type="java.lang.String">PreProcessMessageType</key>
<value id="222" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="223">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="224" type="java.lang.String">PreProcessedDirectory</key>
<value id="225" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="226">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="227" type="java.lang.String">PreProcessedFileName</key>
<value id="228" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="229">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="230" type="java.lang.String">PreProcesseorBusinessFeed</key>
<value id="231" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="232">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="233" type="java.lang.String">PreProcessorBulkSize</key>
<value id="234" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="235">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="236" type="java.lang.String">ReDownloadFiles</key>
<value id="237" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="238">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="239" type="java.lang.String">ReProcessProcessedFiles</key>
<value id="240" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="241">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="242" type="java.lang.String">SequenceQuery</key>
<value id="243" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="244">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="245" type="java.lang.String">SortOrder</key>
<value id="246" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="247">com.j2fe.feeds.activities.ListFiles$Sort</className>
<clazz>com.j2fe.feeds.activities.ListFiles$Sort</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="248" type="java.lang.String">SuccessAction</key>
<value id="249" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="250">com.j2fe.feeds.SuccessAction</className>
<clazz>com.j2fe.feeds.SuccessAction</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="251" type="java.lang.String">VendorDefinition</key>
<value id="252" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="253">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="254" type="java.lang.String">ViewName</key>
<value id="255" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="256">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="257" type="java.lang.String">ZIPDirectory</key>
<value id="258" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="259">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
</parameter>
<permissions id="260" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="185"/>
<status>RELEASED</status>
<variables id="261" type="java.util.HashMap">
<entry>
<key id="262" type="java.lang.String">BusinessFeed</key>
<value id="263" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="264">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="265" type="java.lang.String">P72_Custom</value>
</value>
</entry>
<entry>
<key id="266" type="java.lang.String">DoneDirectory</key>
<value id="267" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="268">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="269" type="java.lang.String">/devgs/InputFiles/Barra/done</value>
</value>
</entry>
<entry>
<key id="270" type="java.lang.String">FileHeader</key>
<value id="271" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="272">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="273" type="java.lang.String">Barraid|SEDOL|CINS|CUSIP|ISIN|StartDate|EndDate</value>
</value>
</entry>
<entry>
<key id="274" type="java.lang.String">FilePatterns</key>
<value id="275" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="276">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="277" type="java.lang.String">LocalFileDirectory</key>
<value id="278" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="279">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="280" type="java.lang.String">/devgs/InputFiles/Barra/</value>
</value>
</entry>
<entry>
<key id="281" type="java.lang.String">NoOfPreProcessThreads</key>
<value id="282" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="283">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="284" type="java.lang.Integer">10</value>
</value>
</entry>
<entry>
<key id="285" type="java.lang.String">ParentJobID</key>
<value id="286" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="287">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="288" type="java.lang.String">PreProcessMessageType</key>
<value id="289" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="290">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="291" type="java.lang.String">PreProcessBarraId</value>
</value>
</entry>
<entry>
<key id="292" type="java.lang.String">PreProcessedDirectory</key>
<value id="293" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="294">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="295" type="java.lang.String">/devgs/InputFiles/Barra/preprocessed</value>
</value>
</entry>
<entry>
<key id="296" type="java.lang.String">PreProcessedFileName</key>
<value id="297" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="298">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="299" type="java.lang.String">BarraPreProcessed</value>
</value>
</entry>
<entry>
<key id="300" type="java.lang.String">PreProcesseorBusinessFeed</key>
<value id="301" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="302">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="303" type="java.lang.String">P72_Custom_PreProcess</value>
</value>
</entry>
<entry>
<key id="304" type="java.lang.String">PreProcessorBulkSize</key>
<value id="305" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="306">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="307" type="java.lang.Integer">1000</value>
</value>
</entry>
<entry>
<key id="308" type="java.lang.String">ReDownloadFiles</key>
<value id="309" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="310">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="311" type="java.lang.Boolean">false</value>
</value>
</entry>
<entry>
<key id="312" type="java.lang.String">ReProcessProcessedFiles</key>
<value id="313" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="314">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value idref="311"/>
</value>
</entry>
<entry>
<key id="315" type="java.lang.String">SequenceQuery</key>
<value id="316" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="317">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="318" type="java.lang.String">select distinct barra_id barra_id from ft_t_bar1</value>
</value>
</entry>
<entry>
<key id="319" type="java.lang.String">SortOrder</key>
<value id="320" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="321">com.j2fe.feeds.activities.ListFiles$Sort</className>
<clazz>com.j2fe.feeds.activities.ListFiles$Sort</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="322" type="com.j2fe.feeds.activities.ListFiles$Sort">TIME</value>
</value>
</entry>
<entry>
<key id="323" type="java.lang.String">SuccessAction</key>
<value id="324" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="325">com.j2fe.feeds.SuccessAction</className>
<clazz>com.j2fe.feeds.SuccessAction</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value idref="64"/>
</value>
</entry>
<entry>
<key id="326" type="java.lang.String">VendorDefinition</key>
<value id="327" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="328">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="329" type="java.lang.String">P72_Custom</value>
</value>
</entry>
<entry>
<key id="330" type="java.lang.String">ViewName</key>
<value id="331" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="332">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="333" type="java.lang.String">ft_v_p72_barra</value>
</value>
</entry>
<entry>
<key id="334" type="java.lang.String">ZIPDirectory</key>
<value id="335" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="336">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="337" type="java.lang.String">/devgs/InputFiles/Barra/zipdir</value>
</value>
</entry>
</variables>
<version>19</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>

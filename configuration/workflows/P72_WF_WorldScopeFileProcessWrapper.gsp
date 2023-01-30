<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.22">
<package-comment/>
<businessobject displayString="6 - ChangesToHandleFull&amp;Delta" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">ChangesToHandleFull&amp;Delta</comment>
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
<name id="76">Truncate FT_T_WID1</name>
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
<stringValue id="84">delete from ft_t_wid1</stringValue>
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
<UITypeHint id="101">["InputDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="102">input["InputDirectory"]</name>
<stringValue id="103">LocalFileDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="104" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="105">["NoOfThread"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="106">input["NoOfThread"]</name>
<stringValue id="107">NoOfPreProcessThreads</stringValue>
<type>VARIABLE</type>
</item>
<item id="108" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="109">["OutputDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="110">input["OutputDirectory"]</name>
<stringValue id="111">DoneDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="112" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="113">["ParentJobID"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="114">input["ParentJobID"]</name>
<stringValue id="115">ParentJobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="116" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="117">["PreProcessMessageType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="118">input["PreProcessMessageType"]</name>
<stringValue id="119">PreProcessMessageType</stringValue>
<type>VARIABLE</type>
</item>
<item id="120" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="121">["PreProcessedDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="122">input["PreProcessedDirectory"]</name>
<stringValue id="123">PreProcessedDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="124" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="125">["PreProcessedFileName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="126">input["PreProcessedFileName"]</name>
<stringValue id="127">PreProcessedFileName</stringValue>
<type>VARIABLE</type>
</item>
<item id="128" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="129">["PreProcessorBusinessFeed"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="130">input["PreProcessorBusinessFeed"]</name>
<stringValue id="131">PreProcesseorBusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="132" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="133">["SequenceQuery"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="134">input["SequenceQuery"]</name>
<stringValue id="135">SequenceQuery</stringValue>
<type>VARIABLE</type>
</item>
<item id="136" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="137">["Viewname"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="138">input["Viewname"]</name>
<stringValue id="139">ViewName</stringValue>
<type>VARIABLE</type>
</item>
<item id="140" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="141">name</name>
<stringValue id="142">P72_WF_WorldScopePreProcessor</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="143" type="java.util.HashSet">
<item id="144" type="com.j2fe.workflow.definition.Transition">
<name id="145">goto-next</name>
<source id="146">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="147">Create Job </name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="148">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="149" type="java.util.HashSet">
<item id="150" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="151">configInfo</name>
<stringValue id="152">WorldScope Feed Processing</stringValue>
<type>CONSTANT</type>
</item>
<item id="153" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="154">jobId</name>
<stringValue id="155">ParentJobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="156" type="java.util.HashSet">
<item id="157" type="com.j2fe.workflow.definition.Transition">
<name id="158">goto-next</name>
<source id="159">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="160">Download from SFTP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="161">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="162" type="java.util.HashSet">
<item id="163" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="164">["Directory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="165">input["Directory"]</name>
<stringValue id="166">SFTPDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="167" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="168">["DownloadDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="169">input["DownloadDirectory"]</name>
<stringValue id="170">LocalFileDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="171" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="172">["FilePatterns"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="173">input["FilePatterns"]</name>
<stringValue id="174">ZIPFilePattern</stringValue>
<type>VARIABLE</type>
</item>
<item id="175" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="176">["ReDownloadfiles"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="177">input["ReDownloadfiles"]</name>
<stringValue id="178">ReDownloadFiles</stringValue>
<type>VARIABLE</type>
</item>
<item id="179" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="180">["SortOrder"]@com/j2fe/feeds/activities/ListFiles$Sort@</UITypeHint>
<input>true</input>
<name id="181">input["SortOrder"]</name>
<stringValue id="182">SortOrder</stringValue>
<type>VARIABLE</type>
</item>
<item id="183" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="184">name</name>
<stringValue id="185">P72_WF_DownloadWorldScopeFiles</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="186" type="java.util.HashSet">
<item id="187" type="com.j2fe.workflow.definition.Transition">
<name id="188">goto-next</name>
<source id="189">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="190">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="191">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="192" type="java.util.HashSet"/>
<targets id="193" type="java.util.HashSet">
<item idref="187" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="159"/>
</item>
</sources>
<targets id="194" type="java.util.HashSet">
<item idref="157" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="146"/>
</item>
</sources>
<targets id="195" type="java.util.HashSet">
<item idref="144" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="88"/>
</item>
</sources>
<targets id="196" type="java.util.HashSet">
<item idref="86" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="75"/>
</item>
</sources>
<targets id="197" type="java.util.HashSet">
<item idref="73" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="29"/>
</item>
</sources>
<targets id="198" type="java.util.HashSet">
<item idref="27" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="19"/>
</item>
</sources>
<targets id="199" type="java.util.HashSet">
<item idref="17" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="9"/>
</item>
</sources>
<targets id="200" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3"/>
</item>
</sources>
<targets id="201" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="202">Custom/WorldScopeFeedProcessing</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="203">user1</lastChangeUser>
<lastUpdate id="204">2022-05-12T15:24:37.000+0530</lastUpdate>
<name id="205">P72_WF_WorldScopeFileProcessWrapper</name>
<optimize>true</optimize>
<parameter id="206" type="java.util.HashMap">
<entry>
<key id="207" type="java.lang.String">BusinessFeed</key>
<value id="208" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="209">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="210" type="java.lang.String">DoneDirectory</key>
<value id="211" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="212">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="213" type="java.lang.String">FileHeader</key>
<value id="214" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="215">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="216" type="java.lang.String">FilePatterns</key>
<value id="217" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="218">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="219" type="java.lang.String">LocalFileDirectory</key>
<value id="220" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="221">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="222" type="java.lang.String">NoOfPreProcessThreads</key>
<value id="223" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="224">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="225" type="java.lang.String">PreProcessMessageType</key>
<value id="226" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="227">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="228" type="java.lang.String">PreProcessedDirectory</key>
<value id="229" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="230">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="231" type="java.lang.String">PreProcessedFileName</key>
<value id="232" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="233">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="234" type="java.lang.String">PreProcesseorBusinessFeed</key>
<value id="235" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="236">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="237" type="java.lang.String">PreProcessorBulkSize</key>
<value id="238" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="239">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="240" type="java.lang.String">ReDownloadFiles</key>
<value id="241" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="242">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="243" type="java.lang.String">ReProcessProcessedFiles</key>
<value id="244" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="245">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="246" type="java.lang.String">SFTPDirectory</key>
<value id="247" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="248">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="249" type="java.lang.String">SequenceQuery</key>
<value id="250" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="251">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="252" type="java.lang.String">SortOrder</key>
<value id="253" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="254">com.j2fe.feeds.activities.ListFiles$Sort</className>
<clazz>com.j2fe.feeds.activities.ListFiles$Sort</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="255" type="java.lang.String">SuccessAction</key>
<value id="256" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="257">com.j2fe.feeds.SuccessAction</className>
<clazz>com.j2fe.feeds.SuccessAction</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="258" type="java.lang.String">VendorDefinition</key>
<value id="259" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="260">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="261" type="java.lang.String">ViewName</key>
<value id="262" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="263">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="264" type="java.lang.String">ZIPFilePattern</key>
<value id="265" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="266">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="267">FullFIle: WSCURRENT_F&#13;
DeltaFIle: WSCURRENT_I</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="268" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="189"/>
<status>RELEASED</status>
<variables id="269" type="java.util.HashMap">
<entry>
<key id="270" type="java.lang.String">BusinessFeed</key>
<value id="271" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="272">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="273" type="java.lang.String">P72_Custom_PreProc_noHead</value>
</value>
</entry>
<entry>
<key id="274" type="java.lang.String">DoneDirectory</key>
<value id="275" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="276">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="277" type="java.lang.String">/devgs/InputFiles/WorldScope/done</value>
</value>
</entry>
<entry>
<key id="278" type="java.lang.String">FileHeader</key>
<value id="279" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="280">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="281" type="java.lang.String">CUSTOMID|SEDOL|CUSIP|ISIN|STARTDATE|ENDDATE</value>
</value>
</entry>
<entry>
<key id="282" type="java.lang.String">FilePatterns</key>
<value id="283" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="284">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="285" type="java.lang.String">LocalFileDirectory</key>
<value id="286" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="287">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="288" type="java.lang.String">/devgs/InputFiles/WorldScope</value>
</value>
</entry>
<entry>
<key id="289" type="java.lang.String">NoOfPreProcessThreads</key>
<value id="290" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="291">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="292" type="java.lang.Integer">5</value>
</value>
</entry>
<entry>
<key id="293" type="java.lang.String">ParentJobID</key>
<value id="294" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="295">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="296" type="java.lang.String">PreProcessMessageType</key>
<value id="297" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="298">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="299" type="java.lang.String">PreProcessCustomID</value>
</value>
</entry>
<entry>
<key id="300" type="java.lang.String">PreProcessedDirectory</key>
<value id="301" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="302">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="303" type="java.lang.String">/devgs/InputFiles/WorldScope/preprocessed</value>
</value>
</entry>
<entry>
<key id="304" type="java.lang.String">PreProcessedFileName</key>
<value id="305" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="306">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="307" type="java.lang.String">WorldScopePreProcessed</value>
</value>
</entry>
<entry>
<key id="308" type="java.lang.String">PreProcesseorBusinessFeed</key>
<value id="309" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="310">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="311" type="java.lang.String">P72_Custom_PreProc_noHead</value>
</value>
</entry>
<entry>
<key id="312" type="java.lang.String">PreProcessorBulkSize</key>
<value id="313" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="314">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="315" type="java.lang.Integer">1000</value>
</value>
</entry>
<entry>
<key id="316" type="java.lang.String">ReDownloadFiles</key>
<value id="317" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="318">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="319" type="java.lang.Boolean">false</value>
</value>
</entry>
<entry>
<key id="320" type="java.lang.String">ReProcessProcessedFiles</key>
<value id="321" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="322">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value idref="319"/>
</value>
</entry>
<entry>
<key id="323" type="java.lang.String">SFTPDirectory</key>
<value id="324" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="325">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="326" type="java.lang.String">/Daily/PointInTime</value>
</value>
</entry>
<entry>
<key id="327" type="java.lang.String">SequenceQuery</key>
<value id="328" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="329">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="330" type="java.lang.String">select distinct custom_id custom_id from ft_t_wid1</value>
</value>
</entry>
<entry>
<key id="331" type="java.lang.String">SortOrder</key>
<value id="332" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="333">com.j2fe.feeds.activities.ListFiles$Sort</className>
<clazz>com.j2fe.feeds.activities.ListFiles$Sort</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="334" type="com.j2fe.feeds.activities.ListFiles$Sort">TIME</value>
</value>
</entry>
<entry>
<key id="335" type="java.lang.String">SuccessAction</key>
<value id="336" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="337">com.j2fe.feeds.SuccessAction</className>
<clazz>com.j2fe.feeds.SuccessAction</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value idref="64"/>
</value>
</entry>
<entry>
<key id="338" type="java.lang.String">VendorDefinition</key>
<value id="339" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="340">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="341" type="java.lang.String">P72_Custom</value>
</value>
</entry>
<entry>
<key id="342" type="java.lang.String">ViewName</key>
<value id="343" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="344">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="345" type="java.lang.String">ft_v_p72_worldscope</value>
</value>
</entry>
<entry>
<key id="346" type="java.lang.String">ZIPFilePattern</key>
<value id="347" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="348">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="349">FullFIle: WSCURRENT_F&#13;
DeltaFIle: WSCURRENT_I</description>
<persistent>false</persistent>
<value id="350" type="java.lang.String">WSCURRENT_I</value>
</value>
</entry>
</variables>
<version>6</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>

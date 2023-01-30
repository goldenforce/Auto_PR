<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.22">
<package-comment/>
<businessobject displayString="19 - 17062022-CreateSingleFileFalse" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">17062022-CreateSingleFileFalse</comment>
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
<name id="10">Process Published CA File</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="11">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="12" type="java.util.HashSet">
<item id="13" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="14">["BusinessFeed"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="15">input["BusinessFeed"]</name>
<stringValue id="16">CAProcessingBusinessFeed</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="17" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="18">["Directory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="19">input["Directory"]</name>
<stringValue id="20">CAProcessingInputDirectory</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="21" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="22">["FilePatterns"]@[Ljava/lang/String;@[0]</UITypeHint>
<input>true</input>
<name id="23">input["FilePatterns"][0]</name>
<stringValue id="24">PublishedFilePattern</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="25" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="26">["MessageType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="27">input["MessageType"]</name>
<stringValue id="28">CAProcessingMessageType</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="29" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="30">["OutputDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="31">input["OutputDirectory"]</name>
<stringValue id="32">CAProcessingOutputDirectory</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="33" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="34">["ParentJobID"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="35">input["ParentJobID"]</name>
<stringValue id="36">ParentJobID</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="37" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="38">["SuccessAction"]@com/j2fe/feeds/SuccessAction@</UITypeHint>
<input>true</input>
<name id="39">input["SuccessAction"]</name>
<stringValue id="40">MOVE</stringValue>
<type>CONSTANT</type>
</item>
<item id="41" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="42">name</name>
<stringValue id="43">Process Files in Directory</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="44" type="java.util.HashSet">
<item id="45" type="com.j2fe.workflow.definition.Transition">
<name id="46">goto-next</name>
<source id="47">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="48">Call Publishing</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="49">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="50" type="java.util.HashSet">
<item id="51" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="52">["CreateSingleFile"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="53">input["CreateSingleFile"]</name>
<objectValue id="54" type="java.lang.Boolean">false</objectValue>
<type>CONSTANT</type>
</item>
<item id="55" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="56">["Database"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="57">input["Database"]</name>
<stringValue id="58">jdbc/GSDM-1</stringValue>
<type>CONSTANT</type>
</item>
<item id="59" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="60">["FilePerEntity"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="61">input["FilePerEntity"]</name>
<objectValue idref="54"/>
<type>CONSTANT</type>
</item>
<item id="62" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="63">["SubscriptionName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="64">input["SubscriptionName"]</name>
<stringValue id="65">P72CAProcessing</stringValue>
<type>CONSTANT</type>
</item>
<item id="66" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="67">["publishingMode"]@com/thegoldensource/subscription/PublishingMode@</UITypeHint>
<input>true</input>
<name id="68">input["publishingMode"]</name>
<stringValue id="69">BATCH</stringValue>
<type>CONSTANT</type>
</item>
<item id="70" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="71">name</name>
<stringValue id="72">StandardSubscriptionPublishing</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="73" type="java.util.HashSet">
<item id="74" type="com.j2fe.workflow.definition.Transition">
<name id="75">goto-next</name>
<source id="76">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="77">Call BB Backoffice</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="78">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="79" type="java.util.HashSet">
<item id="80" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="81">["BusinessFeed"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="82">input["BusinessFeed"]</name>
<stringValue id="83">BBBusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="84" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="85">["Directory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="86">input["Directory"]</name>
<stringValue id="87">/</stringValue>
<type>CONSTANT</type>
</item>
<item id="88" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="89">["FilePatterns"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="90">input["FilePatterns"]</name>
<stringValue id="91">filepatternArray</stringValue>
<type>VARIABLE</type>
</item>
<item id="92" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="93">["IncludeFilePatternNBusinessFeed"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="94">input["IncludeFilePatternNBusinessFeed"]</name>
<stringValue id="95">IncludeFilePatternNBusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="96" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="97">["OutputDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="98">input["OutputDirectory"]</name>
<stringValue id="99">BBArchiveDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="100" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="101">["ParentJobID"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="102">input["ParentJobID"]</name>
<stringValue id="103">ParentJobID</stringValue>
<type>VARIABLE</type>
</item>
<item id="104" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="105">["ReProcessProcessedFiles"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="106">input["ReProcessProcessedFiles"]</name>
<stringValue id="107">ReProcessProcessedFiles</stringValue>
<type>VARIABLE</type>
</item>
<item id="108" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="109">["SortAscending"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="110">input["SortAscending"]</name>
<stringValue id="111">SortAsxcending</stringValue>
<type>VARIABLE</type>
</item>
<item id="112" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="113">["SuccessAction"]@com/j2fe/feeds/SuccessAction@</UITypeHint>
<input>true</input>
<name id="114">input["SuccessAction"]</name>
<stringValue id="115">SuccessAction</stringValue>
<type>VARIABLE</type>
</item>
<item id="116" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="117">["VendorDefinition"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="118">input["VendorDefinition"]</name>
<stringValue id="119">BB</stringValue>
<type>CONSTANT</type>
</item>
<item id="120" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="121">name</name>
<stringValue id="122">Bloomberg Back Office</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="123" type="java.util.HashSet">
<item id="124" type="com.j2fe.workflow.definition.Transition">
<name id="125">goto-next</name>
<source id="126">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="127">Create Job </name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="128">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="129" type="java.util.HashSet">
<item id="130" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="131">configInfo</name>
<stringValue id="132">CA Processing</stringValue>
<type>CONSTANT</type>
</item>
<item id="133" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="134">jobId</name>
<stringValue id="135">ParentJobID</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="136" type="java.util.HashSet">
<item id="137" type="com.j2fe.workflow.definition.Transition">
<name id="138">goto-next</name>
<source id="139">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="140">Bean Shell Script (Standard) #2</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="141">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="142" type="java.util.HashSet">
<item id="143" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="144">statements</name>
<stringValue id="145">String [] fpatternarray=filepatterns.split(",");</stringValue>
<type>CONSTANT</type>
</item>
<item id="146" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="147">variables["filepatterns"]</name>
<stringValue id="148">FilePatterns</stringValue>
<type>VARIABLE</type>
</item>
<item id="149" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="150">variables["fpatternarray"]</name>
<stringValue id="151">filepatternArray</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="152" type="java.util.HashSet">
<item id="153" type="com.j2fe.workflow.definition.Transition">
<name id="154">goto-next</name>
<source id="155">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="156">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="157">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="158" type="java.util.HashSet"/>
<targets id="159" type="java.util.HashSet">
<item idref="153" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="139"/>
</item>
</sources>
<targets id="160" type="java.util.HashSet">
<item idref="137" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="126"/>
</item>
</sources>
<targets id="161" type="java.util.HashSet">
<item idref="124" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="76"/>
</item>
</sources>
<targets id="162" type="java.util.HashSet">
<item idref="74" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="47"/>
</item>
</sources>
<targets id="163" type="java.util.HashSet">
<item idref="45" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="9"/>
</item>
</sources>
<targets id="164" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3"/>
</item>
</sources>
<targets id="165" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="166">Custom/CAProcessing</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="167">user1</lastChangeUser>
<lastUpdate id="168">2022-06-17T12:38:45.000+0530</lastUpdate>
<name id="169">P72_WF_CAProcessing</name>
<optimize>true</optimize>
<parameter id="170" type="java.util.HashMap">
<entry>
<key id="171" type="java.lang.String">BBArchiveDirectory</key>
<value id="172" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="173">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="174">Output Directory where BB files will be moved after processing</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="175" type="java.lang.String">BBBusinessFeed</key>
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
<key id="178" type="java.lang.String">CAProcessingBusinessFeed</key>
<value id="179" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="180">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="181" type="java.lang.String">CAProcessingInputDirectory</key>
<value id="182" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="183">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="184">Directory where published file will be avialable for processing</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="185" type="java.lang.String">CAProcessingMessageType</key>
<value id="186" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="187">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="188">Message type to be used for processing the published file</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="189" type="java.lang.String">CAProcessingOutputDirectory</key>
<value id="190" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="191">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="192">Done directory to move the published filed which after processing</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="193" type="java.lang.String">FilePatterns</key>
<value id="194" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="195">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="196">comma seperatekd list of file patterns</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="197" type="java.lang.String">IncludeFilePatternNBusinessFeed</key>
<value id="198" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="199">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="200" type="java.lang.String">PublishedFilePattern</key>
<value id="201" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="202">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="203" type="java.lang.String">ReProcessProcessedFiles</key>
<value id="204" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="205">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="206" type="java.lang.String">SortAsxcending</key>
<value id="207" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="208">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="209" type="java.lang.String">SuccessAction</key>
<value id="210" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="211">com.j2fe.feeds.SuccessAction</className>
<clazz>com.j2fe.feeds.SuccessAction</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="212" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="155"/>
<status>RELEASED</status>
<variables id="213" type="java.util.HashMap">
<entry>
<key id="214" type="java.lang.String">BBArchiveDirectory</key>
<value id="215" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="216">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="217">Output Directory where BB files will be moved after processing</description>
<persistent>false</persistent>
<value id="218" type="java.lang.String">/devgs/InputFiles/BB/backoffice/Archive</value>
</value>
</entry>
<entry>
<key id="219" type="java.lang.String">BBBusinessFeed</key>
<value id="220" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="221">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="222" type="java.lang.String">Bloomberg_DL_Corporate_Actions</value>
</value>
</entry>
<entry>
<key id="223" type="java.lang.String">CAProcessingBusinessFeed</key>
<value id="224" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="225">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="226" type="java.lang.String">CorporateActionProcessing</value>
</value>
</entry>
<entry>
<key id="227" type="java.lang.String">CAProcessingInputDirectory</key>
<value id="228" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="229">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="230">Directory where published file will be avialable for processing</description>
<persistent>false</persistent>
<value id="231" type="java.lang.String">/devgs/Outbound/CAProcessing</value>
</value>
</entry>
<entry>
<key id="232" type="java.lang.String">CAProcessingMessageType</key>
<value id="233" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="234">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="235">Message type to be used for processing the published file</description>
<persistent>false</persistent>
<value id="236" type="java.lang.String">CAProcessing</value>
</value>
</entry>
<entry>
<key id="237" type="java.lang.String">CAProcessingOutputDirectory</key>
<value id="238" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="239">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="240">Done directory to move the published filed which after processing</description>
<persistent>false</persistent>
<value id="241" type="java.lang.String">/devgs/Outbound/CAProcessing/done</value>
</value>
</entry>
<entry>
<key id="242" type="java.lang.String">Counter</key>
<value id="243" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="244">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="245" type="java.lang.Integer">0</value>
</value>
</entry>
<entry>
<key id="246" type="java.lang.String">FilePatterns</key>
<value id="247" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="248">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="249">comma seperatekd list of file patterns</description>
<persistent>false</persistent>
<value id="250" type="java.lang.String">equityAsia1CorporateActionsV2.cax.gz.enc.20*,equityAsia2CorporateActionsV2.cax.gz.enc.20*,equityEuroCorporateActionsV2.cax.gz.enc.20*,equityLamrCorporateActionsV2.cax.gz.enc.20*,equityNamrCorporateActionsV2.cax.gz.enc.20*,equityAsia1CorporateActionsV2.cax.20*,equityEuroCorporateActionsV2.cax.20*,equityLamrCorporateActionsV2.cax.20*,equityNamrCorporateActionsV2.cax.20*</value>
</value>
</entry>
<entry>
<key id="251" type="java.lang.String">IncludeFilePatternNBusinessFeed</key>
<value id="252" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="253">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value idref="54"/>
</value>
</entry>
<entry>
<key id="254" type="java.lang.String">ParentJobID</key>
<value id="255" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="256">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="257" type="java.lang.String">PublishedFilePattern</key>
<value id="258" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="259">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="260" type="java.lang.String">PublishedFile*.xml</value>
</value>
</entry>
<entry>
<key id="261" type="java.lang.String">ReProcessProcessedFiles</key>
<value id="262" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="263">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value idref="54"/>
</value>
</entry>
<entry>
<key id="264" type="java.lang.String">SortAsxcending</key>
<value id="265" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="266">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="267" type="java.lang.Boolean">true</value>
</value>
</entry>
<entry>
<key id="268" type="java.lang.String">SuccessAction</key>
<value id="269" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="270">com.j2fe.feeds.SuccessAction</className>
<clazz>com.j2fe.feeds.SuccessAction</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="271" type="com.j2fe.feeds.SuccessAction">LEAVE</value>
</value>
</entry>
</variables>
<version>19</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>

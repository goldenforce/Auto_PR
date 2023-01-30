<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.19">
<package-comment/>
<businessobject displayString="9 - Final" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">Final</comment>
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
<name id="8">Not-Found</name>
<source id="9">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="10">Build Publishing Query</name>
<nodeHandler>com.thegoldensource.publishing.activity.BuildPublishingQuery</nodeHandler>
<nodeHandlerClass id="11">com.thegoldensource.publishing.activity.BuildPublishingQuery</nodeHandlerClass>
<parameters id="12" type="java.util.HashSet">
<item id="13" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="14">detailsMap</name>
<stringValue id="15">detailsMap</stringValue>
<type>VARIABLE</type>
</item>
<item id="16" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="17">extractorFactory</name>
<stringValue id="18">Database</stringValue>
<type>VARIABLE</type>
</item>
<item id="19" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="20">fileLoadBulkSize</name>
<stringValue id="21">bulkSize</stringValue>
<type>VARIABLE</type>
</item>
<item id="22" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="23">jobId</name>
<stringValue id="24">jobId</stringValue>
<type>VARIABLE</type>
</item>
<item id="25" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="26">processedEntityInfo</name>
<stringValue id="27">processedEntityInfo</stringValue>
<type>VARIABLE</type>
</item>
<item id="28" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="29">pubQueryBindVariables</name>
<stringValue id="30">PublishingQueryBindVariables</stringValue>
<type>VARIABLE</type>
</item>
<item id="31" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="32">sessionFactory</name>
<stringValue id="33">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="34" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="35">startRecordSequenceNumber</name>
<stringValue id="36">startRecordSequence</stringValue>
<type>VARIABLE</type>
</item>
<item id="37" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="38">tableName</name>
<stringValue id="39">TableType</stringValue>
<type>VARIABLE</type>
</item>
<item id="40" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="41">transactionId</name>
<stringValue id="42">transactionId</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<persistentVariables id="43" type="java.util.HashSet">
<item id="44" type="java.lang.String">detailsMap
1000</item>
</persistentVariables>
<sources id="45" type="java.util.HashSet">
<item id="46" type="com.j2fe.workflow.definition.Transition">
<name id="47">ToSplit</name>
<source id="48">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="49">Automatically generated</description>
<directJoin>false</directJoin>
<name id="50">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="51">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="52" type="java.util.HashSet">
<item id="53" type="com.j2fe.workflow.definition.Transition">
<name id="54">NEARREALTIME</name>
<source id="55">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="56">Switch Case</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="57">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="58" type="java.util.HashSet">
<item id="59" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="60">caseItem</name>
<stringValue id="61">publishingMode</stringValue>
<type>VARIABLE</type>
</item>
<item id="62" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="63">defaultItem</name>
<stringValue id="64">DEFAULT</stringValue>
<type>CONSTANT</type>
</item>
<item id="65" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="66">nullTransition</name>
<stringValue id="67">DEFAULT</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="68" type="java.util.HashSet">
<item id="69" type="com.j2fe.workflow.definition.Transition">
<name id="70">goto-next</name>
<source id="71">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="72">Default PublishingBulk Size</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="73">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="74" type="java.util.HashSet">
<item id="75" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="76">statements</name>
<stringValue id="77">if(extractBulkSize &lt;= 0)

{

extractBulkSize = 500;

}

int publishingDefCounter= 0;
long threadId =  Thread.currentThread().getId();

StringBuffer CSVHeader = new StringBuffer();
</stringValue>
<type>CONSTANT</type>
</item>
<item id="78" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="79">["CSVHeader"]@java/lang/Object@</UITypeHint>
<input>false</input>
<name id="80">variables["CSVHeader"]</name>
<stringValue id="81">CSVHeader</stringValue>
<type>VARIABLE</type>
</item>
<item id="82" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="83">variables["detailsMap"]</name>
<stringValue id="84">detailsMap</stringValue>
<type>VARIABLE</type>
</item>
<item id="85" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="86">["extractBulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="87">variables["extractBulkSize"]</name>
<stringValue id="88">PublishingBulkSize</stringValue>
<type>VARIABLE</type>
</item>
<item id="89" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="90">["extractBulkSize"]@java/lang/Integer@</UITypeHint>
<input>false</input>
<name id="91">variables["extractBulkSize"]</name>
<stringValue id="92">PublishingBulkSize</stringValue>
<type>VARIABLE</type>
</item>
<item id="93" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="94">variables["pubFileDirectory"]</name>
<stringValue id="95">pubFileDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="96" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="97">["publishingDefCounter"]@java/lang/Integer@</UITypeHint>
<input>false</input>
<name id="98">variables["publishingDefCounter"]</name>
<stringValue id="99">publishingDefCounter</stringValue>
<type>VARIABLE</type>
</item>
<item id="100" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="101">["threadId"]@java/lang/Long@</UITypeHint>
<input>false</input>
<name id="102">variables["threadId"]</name>
<stringValue id="103">threadId</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="104" type="java.util.HashSet">
<item id="105" type="com.j2fe.workflow.definition.Transition">
<name id="106">goto-next</name>
<source id="107">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="108">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="109">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="110" type="java.util.HashSet"/>
<targets id="111" type="java.util.HashSet">
<item idref="105" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="71"/>
</item>
</sources>
<targets id="112" type="java.util.HashSet">
<item idref="69" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="55"/>
</item>
</sources>
<targets id="113" type="java.util.HashSet">
<item id="114" type="com.j2fe.workflow.definition.Transition">
<name id="115">DEFAULT</name>
<source idref="55"/>
<target id="116">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="117">Check if AOI Processing Required</name>
<nodeHandler>com.j2fe.general.activities.RegExCondition</nodeHandler>
<nodeHandlerClass id="118">com.j2fe.general.activities.RegExCondition</nodeHandlerClass>
<parameters id="119" type="java.util.HashSet">
<item id="120" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="121">expression</name>
<stringValue id="122">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="123" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="124">input</name>
<stringValue id="125">inlineAOIProcessing</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="126" type="java.util.HashSet">
<item idref="114" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="127" type="java.util.HashSet">
<item id="128" type="com.j2fe.workflow.definition.Transition">
<name id="129">false</name>
<source idref="116"/>
<target id="130">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="131">Automatically generated</description>
<directJoin>false</directJoin>
<name id="132">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="133">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="134" type="java.util.HashSet">
<item id="135" type="com.j2fe.workflow.definition.Transition">
<name id="136">Found</name>
<source idref="9"/>
<target idref="130"/>
</item>
<item idref="128" type="com.j2fe.workflow.definition.Transition"/>
<item id="137" type="com.j2fe.workflow.definition.Transition">
<name id="138">goto-next</name>
<source id="139">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="140">Call Subworkflow</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="141">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="142" type="java.util.HashSet">
<item id="143" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="144">["AOIProcessingMode"]@com/thegoldensource/publishing/util/AOIProcessingMode@</UITypeHint>
<input>true</input>
<name id="145">input["AOIProcessingMode"]</name>
<objectValue id="146" type="com.thegoldensource.publishing.util.AOIProcessingMode">ALL</objectValue>
<type>CONSTANT</type>
</item>
<item id="147" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="148">["AOIToleranceWindow"]@java/lang/Long@</UITypeHint>
<input>true</input>
<name id="149">input["AOIToleranceWindow"]</name>
<stringValue id="150">AOIToleranceWindow</stringValue>
<type>VARIABLE</type>
</item>
<item id="151" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="152">["BulkSize"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="153">input["BulkSize"]</name>
<stringValue id="154">500</stringValue>
<type>CONSTANT</type>
</item>
<item id="155" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="156">["DataSource"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="157">input["DataSource"]</name>
<stringValue id="158">Database</stringValue>
<type>VARIABLE</type>
</item>
<item id="159" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="160">["NoOfThreads"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="161">input["NoOfThreads"]</name>
<stringValue id="162">20</stringValue>
<type>CONSTANT</type>
</item>
<item id="163" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="164">name</name>
<stringValue id="165">StandardAOIProcessing</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="166" type="java.util.HashSet">
<item id="167" type="com.j2fe.workflow.definition.Transition">
<name id="168">true</name>
<source idref="116"/>
<target idref="139"/>
</item>
</sources>
<targets id="169" type="java.util.HashSet">
<item idref="137" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="130"/>
</item>
</sources>
<targets id="170" type="java.util.HashSet">
<item id="171" type="com.j2fe.workflow.definition.Transition">
<name id="172">ToSplit</name>
<source idref="130"/>
<target id="173">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="174">Find Subscriptions</name>
<nodeHandler>com.thegoldensource.publishing.activity.FindSubscriptions</nodeHandler>
<nodeHandlerClass id="175">com.thegoldensource.publishing.activity.FindSubscriptions</nodeHandlerClass>
<parameters id="176" type="java.util.HashSet">
<item id="177" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="178">GSDM</name>
<stringValue id="179">Database</stringValue>
<type>VARIABLE</type>
</item>
<item id="180" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="181">checkPublishingTimeAOIL</name>
<stringValue id="182">checkPublishingTimeAOIL</stringValue>
<type>VARIABLE</type>
</item>
<item id="183" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="184">deltaByAdel</name>
<stringValue id="185">Delta with ADEL</stringValue>
<type>VARIABLE</type>
</item>
<item id="186" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="187">detailsMap</name>
<stringValue id="188">detailsMap</stringValue>
<type>VARIABLE</type>
</item>
<item id="189" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="190">entityMode</name>
<stringValue id="191">entityMode</stringValue>
<type>VARIABLE</type>
</item>
<item id="192" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="193">extractorFactory</name>
<stringValue id="194">Database</stringValue>
<type>VARIABLE</type>
</item>
<item id="195" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="196">isRestCall</name>
<stringValue id="197">RestCall</stringValue>
<type>VARIABLE</type>
</item>
<item id="198" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="199">isUi</name>
<stringValue id="200">UICall</stringValue>
<type>VARIABLE</type>
</item>
<item id="201" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="202">messageType</name>
<stringValue id="203">messageType</stringValue>
<type>VARIABLE</type>
</item>
<item id="204" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="205">modelId</name>
<stringValue id="206">modelName</stringValue>
<type>VARIABLE</type>
</item>
<item id="207" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="208">pubQueryBindVars</name>
<stringValue id="209">PublishingQueryBindVariables</stringValue>
<type>VARIABLE</type>
</item>
<item id="210" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="211">publishingDefinitions</name>
<stringValue id="212">publishingDefs</stringValue>
<type>VARIABLE</type>
</item>
<item id="213" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="214">publishingMode</name>
<stringValue id="215">publishingMode</stringValue>
<type>VARIABLE</type>
</item>
<item id="216" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="217">publishingPriorityNumber</name>
<stringValue id="218">PublishingPriorityNumber</stringValue>
<type>VARIABLE</type>
</item>
<item id="219" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="220">subscriptionId</name>
<stringValue id="221">subscriptionId</stringValue>
<type>VARIABLE</type>
</item>
<item id="222" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="223">subscriptionInstanceIds</name>
<stringValue id="224">SubscriptionInstanceIDs</stringValue>
<type>VARIABLE</type>
</item>
<item id="225" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="226">subscriptionName</name>
<stringValue id="227">SubscriptionName</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<persistentVariables id="228" type="java.util.HashSet">
<item id="229" type="java.lang.String">publishingDefs
1100</item>
</persistentVariables>
<sources id="230" type="java.util.HashSet">
<item idref="171" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="231" type="java.util.HashSet">
<item id="232" type="com.j2fe.workflow.definition.Transition">
<name id="233">found</name>
<source idref="173"/>
<target id="234">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="235">Automatically generated</description>
<directJoin>false</directJoin>
<name id="236">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="237">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<persistentVariables id="238" type="java.util.HashSet">
<item id="239" type="java.lang.String">publishingDefs
1000</item>
</persistentVariables>
<sources id="240" type="java.util.HashSet">
<item idref="232" type="com.j2fe.workflow.definition.Transition"/>
<item id="241" type="com.j2fe.workflow.definition.Transition">
<name id="242">goto-next</name>
<source id="243">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="244">NOP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="245">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="246" type="java.util.HashSet">
<item id="247" type="com.j2fe.workflow.definition.Transition">
<name id="248">goto-next</name>
<source id="249">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>true</directJoin>
<name id="250">Synchronize</name>
<nodeHandler>com.j2fe.workflow.handler.impl.StandardAndJoinHandler</nodeHandler>
<nodeHandlerClass id="251">com.j2fe.workflow.handler.impl.StandardAndJoinHandler</nodeHandlerClass>
<sources id="252" type="java.util.HashSet">
<item id="253" type="com.j2fe.workflow.definition.Transition">
<name id="254">goto-next</name>
<source id="255">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="256">Extraction Loop Ends</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="257">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="258" type="java.util.HashSet">
<item id="259" type="com.j2fe.workflow.definition.Transition">
<name id="260">end-loop</name>
<source id="261">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="262">Transformation Loop</name>
<nodeHandler>com.j2fe.workflow.handler.impl.ForEach</nodeHandler>
<nodeHandlerClass id="263">com.j2fe.workflow.handler.impl.ForEach</nodeHandlerClass>
<parameters id="264" type="java.util.HashSet">
<item id="265" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="266">counter</name>
<stringValue id="267">transformationDefCounter</stringValue>
<type>VARIABLE</type>
</item>
<item id="268" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="269">counter</name>
<stringValue id="270">transformationDefCounter</stringValue>
<type>VARIABLE</type>
</item>
<item id="271" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="272">incrementValue</name>
<objectValue id="273" type="java.lang.Integer">1</objectValue>
<type>CONSTANT</type>
</item>
<item id="274" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="275">input</name>
<stringValue id="276">publishingDef</stringValue>
<type>VARIABLE</type>
<variablePart id="277">deliveryDefinitions</variablePart>
</item>
<item id="278" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="279">output</name>
<stringValue id="280">deliveryDefinition</stringValue>
<type>VARIABLE</type>
</item>
<item id="281" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="282">resetOnEnd</name>
<objectValue id="283" type="java.lang.Boolean">true</objectValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="284" type="java.util.HashSet">
<item id="285" type="com.j2fe.workflow.definition.Transition">
<name id="286">goto-next</name>
<source id="287">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="288">Transformation Loop Begins</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="289">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="290" type="java.util.HashSet">
<item id="291" type="com.j2fe.workflow.definition.Transition">
<name id="292">goto-next</name>
<source id="293">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="294">NOP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="295">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="296" type="java.util.HashSet">
<item id="297" type="com.j2fe.workflow.definition.Transition">
<name id="298">ToSplit</name>
<source id="299">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="300">Automatically generated</description>
<directJoin>false</directJoin>
<name id="301">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="302">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="303" type="java.util.HashSet">
<item id="304" type="com.j2fe.workflow.definition.Transition">
<name id="305">ToSplit</name>
<source id="306">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="307">Automatically generated</description>
<directJoin>false</directJoin>
<name id="308">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="309">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="310" type="java.util.HashSet">
<item id="311" type="com.j2fe.workflow.definition.Transition">
<name id="312">ToSplit</name>
<source id="313">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="314">Automatically generated</description>
<directJoin>false</directJoin>
<name id="315">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="316">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="317" type="java.util.HashSet">
<item id="318" type="com.j2fe.workflow.definition.Transition">
<name id="319">DEFAULT</name>
<source id="320">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="321">Switch Case</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="322">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="323" type="java.util.HashSet">
<item id="324" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="325">caseItem</name>
<stringValue id="326">publishingMode</stringValue>
<type>VARIABLE</type>
</item>
<item id="327" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="328">defaultItem</name>
<stringValue id="329">DEFAULT</stringValue>
<type>CONSTANT</type>
</item>
<item id="330" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="331">nullTransition</name>
<stringValue id="332">DEFAULT</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="333" type="java.util.HashSet">
<item id="334" type="com.j2fe.workflow.definition.Transition">
<name id="335">ToSplit</name>
<source id="336">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="337">Automatically generated</description>
<directJoin>false</directJoin>
<name id="338">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="339">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="340" type="java.util.HashSet">
<item id="341" type="com.j2fe.workflow.definition.Transition">
<name id="342">found Entities</name>
<source id="343">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="344">Extract Entity</name>
<nodeHandler>com.thegoldensource.publishing.activity.ExtractBusinessEntity</nodeHandler>
<nodeHandlerClass id="345">com.thegoldensource.publishing.activity.ExtractBusinessEntity</nodeHandlerClass>
<parameters id="346" type="java.util.HashSet">
<item id="347" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="348">exclusionFieldSet</name>
<stringValue id="349">publishingDef</stringValue>
<type>VARIABLE</type>
<variablePart id="350">exclusionFieldSet</variablePart>
</item>
<item id="351" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="352">extractAllFieldsOfRelatedEntity</name>
<objectValue id="353" type="java.lang.Boolean">false</objectValue>
<type>CONSTANT</type>
</item>
<item id="354" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="355">extractEditableEntity</name>
<stringValue id="356">publishingDef</stringValue>
<type>VARIABLE</type>
<variablePart id="357">extractEditableEntity</variablePart>
</item>
<item id="358" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="359">extractionDefinition</name>
<stringValue id="360">extractionDef</stringValue>
<type>VARIABLE</type>
</item>
<item id="361" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="362">extractionResult</name>
<stringValue id="363">Entities</stringValue>
<type>VARIABLE</type>
</item>
<item id="364" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="365">extractorFactory</name>
<stringValue id="366">Database</stringValue>
<type>VARIABLE</type>
</item>
<item id="367" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="368">selectedFields</name>
<stringValue id="369">publishingDef</stringValue>
<type>VARIABLE</type>
<variablePart id="370">selectedFields</variablePart>
</item>
</parameters>
<sources id="371" type="java.util.HashSet">
<item id="372" type="com.j2fe.workflow.definition.Transition">
<name id="373">ToSplit</name>
<source id="374">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="375">Automatically generated</description>
<directJoin>false</directJoin>
<name id="376">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="377">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="378" type="java.util.HashSet">
<item id="379" type="com.j2fe.workflow.definition.Transition">
<name id="380">goto-next</name>
<source id="381">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="382">Extract Domain Values</name>
<nodeHandler>com.thegoldensource.publishing.activity.ExtractDomainValues</nodeHandler>
<nodeHandlerClass id="383">com.thegoldensource.publishing.activity.ExtractDomainValues</nodeHandlerClass>
<parameters id="384" type="java.util.HashSet">
<item id="385" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="386">extractorFactory</name>
<stringValue id="387">Database</stringValue>
<type>VARIABLE</type>
</item>
<item id="388" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="389">modelName</name>
<stringValue id="390">publishingDef</stringValue>
<type>VARIABLE</type>
<variablePart id="391">model</variablePart>
</item>
</parameters>
<sources id="392" type="java.util.HashSet">
<item id="393" type="com.j2fe.workflow.definition.Transition">
<name id="394">goto-next</name>
<source id="395">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="396">Counters</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="397">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="398" type="java.util.HashSet">
<item id="399" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="400">statements</name>
<stringValue id="401">int extractionDefCounter= 0;

int transformationDefCounter= 0;

int deliveryDefCounter= 0;

int fileLoopCounter= 0;

int jmsCounter = 0;

int xmlValidationCounter = 0;

int loopConvertedStrings = 0;</stringValue>
<type>CONSTANT</type>
</item>
<item id="402" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="403">["deliveryDefCounter"]@java/lang/Integer@</UITypeHint>
<input>false</input>
<name id="404">variables["deliveryDefCounter"]</name>
<stringValue id="405">deliveryDefCounter</stringValue>
<type>VARIABLE</type>
</item>
<item id="406" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="407">["extractionDefCounter"]@java/lang/Integer@</UITypeHint>
<input>false</input>
<name id="408">variables["extractionDefCounter"]</name>
<stringValue id="409">extractionDefCounter</stringValue>
<type>VARIABLE</type>
</item>
<item id="410" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="411">["fileLoopCounter"]@java/lang/Integer@</UITypeHint>
<input>false</input>
<name id="412">variables["fileLoopCounter"]</name>
<stringValue id="413">fileLoopCounter</stringValue>
<type>VARIABLE</type>
</item>
<item id="414" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="415">["jmsCounter"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="416">variables["jmsCounter"]</name>
<stringValue id="417">jmsCounter</stringValue>
<type>VARIABLE</type>
</item>
<item id="418" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="419">["loopConvertedStrings"]@java/lang/Integer@</UITypeHint>
<input>false</input>
<name id="420">variables["loopConvertedStrings"]</name>
<stringValue id="421">loopConvertedStrings</stringValue>
<type>VARIABLE</type>
</item>
<item id="422" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="423">["transformationDefCounter"]@java/lang/Integer@</UITypeHint>
<input>false</input>
<name id="424">variables["transformationDefCounter"]</name>
<stringValue id="425">transformationDefCounter</stringValue>
<type>VARIABLE</type>
</item>
<item id="426" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="427">["xmlValidationCounter"]@java/lang/Integer@</UITypeHint>
<input>false</input>
<name id="428">variables["xmlValidationCounter"]</name>
<stringValue id="429">xmlValidationCounter</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="430" type="java.util.HashSet">
<item id="431" type="com.j2fe.workflow.definition.Transition">
<name id="432">goto-next</name>
<source id="433">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>true</directJoin>
<name id="434">For Each Split</name>
<nodeHandler>com.j2fe.workflow.handler.impl.GenericSplit</nodeHandler>
<nodeHandlerClass id="435">com.j2fe.workflow.handler.impl.GenericSplit</nodeHandlerClass>
<parameters id="436" type="java.util.HashSet">
<item id="437" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="438">input</name>
<stringValue id="439">extractDefinitions</stringValue>
<type>VARIABLE</type>
</item>
<item id="440" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="441">output</name>
<stringValue id="442">extractionDef</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<persistentVariables id="443" type="java.util.HashSet">
<item id="444" type="java.lang.String">extractDefinitions
0100</item>
<item id="445" type="java.lang.String">extractionDef
1000</item>
</persistentVariables>
<sources id="446" type="java.util.HashSet">
<item id="447" type="com.j2fe.workflow.definition.Transition">
<name id="448">goto-next</name>
<source id="449">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="450">Create Publishing Job</name>
<nodeHandler>com.thegoldensource.publishing.activity.CreatePublishingJob</nodeHandler>
<nodeHandlerClass id="451">com.thegoldensource.publishing.activity.CreatePublishingJob</nodeHandlerClass>
<parameters id="452" type="java.util.HashSet">
<item id="453" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="454">auditId</name>
<stringValue id="455">auditIdentifier</stringValue>
<type>VARIABLE</type>
</item>
<item id="456" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="457">jobId</name>
<stringValue id="458">jobId</stringValue>
<type>VARIABLE</type>
</item>
<item id="459" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="460">pbatCount</name>
<stringValue id="461">writeCount</stringValue>
<type>VARIABLE</type>
</item>
<item id="462" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="463">pubDef</name>
<stringValue id="464">publishingDef</stringValue>
<type>VARIABLE</type>
</item>
<item id="465" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="466">sessionFactory</name>
<stringValue id="467">Database</stringValue>
<type>VARIABLE</type>
</item>
<item id="468" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="469">startRecordNumber</name>
<stringValue id="470">startRecordSequence</stringValue>
<type>VARIABLE</type>
</item>
<item id="471" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="472">subscriptionInstanceId</name>
<stringValue id="473">publishingDef</stringValue>
<type>VARIABLE</type>
<variablePart id="474">subscriptionInstanceId</variablePart>
</item>
<item id="475" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="476">transactionId</name>
<stringValue id="477">transactionId</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="478" type="java.util.HashSet">
<item id="479" type="com.j2fe.workflow.definition.Transition">
<name id="480">extraction</name>
<source id="481">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="482">Write ExtractionLog</name>
<nodeHandler>com.thegoldensource.publishing.activity.WriteExtractionLog</nodeHandler>
<nodeHandlerClass id="483">com.thegoldensource.publishing.activity.WriteExtractionLog</nodeHandlerClass>
<parameters id="484" type="java.util.HashSet">
<item id="485" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="486">auditId</name>
<stringValue id="487">auditIdentifier</stringValue>
<type>VARIABLE</type>
</item>
<item id="488" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="489">entityMode</name>
<stringValue id="490">publishingDef</stringValue>
<type>VARIABLE</type>
<variablePart id="491">entityMode</variablePart>
</item>
<item id="492" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="493">eql</name>
<stringValue id="494">publishingDef</stringValue>
<type>VARIABLE</type>
<variablePart id="495">eql</variablePart>
</item>
<item id="496" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="497">exclusionFieldSet</name>
<stringValue id="498">publishingDef</stringValue>
<type>VARIABLE</type>
<variablePart id="499">exclusionFieldSet</variablePart>
</item>
<item id="500" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="501">exclusionFieldSet</name>
<stringValue id="502">FieldsToBeExcludedPublishing</stringValue>
<type>VARIABLE</type>
</item>
<item id="503" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="504">extractAllFieldsOfRelatedEntity</name>
<objectValue idref="353"/>
<type>CONSTANT</type>
</item>
<item id="505" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="506">extractDefinitions</name>
<stringValue id="507">extractDefinitions</stringValue>
<type>VARIABLE</type>
</item>
<item id="508" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="509">extractRuleFields</name>
<objectValue idref="283"/>
<type>CONSTANT</type>
</item>
<item id="510" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="511">extractRuleFields</name>
<stringValue id="512">DroolsRulesFields</stringValue>
<type>VARIABLE</type>
</item>
<item id="513" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="514">extractionTempTableName</name>
<stringValue id="515">FT_T_PBAT</stringValue>
<type>CONSTANT</type>
</item>
<item id="516" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="517">extractorFactory</name>
<stringValue id="518">Database</stringValue>
<type>VARIABLE</type>
</item>
<item id="519" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="520">filterConditionForMultiOccDataGroup</name>
<stringValue id="521">FilterQueryMultiOccurringDataGroup</stringValue>
<type>VARIABLE</type>
</item>
<item id="522" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="523">jobId</name>
<stringValue id="524">jobId</stringValue>
<type>VARIABLE</type>
</item>
<item id="525" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="526">maxExtractCount</name>
<stringValue id="527">PublishingBulkSize</stringValue>
<type>VARIABLE</type>
</item>
<item id="528" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="529">modelName</name>
<stringValue id="530">publishingDef</stringValue>
<type>VARIABLE</type>
<variablePart id="531">model</variablePart>
</item>
<item id="532" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="533">pubQueryBindVariables</name>
<stringValue id="534">publishingDef</stringValue>
<type>VARIABLE</type>
<variablePart id="535">pubQueryBindVars</variablePart>
</item>
<item id="536" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="537">queryParameter</name>
<stringValue id="538">QueryParameter</stringValue>
<type>VARIABLE</type>
</item>
<item id="539" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="540">queryParameter</name>
<stringValue id="541">queryParameter</stringValue>
<type>VARIABLE</type>
</item>
<item id="542" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="543">selectedFields</name>
<stringValue id="544">publishingDef</stringValue>
<type>VARIABLE</type>
<variablePart id="545">selectedFields</variablePart>
</item>
<item id="546" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="547">selectedFields</name>
<stringValue id="548">FieldsToBeIncludedPublishing</stringValue>
<type>VARIABLE</type>
</item>
<item id="549" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="550">subscriptionExecutionId</name>
<stringValue id="551">publishingDef</stringValue>
<type>VARIABLE</type>
<variablePart id="552">subscriptionInstanceId</variablePart>
</item>
<item id="553" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="554">tableName</name>
<stringValue id="555">publishingDef</stringValue>
<type>VARIABLE</type>
<variablePart id="556">tableId</variablePart>
</item>
<item id="557" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="558">transactionId</name>
<stringValue id="559">transactionId</stringValue>
<type>VARIABLE</type>
</item>
<item id="560" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="561">writeCount</name>
<stringValue id="562">writeCount</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<persistentVariables id="563" type="java.util.HashSet">
<item id="564" type="java.lang.String">publishingDef
1000</item>
</persistentVariables>
<sources id="565" type="java.util.HashSet">
<item id="566" type="com.j2fe.workflow.definition.Transition">
<name id="567">loop</name>
<source id="568">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="569">Publishing Def Loop</name>
<nodeHandler>com.j2fe.workflow.handler.impl.ForEach</nodeHandler>
<nodeHandlerClass id="570">com.j2fe.workflow.handler.impl.ForEach</nodeHandlerClass>
<parameters id="571" type="java.util.HashSet">
<item id="572" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="573">counter</name>
<stringValue id="574">publishingDefCounter</stringValue>
<type>VARIABLE</type>
</item>
<item id="575" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="576">counter</name>
<stringValue id="577">publishingDefCounter</stringValue>
<type>VARIABLE</type>
</item>
<item id="578" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="579">incrementValue</name>
<objectValue idref="273"/>
<type>CONSTANT</type>
</item>
<item id="580" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="581">input</name>
<stringValue id="582">publishingDefs</stringValue>
<type>VARIABLE</type>
</item>
<item id="583" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="584">output</name>
<stringValue id="585">publishingDef</stringValue>
<type>VARIABLE</type>
</item>
<item id="586" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="587">resetOnEnd</name>
<objectValue idref="283"/>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="588" type="java.util.HashSet">
<item id="589" type="com.j2fe.workflow.definition.Transition">
<name id="590">ToSplit</name>
<source idref="234"/>
<target idref="568"/>
</item>
</sources>
<targets id="591" type="java.util.HashSet">
<item id="592" type="com.j2fe.workflow.definition.Transition">
<name id="593">end-loop</name>
<source idref="568"/>
<target id="594">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="595">CreateSingleFile?</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="596">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="597" type="java.util.HashSet">
<item id="598" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="599">caseInsensitive</name>
<stringValue id="600">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="601" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="602">caseItem</name>
<stringValue id="603">CreateSingleFile</stringValue>
<type>VARIABLE</type>
</item>
<item id="604" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="605">defaultItem</name>
<stringValue id="606">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="607" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="608">nullTransition</name>
<stringValue id="609">false</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="610" type="java.util.HashSet">
<item idref="592" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="611" type="java.util.HashSet">
<item id="612" type="com.j2fe.workflow.definition.Transition">
<name id="613">false</name>
<source idref="594"/>
<target id="614">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="615">Close Publishing Job</name>
<nodeHandler>com.thegoldensource.publishing.activity.ClosePublishingJob</nodeHandler>
<nodeHandlerClass id="616">com.thegoldensource.publishing.activity.ClosePublishingJob</nodeHandlerClass>
<parameters id="617" type="java.util.HashSet">
<item id="618" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="619">gsdm</name>
<stringValue id="620">Database</stringValue>
<type>VARIABLE</type>
</item>
<item id="621" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="622">pubDefs</name>
<stringValue id="623">publishingDefs</stringValue>
<type>VARIABLE</type>
</item>
<item id="624" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="625">sessionFactory</name>
<stringValue id="626">Database</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="627" type="java.util.HashSet">
<item idref="612" type="com.j2fe.workflow.definition.Transition"/>
<item id="628" type="com.j2fe.workflow.definition.Transition">
<name id="629">false</name>
<source id="630">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="631">Is UI Call</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="632">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="633" type="java.util.HashSet">
<item id="634" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="635">caseItem</name>
<stringValue id="636">UICall</stringValue>
<type>VARIABLE</type>
</item>
<item id="637" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="638">defaultItem</name>
<stringValue id="639">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="640" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="641">nullTransition</name>
<stringValue id="642">false</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="643" type="java.util.HashSet">
<item id="644" type="com.j2fe.workflow.definition.Transition">
<name id="645">false</name>
<source id="646">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="647">Is Rest Call</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="648">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="649" type="java.util.HashSet">
<item id="650" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="651">caseItem</name>
<stringValue id="652">RestCall</stringValue>
<type>VARIABLE</type>
</item>
<item id="653" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="654">defaultItem</name>
<stringValue id="655">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="656" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="657">nullTransition</name>
<stringValue id="658">false</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="659" type="java.util.HashSet">
<item id="660" type="com.j2fe.workflow.definition.Transition">
<name id="661">goto-next</name>
<source id="662">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="663">Delete Temp Files</name>
<nodeHandler>com.j2fe.general.activities.CommandLine</nodeHandler>
<nodeHandlerClass id="664">com.j2fe.general.activities.CommandLine</nodeHandlerClass>
<parameters id="665" type="java.util.HashSet">
<item id="666" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="667">commandLine</name>
<stringValue id="668">deleteTempFiles</stringValue>
<type>VARIABLE</type>
</item>
<item id="669" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="670">discardLog</name>
<objectValue idref="283"/>
<type>CONSTANT</type>
</item>
<item id="671" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="672">id</name>
<stringValue id="673">UniqueProcessId</stringValue>
<type>VARIABLE</type>
</item>
<item id="674" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="675">logFile</name>
<stringValue id="676">LogFile</stringValue>
<type>VARIABLE</type>
</item>
<item id="677" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="678">pid</name>
<stringValue id="679">ProcessID</stringValue>
<type>VARIABLE</type>
</item>
<item id="680" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="681">returnCode</name>
<stringValue id="682">ReturnCode</stringValue>
<type>VARIABLE</type>
</item>
<item id="683" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="684">returnCodeMeaning</name>
<stringValue id="685">UNIXReturnCodeMeaning</stringValue>
<type>VARIABLE</type>
</item>
<item id="686" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="687">timeout</name>
<stringValue id="688">300</stringValue>
<type>CONSTANT</type>
</item>
<item id="689" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="690">timeoutShutdown</name>
<stringValue id="691">TimedOut</stringValue>
<type>VARIABLE</type>
</item>
<item id="692" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="693">waitForEnd</name>
<stringValue id="694">true</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="695" type="java.util.HashSet">
<item id="696" type="com.j2fe.workflow.definition.Transition">
<name id="697">goto-next</name>
<source id="698">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="699">AppendToFile</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="700">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="701" type="java.util.HashSet">
<item id="702" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="703">statements</name>
<objectValue id="704" type="java.lang.String">import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;


String directory = outputDir;

System.out.println("outputDir" + outputDir);
String fileExtension = subscriptionProperties.get("FILE_EXTENSION");

if( CreateSingleFile == true )
{
	if( ( fileExtension != null &amp;&amp; !fileExtension.isEmpty() &amp;&amp; fileExtension.equalsIgnoreCase("xml") ) || 
		(publishingFileType !=null &amp;&amp; publishingFileType.toString().equals("XML") ) )
	{
		   try 
		   {
			   String filePath = directory + "/" + nameOfFile;
			   File file = new File( filePath );
			   FileWriter responseFileWriter = new FileWriter(file, true);
		  	   BufferedWriter responseFileBWriter = new BufferedWriter(responseFileWriter);
			
			   if(responseFileBWriter != null)
			   {
				String footerTag = "&lt;/" + XMLCoveringHeaderTag + "&gt;";
	        	        responseFileBWriter.write( footerTag );
			    	responseFileBWriter.flush();
				responseFileBWriter.close();
				responseFileWriter.close();
		    	  }


		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		
	}

   }
</objectValue>
<type>CONSTANT</type>
</item>
<item id="705" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="706">["CreateSingleFile"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="707">variables["CreateSingleFile"]</name>
<stringValue id="708">CreateSingleFile</stringValue>
<type>VARIABLE</type>
</item>
<item id="709" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="710">["XMLCoveringHeaderTag"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="711">variables["XMLCoveringHeaderTag"]</name>
<stringValue id="712">XMLCoveringHeaderTag</stringValue>
<type>VARIABLE</type>
</item>
<item id="713" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="714">variables["nameOfFile"]</name>
<stringValue id="715">nameOfFile</stringValue>
<type>VARIABLE</type>
</item>
<item id="716" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="717">["outputDir"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="718">variables["outputDir"]</name>
<stringValue id="719">publishingDefs</stringValue>
<type>VARIABLE</type>
<variablePart id="720">[0].deliveryDefinitions[0].destinationDefinitions[0].destinationValue</variablePart>
</item>
<item id="721" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="722">["publishingFileType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="723">variables["publishingFileType"]</name>
<stringValue id="724">publishingDefs</stringValue>
<type>VARIABLE</type>
<variablePart id="725">[0].deliveryDefinitions[0].outputType</variablePart>
</item>
<item id="726" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="727">variables["subscriptionProperties"]</name>
<stringValue id="728">publishingDefs</stringValue>
<type>VARIABLE</type>
<variablePart id="729">[0].deliveryDefinitions[0].propertyMap</variablePart>
</item>
</parameters>
<sources id="730" type="java.util.HashSet">
<item id="731" type="com.j2fe.workflow.definition.Transition">
<name id="732">goto-next</name>
<source id="733">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="734">Command Line</name>
<nodeHandler>com.j2fe.general.activities.CommandLine</nodeHandler>
<nodeHandlerClass id="735">com.j2fe.general.activities.CommandLine</nodeHandlerClass>
<parameters id="736" type="java.util.HashSet">
<item id="737" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="738">commandLine</name>
<stringValue id="739">mergeCommand</stringValue>
<type>VARIABLE</type>
</item>
<item id="740" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="741">discardLog</name>
<objectValue idref="283"/>
<type>CONSTANT</type>
</item>
<item id="742" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="743">id</name>
<stringValue id="744">UniqueProcessId</stringValue>
<type>VARIABLE</type>
</item>
<item id="745" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="746">logFile</name>
<stringValue id="747">LogFile</stringValue>
<type>VARIABLE</type>
</item>
<item id="748" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="749">pid</name>
<stringValue id="750">ProcessID</stringValue>
<type>VARIABLE</type>
</item>
<item id="751" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="752">returnCode</name>
<stringValue id="753">ReturnCode</stringValue>
<type>VARIABLE</type>
</item>
<item id="754" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="755">returnCodeMeaning</name>
<stringValue id="756">UNIXReturnCodeMeaning</stringValue>
<type>VARIABLE</type>
</item>
<item id="757" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="758">timeout</name>
<stringValue id="759">300</stringValue>
<type>CONSTANT</type>
</item>
<item id="760" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="761">timeoutShutdown</name>
<stringValue id="762">TimedOut</stringValue>
<type>VARIABLE</type>
</item>
<item id="763" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="764">waitForEnd</name>
<stringValue id="765">true</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="766" type="java.util.HashSet">
<item id="767" type="com.j2fe.workflow.definition.Transition">
<name id="768">ToSplit</name>
<source id="769">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="770">Automatically generated</description>
<directJoin>false</directJoin>
<name id="771">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="772">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="773" type="java.util.HashSet">
<item id="774" type="com.j2fe.workflow.definition.Transition">
<name id="775">goto-next</name>
<source id="776">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="777">CreateFileName</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="778">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="779" type="java.util.HashSet">
<item id="780" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="781">statements</name>
<objectValue id="782" type="java.lang.String">import java.text.SimpleDateFormat;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;


int mergeCommandsCounter = 0;
String nameOfFile = "PublishedFile";
String mergeCommand = "cat ";
String directory = outputDir;
String deleteTempFiles = "rm -r " + directory + "/Temp_" + threadId + "*.*";
String fileType = "xml";

String PublishingFileName = subscriptionProperties.get("FILE_NAME");
String fileExtension = subscriptionProperties.get("FILE_EXTENSION");

System.out.println("outputDir" + outputDir);

if( CreateSingleFile == true )
{
	if(PublishingFileName == null || ( PublishingFileName != null &amp;&amp; PublishingFileName.isEmpty() ) )
	{
		   	nameOfFile ="PublishedFile"+ "_" + threadId + "_" + System.nanoTime( ); 
	
		   	//nameOfFile += "_" + Integer.toString(EntitySequenceNumbers[0]);
	
	}
	else
	{
		if ( PublishingFileName.lastIndexOf(".") &gt; 0)
		{
			nameOfFile = PublishingFileName.substring(0,PublishingFileName.lastIndexOf("."));
			if(DateFormat != null &amp;&amp; !DateFormat.isEmpty())
			{			
			  	nameOfFile += "_" + threadId + "_" + new SimpleDateFormat(DateFormat).format(Calendar.getInstance().getTime());
			  	//nameOfFile += "_" + new SimpleDateFormat(DateFormat).format(Instant.now().toEpochMilli());
			 }
			   		         
			 nameOfFile += PublishingFileName.substring(PublishingFileName.lastIndexOf("."));
		     }
		  else
		  {
			  nameOfFile = PublishingFileName;    
			  if(DateFormat != null &amp;&amp; !DateFormat.isEmpty())
			   {			    
			     	   nameOfFile += "_"+ threadId + "_" + new SimpleDateFormat(DateFormat).format(Calendar.getInstance().getTime());
			       	    // nameOfFile += "_" + new SimpleDateFormat(DateFormat).format(Instant.now().toEpochMilli());
			     }
			                  	
	            }

	   }


	if( fileExtension!= null &amp;&amp; !fileExtension.isEmpty())
	{
		nameOfFile += fileExtension;

		if(publishingFileType !=null &amp;&amp; publishingFileType.toString().equals("JSON"))
			fileType = "json";
		else if(publishingFileType !=null &amp;&amp; publishingFileType.toString().equals("CSV"))
			fileType = "csv";
	}
   	else if(publishingFileType !=null &amp;&amp; publishingFileType.toString().equals("JSON"))
	{
   		nameOfFile += ".json";
		fileType = "json";
	}
   	else if(publishingFileType !=null &amp;&amp; publishingFileType.toString().equals("CSV"))
	{
   		nameOfFile += ".csv";
		fileType = "csv";
	}
   	else
   		nameOfFile += ".xml";


	String tempFileNameAlias = "/Temp_" + threadId + "*.*"; 
	//mergeCommand +=  directory + "/Temp*.* &gt; " + directory  + "/" + nameOfFile;	
	//mergeCommand +=  directory + "/Temp*.*  | tee " + directory  + "/" + nameOfFile;	
	mergeCommand +=  directory + tempFileNameAlias + " | tee -a " + directory  + "/" + nameOfFile;	

	/*
	if( ( ( fileExtension != null &amp;&amp; !fileExtension.isEmpty() &amp;&amp; fileExtension.equalsIgnoreCase("xml") ) || 
		(publishingFileType !=null &amp;&amp; publishingFileType.toString().equals("XML") ) ) ||
		( ( fileExtension != null &amp;&amp; !fileExtension.isEmpty() &amp;&amp; fileExtension.equalsIgnoreCase("csv") ) || 
		(publishingFileType !=null &amp;&amp; publishingFileType.toString().equals("CSV") ) ) )
	*/

	if( fileType.equals("xml") || fileType.equals("csv") )
	{
		   try 
		   {
			   String filePath = directory + "/" + nameOfFile;
			   File file = new File( filePath );
			   FileWriter responseFileWriter = new FileWriter(file, true);
		  	   BufferedWriter responseFileBWriter = new BufferedWriter(responseFileWriter);
			
			   if(responseFileBWriter != null)
			   {
				if( fileType.equals("xml"))		
				{	
					responseFileWriter.write("&lt;?xml version='1.0' encoding='utf-8'?&gt;");
					String headerTag = "&lt;" + XMLCoveringHeaderTag + "&gt;";
		        	        responseFileBWriter.write( headerTag );
				}
				else if( fileType.equals("csv") &amp;&amp; headerString != null &amp;&amp; !headerString.isEmpty() )
				{
					responseFileBWriter.write(headerString);
					responseFileBWriter.write("\n");
				}
				else if( fileType.equals("csv") &amp;&amp; CSVHeader != null &amp;&amp; ( CSVHeader.length() &gt; 0) )
				{
					responseFileBWriter.write( CSVHeader.toString() );
					responseFileBWriter.write("\n");
				}

			    	responseFileBWriter.flush();
				responseFileBWriter.close();
				responseFileWriter.close();
		    	  }
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		
	}
   }
</objectValue>
<type>CONSTANT</type>
</item>
<item id="783" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="784">variables["CSVHeader"]</name>
<stringValue id="785">CSVHeader</stringValue>
<type>VARIABLE</type>
</item>
<item id="786" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="787">variables["CSVHeader"]</name>
<stringValue id="788">CSVHeader</stringValue>
<type>VARIABLE</type>
</item>
<item id="789" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="790">["CreateSingleFile"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="791">variables["CreateSingleFile"]</name>
<stringValue id="792">CreateSingleFile</stringValue>
<type>VARIABLE</type>
</item>
<item id="793" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="794">variables["DateFormat"]</name>
<stringValue id="795">DateFormat</stringValue>
<type>VARIABLE</type>
</item>
<item id="796" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="797">["GSOName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="798">variables["GSOName"]</name>
<stringValue id="799">publishingDefs</stringValue>
<type>VARIABLE</type>
<variablePart id="800">[0].model</variablePart>
</item>
<item id="801" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="802">["XMLCoveringHeaderTag"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="803">variables["XMLCoveringHeaderTag"]</name>
<stringValue id="804">XMLCoveringHeaderTag</stringValue>
<type>VARIABLE</type>
</item>
<item id="805" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="806">["deleteTempFiles"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="807">variables["deleteTempFiles"]</name>
<stringValue id="808">deleteTempFiles</stringValue>
<type>VARIABLE</type>
</item>
<item id="809" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="810">["headerString"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="811">variables["headerString"]</name>
<stringValue id="812">headerString</stringValue>
<type>VARIABLE</type>
</item>
<item id="813" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="814">["mergeCommand"]@java/lang/Object@</UITypeHint>
<input>false</input>
<name id="815">variables["mergeCommand"]</name>
<stringValue id="816">mergeCommand</stringValue>
<type>VARIABLE</type>
</item>
<item id="817" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="818">["nameOfFile"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="819">variables["nameOfFile"]</name>
<stringValue id="820">nameOfFile</stringValue>
<type>VARIABLE</type>
</item>
<item id="821" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="822">["outputDir"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="823">variables["outputDir"]</name>
<stringValue id="824">publishingDefs</stringValue>
<type>VARIABLE</type>
<variablePart id="825">[0].deliveryDefinitions[0].destinationDefinitions[0].destinationValue</variablePart>
</item>
<item id="826" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="827">variables["outputDir"]</name>
<stringValue id="828">outputDir</stringValue>
<type>VARIABLE</type>
</item>
<item id="829" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="830">["publishingFileType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="831">variables["publishingFileType"]</name>
<stringValue id="832">publishingDefs</stringValue>
<type>VARIABLE</type>
<variablePart id="833">[0].deliveryDefinitions[0].outputType</variablePart>
</item>
<item id="834" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="835">variables["subscriptionProperties"]</name>
<stringValue id="836">publishingDefs</stringValue>
<type>VARIABLE</type>
<variablePart id="837">[0].deliveryDefinitions[0].propertyMap</variablePart>
</item>
<item id="838" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="839">["threadId"]@java/lang/Long@</UITypeHint>
<input>true</input>
<name id="840">variables["threadId"]</name>
<stringValue id="841">threadId</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="842" type="java.util.HashSet">
<item id="843" type="com.j2fe.workflow.definition.Transition">
<name id="844">true</name>
<source id="845">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="846">Switch Case</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="847">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="848" type="java.util.HashSet">
<item id="849" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="850">caseInsensitive</name>
<objectValue idref="283"/>
<type>CONSTANT</type>
</item>
<item id="851" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="852">caseItem</name>
<stringValue id="853">fileExists</stringValue>
<type>VARIABLE</type>
</item>
<item id="854" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="855">defaultItem</name>
<stringValue id="856">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="857" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="858">nullTransition</name>
<stringValue id="859">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="860" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="861">trimSpaces</name>
<objectValue idref="283"/>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="862" type="java.util.HashSet">
<item id="863" type="com.j2fe.workflow.definition.Transition">
<name id="864">true</name>
<source id="865">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="866">Check Temp Files Present</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="867">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="868" type="java.util.HashSet">
<item id="869" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="870">statements</name>
<stringValue id="871">import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

String directory = outputDir;
String tempFileNameAlias = "Temp_" + threadId; 
boolean fileExists = false;

File file = new File( directory );
File[] listOfFiles = file.listFiles();

if(listOfFiles == null)
{
	fileExists = false;
}
else
{
	for( int i = 0; i &lt; listOfFiles.length; i++)
	{
		if( listOfFiles[i].getName().startsWith( tempFileNameAlias ))
		{
			fileExists = true;
			break;
		}
	}
}
</stringValue>
<type>CONSTANT</type>
</item>
<item id="872" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="873">["fileExists"]@java/lang/Boolean@</UITypeHint>
<input>false</input>
<name id="874">variables["fileExists"]</name>
<stringValue id="875">fileExists</stringValue>
<type>VARIABLE</type>
</item>
<item id="876" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="877">["outputDir"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="878">variables["outputDir"]</name>
<stringValue id="879">publishingDefs</stringValue>
<type>VARIABLE</type>
<variablePart id="880">[0].deliveryDefinitions[0].destinationDefinitions[0].destinationValue</variablePart>
</item>
<item id="881" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="882">["threadId"]@java/lang/Long@</UITypeHint>
<input>true</input>
<name id="883">variables["threadId"]</name>
<stringValue id="884">threadId</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="885" type="java.util.HashSet">
<item id="886" type="com.j2fe.workflow.definition.Transition">
<name id="887">true</name>
<source idref="594"/>
<target idref="865"/>
</item>
</sources>
<targets id="888" type="java.util.HashSet">
<item idref="863" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="845"/>
</item>
</sources>
<targets id="889" type="java.util.HashSet">
<item id="890" type="com.j2fe.workflow.definition.Transition">
<name id="891">false</name>
<source idref="845"/>
<target idref="614"/>
</item>
<item idref="843" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="776"/>
</item>
</sources>
<targets id="892" type="java.util.HashSet">
<item idref="774" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="769"/>
</item>
</sources>
<targets id="893" type="java.util.HashSet">
<item idref="767" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="733"/>
</item>
</sources>
<targets id="894" type="java.util.HashSet">
<item idref="731" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="698"/>
</item>
</sources>
<targets id="895" type="java.util.HashSet">
<item idref="696" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="662"/>
</item>
</sources>
<targets id="896" type="java.util.HashSet">
<item idref="660" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="646"/>
</item>
</sources>
<targets id="897" type="java.util.HashSet">
<item idref="644" type="com.j2fe.workflow.definition.Transition"/>
<item id="898" type="com.j2fe.workflow.definition.Transition">
<name id="899">true</name>
<source idref="646"/>
<target id="900">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="901">OutputFile</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="902">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="903" type="java.util.HashSet">
<item id="904" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="905">statements</name>
<stringValue id="906">String PublishedFile = outputDir+"/"+nameOfFile;
String deletePubFileCmd = "rm " + PublishedFile + "*";
boolean zipRequired =false;
String zipFileCommand = "zip -j ";
File file = new File(PublishedFile );
if(isRestCall &amp;&amp; file.exists()) { 
        double bytes = file.length();
        double megabytes = (bytes / (1024*1024));
	if(megabytes &gt; 500) 
	{
		zipRequired =true;
		String zipName = PublishedFile.substring(0,PublishedFile.lastIndexOf("."));
		zipFileCommand = zipFileCommand + zipName +".zip " + PublishedFile ;
		PublishedFile = zipName +".zip ";
		deletePubFileCmd = "rm " + zipName  + "*"; 
	}
}

Output= PublishedFile;</stringValue>
<type>CONSTANT</type>
</item>
<item id="907" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="908">["PublishedFile"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="909">variables["PublishedFile"]</name>
<stringValue id="910">PublishedFile</stringValue>
<type>VARIABLE</type>
</item>
<item id="911" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="912">["deletePubFileCmd"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="913">variables["deletePubFileCmd"]</name>
<stringValue id="914">deletePubFileCmd</stringValue>
<type>VARIABLE</type>
</item>
<item id="915" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="916">["isRestCall"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="917">variables["isRestCall"]</name>
<stringValue id="918">RestCall</stringValue>
<type>VARIABLE</type>
</item>
<item id="919" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="920">["nameOfFile"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="921">variables["nameOfFile"]</name>
<stringValue id="922">nameOfFile</stringValue>
<type>VARIABLE</type>
</item>
<item id="923" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="924">["outputDir"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="925">variables["outputDir"]</name>
<stringValue id="926">outputDir</stringValue>
<type>VARIABLE</type>
</item>
<item id="927" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="928">["zipFileCommand"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="929">variables["zipFileCommand"]</name>
<stringValue id="930">zipFileCommand</stringValue>
<type>VARIABLE</type>
</item>
<item id="931" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="932">["zipRequired"]@java/lang/Boolean@</UITypeHint>
<input>false</input>
<name id="933">variables["zipRequired"]</name>
<stringValue id="934">zipRequired</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="935" type="java.util.HashSet">
<item idref="898" type="com.j2fe.workflow.definition.Transition"/>
<item id="936" type="com.j2fe.workflow.definition.Transition">
<name id="937">true</name>
<source idref="630"/>
<target idref="900"/>
</item>
</sources>
<targets id="938" type="java.util.HashSet">
<item id="939" type="com.j2fe.workflow.definition.Transition">
<name id="940">goto-next</name>
<source idref="900"/>
<target id="941">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="942">Zip File</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="943">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="944" type="java.util.HashSet">
<item id="945" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="946">caseItem</name>
<stringValue id="947">zipRequired</stringValue>
<type>VARIABLE</type>
</item>
<item id="948" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="949">defaultItem</name>
<stringValue id="950">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="951" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="952">nullTransition</name>
<stringValue id="953">false</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="954" type="java.util.HashSet">
<item idref="939" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="955" type="java.util.HashSet">
<item id="956" type="com.j2fe.workflow.definition.Transition">
<name id="957">false</name>
<source idref="941"/>
<target id="958">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="959">Publish to Staging</name>
<nodeHandler>com.thegoldensource.publishing.activity.PublishToStaging</nodeHandler>
<nodeHandlerClass id="960">com.thegoldensource.publishing.activity.PublishToStaging</nodeHandlerClass>
<parameters id="961" type="java.util.HashSet">
<item id="962" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="963">factory</name>
<stringValue id="964">Database</stringValue>
<type>VARIABLE</type>
</item>
<item id="965" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="966">fileName</name>
<stringValue id="967">PublishedFile</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="968" type="java.util.HashSet">
<item idref="956" type="com.j2fe.workflow.definition.Transition"/>
<item id="969" type="com.j2fe.workflow.definition.Transition">
<name id="970">goto-next</name>
<source id="971">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="972">Execute zip command</name>
<nodeHandler>com.j2fe.general.activities.CommandLine</nodeHandler>
<nodeHandlerClass id="973">com.j2fe.general.activities.CommandLine</nodeHandlerClass>
<parameters id="974" type="java.util.HashSet">
<item id="975" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="976">commandLine</name>
<stringValue id="977">zipFileCommand</stringValue>
<type>VARIABLE</type>
</item>
<item id="978" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="979">discardLog</name>
<objectValue idref="283"/>
<type>CONSTANT</type>
</item>
<item id="980" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="981">id</name>
<stringValue id="982">UniqueProcessId</stringValue>
<type>VARIABLE</type>
</item>
<item id="983" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="984">logFile</name>
<stringValue id="985">LogFile</stringValue>
<type>VARIABLE</type>
</item>
<item id="986" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="987">pid</name>
<stringValue id="988">ProcessID</stringValue>
<type>VARIABLE</type>
</item>
<item id="989" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="990">returnCode</name>
<stringValue id="991">ReturnCode</stringValue>
<type>VARIABLE</type>
</item>
<item id="992" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="993">returnCodeMeaning</name>
<stringValue id="994">UNIXReturnCodeMeaning</stringValue>
<type>VARIABLE</type>
</item>
<item id="995" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="996">timeout</name>
<stringValue id="997">300</stringValue>
<type>CONSTANT</type>
</item>
<item id="998" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="999">timeoutShutdown</name>
<stringValue id="1000">TimedOut</stringValue>
<type>VARIABLE</type>
</item>
<item id="1001" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1002">waitForEnd</name>
<stringValue id="1003">true</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="1004" type="java.util.HashSet">
<item id="1005" type="com.j2fe.workflow.definition.Transition">
<name id="1006">true</name>
<source idref="941"/>
<target idref="971"/>
</item>
</sources>
<targets id="1007" type="java.util.HashSet">
<item idref="969" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="958"/>
</item>
</sources>
<targets id="1008" type="java.util.HashSet">
<item id="1009" type="com.j2fe.workflow.definition.Transition">
<name id="1010">goto-next</name>
<source idref="958"/>
<target id="1011">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="1012">Delete Published File</name>
<nodeHandler>com.j2fe.general.activities.CommandLine</nodeHandler>
<nodeHandlerClass id="1013">com.j2fe.general.activities.CommandLine</nodeHandlerClass>
<parameters id="1014" type="java.util.HashSet">
<item id="1015" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1016">commandLine</name>
<stringValue id="1017">deletePubFileCmd</stringValue>
<type>VARIABLE</type>
</item>
<item id="1018" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1019">id</name>
<stringValue id="1020">UniqueProcessId</stringValue>
<type>VARIABLE</type>
</item>
<item id="1021" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1022">logFile</name>
<stringValue id="1023">LogFile</stringValue>
<type>VARIABLE</type>
</item>
<item id="1024" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1025">pid</name>
<stringValue id="1026">ProcessID</stringValue>
<type>VARIABLE</type>
</item>
<item id="1027" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1028">returnCode</name>
<stringValue id="1029">ReturnCode</stringValue>
<type>VARIABLE</type>
</item>
<item id="1030" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1031">returnCodeMeaning</name>
<stringValue id="1032">UNIXReturnCodeMeaning</stringValue>
<type>VARIABLE</type>
</item>
<item id="1033" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1034">timeout</name>
<stringValue id="1035">300</stringValue>
<type>CONSTANT</type>
</item>
<item id="1036" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1037">timeoutShutdown</name>
<stringValue id="1038">TimedOut</stringValue>
<type>VARIABLE</type>
</item>
<item id="1039" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1040">waitForEnd</name>
<stringValue id="1041">true</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="1042" type="java.util.HashSet">
<item idref="1009" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="1043" type="java.util.HashSet">
<item id="1044" type="com.j2fe.workflow.definition.Transition">
<name id="1045">goto-next</name>
<source idref="1011"/>
<target idref="614"/>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
<item idref="1005" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="630"/>
</item>
</sources>
<targets id="1046" type="java.util.HashSet">
<item idref="628" type="com.j2fe.workflow.definition.Transition"/>
<item idref="936" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="614"/>
</item>
<item idref="890" type="com.j2fe.workflow.definition.Transition"/>
<item idref="1044" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="1047" type="java.util.HashSet">
<item id="1048" type="com.j2fe.workflow.definition.Transition">
<name id="1049">goto-next</name>
<source idref="614"/>
<target id="1050">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="1051">Close Subscription Execution</name>
<nodeHandler>com.thegoldensource.publishing.activity.CloseSubscriptionExecution</nodeHandler>
<nodeHandlerClass id="1052">com.thegoldensource.publishing.activity.CloseSubscriptionExecution</nodeHandlerClass>
<parameters id="1053" type="java.util.HashSet">
<item id="1054" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1055">subscriptionExecutionID</name>
<stringValue id="1056">SubscriptionInstanceIDs</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="1057" type="java.util.HashSet">
<item idref="1048" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="1058" type="java.util.HashSet">
<item id="1059" type="com.j2fe.workflow.definition.Transition">
<name id="1060">goto-next</name>
<source idref="1050"/>
<target idref="3"/>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
<item idref="886" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</target>
</item>
<item idref="566" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="481"/>
</item>
</sources>
<targets id="1061" type="java.util.HashSet">
<item idref="479" type="com.j2fe.workflow.definition.Transition"/>
<item id="1062" type="com.j2fe.workflow.definition.Transition">
<name id="1063">no-extraction</name>
<source idref="481"/>
<target idref="234"/>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="449"/>
</item>
</sources>
<targets id="1064" type="java.util.HashSet">
<item idref="447" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="433"/>
</item>
</sources>
<targets id="1065" type="java.util.HashSet">
<item idref="431" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ANDSPLIT</type>
</source>
<target idref="395"/>
</item>
</sources>
<targets id="1066" type="java.util.HashSet">
<item idref="393" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="381"/>
</item>
</sources>
<targets id="1067" type="java.util.HashSet">
<item idref="379" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="374"/>
</item>
</sources>
<targets id="1068" type="java.util.HashSet">
<item idref="372" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="343"/>
</item>
</sources>
<targets id="1069" type="java.util.HashSet">
<item idref="341" type="com.j2fe.workflow.definition.Transition"/>
<item id="1070" type="com.j2fe.workflow.definition.Transition">
<name id="1071">no Entities</name>
<source idref="343"/>
<target idref="249"/>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="336"/>
</item>
</sources>
<targets id="1072" type="java.util.HashSet">
<item idref="334" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="320"/>
</item>
</sources>
<targets id="1073" type="java.util.HashSet">
<item idref="318" type="com.j2fe.workflow.definition.Transition"/>
<item id="1074" type="com.j2fe.workflow.definition.Transition">
<name id="1075">NEARREALTIME</name>
<source idref="320"/>
<target id="1076">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="1077">Automatically generated</description>
<directJoin>false</directJoin>
<name id="1078">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="1079">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="1080" type="java.util.HashSet">
<item idref="1074" type="com.j2fe.workflow.definition.Transition"/>
<item id="1081" type="com.j2fe.workflow.definition.Transition">
<name id="1082">REALTIME</name>
<source idref="320"/>
<target idref="1076"/>
</item>
</sources>
<targets id="1083" type="java.util.HashSet">
<item id="1084" type="com.j2fe.workflow.definition.Transition">
<name id="1085">ToSplit</name>
<source idref="1076"/>
<target id="1086">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="1087">Is Null</name>
<nodeHandler>com.j2fe.general.activities.IsNull</nodeHandler>
<nodeHandlerClass id="1088">com.j2fe.general.activities.IsNull</nodeHandlerClass>
<parameters id="1089" type="java.util.HashSet">
<item id="1090" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1091">input</name>
<stringValue id="1092">publishingDef</stringValue>
<type>VARIABLE</type>
<variablePart id="1093">patternDefinition</variablePart>
</item>
</parameters>
<sources id="1094" type="java.util.HashSet">
<item idref="1084" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="1095" type="java.util.HashSet">
<item id="1096" type="com.j2fe.workflow.definition.Transition">
<name id="1097">false</name>
<source idref="1086"/>
<target id="1098">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="1099">AOI Key Processing</name>
<nodeHandler>com.thegoldensource.aoi.activity.AOIKeyProcessing</nodeHandler>
<nodeHandlerClass id="1100">com.thegoldensource.aoi.activity.AOIKeyProcessing</nodeHandlerClass>
<parameters id="1101" type="java.util.HashSet">
<item id="1102" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1103">dataSource</name>
<stringValue id="1104">Database</stringValue>
<type>VARIABLE</type>
</item>
<item id="1105" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1106">entities</name>
<stringValue id="1107">Entities</stringValue>
<type>VARIABLE</type>
</item>
<item id="1108" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1109">entitiesToBePublished</name>
<stringValue id="1110">Entities</stringValue>
<type>VARIABLE</type>
</item>
<item id="1111" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1112">patternDefinitions</name>
<stringValue id="1113">publishingDef</stringValue>
<type>VARIABLE</type>
<variablePart id="1114">patternDefinition</variablePart>
</item>
<item id="1115" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1116">tblTyp</name>
<stringValue id="1117">publishingDef</stringValue>
<type>VARIABLE</type>
<variablePart id="1118">tableId</variablePart>
</item>
</parameters>
<sources id="1119" type="java.util.HashSet">
<item idref="1096" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="1120" type="java.util.HashSet">
<item id="1121" type="com.j2fe.workflow.definition.Transition">
<name id="1122">found Entities</name>
<source idref="1098"/>
<target idref="313"/>
</item>
<item id="1123" type="com.j2fe.workflow.definition.Transition">
<name id="1124">no Entities</name>
<source idref="1098"/>
<target idref="249"/>
</item>
</targets>
<type>XORSPLIT</type>
</target>
</item>
<item id="1125" type="com.j2fe.workflow.definition.Transition">
<name id="1126">true</name>
<source idref="1086"/>
<target idref="313"/>
</item>
</targets>
<type>XORSPLIT</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
<item idref="1081" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="313"/>
</item>
<item idref="1121" type="com.j2fe.workflow.definition.Transition"/>
<item idref="1125" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="1127" type="java.util.HashSet">
<item idref="311" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="306"/>
</item>
</sources>
<targets id="1128" type="java.util.HashSet">
<item idref="304" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="299"/>
</item>
<item id="1129" type="com.j2fe.workflow.definition.Transition">
<name id="1130">goto-next</name>
<source id="1131">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="1132">Transformation Loop Ends</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="1133">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="1134" type="java.util.HashSet">
<item id="1135" type="com.j2fe.workflow.definition.Transition">
<name id="1136">end-loop</name>
<source id="1137">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="1138">Destination Loop</name>
<nodeHandler>com.j2fe.workflow.handler.impl.ForEach</nodeHandler>
<nodeHandlerClass id="1139">com.j2fe.workflow.handler.impl.ForEach</nodeHandlerClass>
<parameters id="1140" type="java.util.HashSet">
<item id="1141" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1142">counter</name>
<stringValue id="1143">deliveryDefCounter</stringValue>
<type>VARIABLE</type>
</item>
<item id="1144" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1145">counter</name>
<stringValue id="1146">deliveryDefCounter</stringValue>
<type>VARIABLE</type>
</item>
<item id="1147" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1148">incrementValue</name>
<objectValue idref="273"/>
<type>CONSTANT</type>
</item>
<item id="1149" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1150">input</name>
<stringValue id="1151">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="1152">destinationDefinitions</variablePart>
</item>
<item id="1153" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1154">output</name>
<stringValue id="1155">destinationDef</stringValue>
<type>VARIABLE</type>
</item>
<item id="1156" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1157">resetOnEnd</name>
<objectValue idref="283"/>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="1158" type="java.util.HashSet">
<item id="1159" type="com.j2fe.workflow.definition.Transition">
<name id="1160">goto-next</name>
<source id="1161">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="1162">Destination Loop Begins</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="1163">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="1164" type="java.util.HashSet">
<item id="1165" type="com.j2fe.workflow.definition.Transition">
<name id="1166">false</name>
<source id="1167">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="1168">Switch Case</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="1169">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="1170" type="java.util.HashSet">
<item id="1171" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1172">caseItem</name>
<stringValue id="1173">RestCall</stringValue>
<type>VARIABLE</type>
</item>
<item id="1174" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1175">defaultItem</name>
<stringValue id="1176">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="1177" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1178">nullTransition</name>
<stringValue id="1179">false</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="1180" type="java.util.HashSet">
<item id="1181" type="com.j2fe.workflow.definition.Transition">
<name id="1182">goto-next</name>
<source id="1183">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="1184">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="1185">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="1186" type="java.util.HashSet">
<item id="1187" type="com.j2fe.workflow.definition.Transition">
<name id="1188">false</name>
<source id="1189">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="1190">Switch Case</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="1191">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="1192" type="java.util.HashSet">
<item id="1193" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1194">caseInsensitive</name>
<objectValue idref="283"/>
<type>CONSTANT</type>
</item>
<item id="1195" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1196">caseItem</name>
<stringValue id="1197">dataToBePublishedExists</stringValue>
<type>VARIABLE</type>
</item>
<item id="1198" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1199">defaultItem</name>
<stringValue id="1200">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="1201" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1202">nullTransition</name>
<stringValue id="1203">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="1204" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1205">trimSpaces</name>
<objectValue idref="283"/>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="1206" type="java.util.HashSet">
<item id="1207" type="com.j2fe.workflow.definition.Transition">
<name id="1208">goto-next</name>
<source id="1209">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="1210">DataToBePublished Decision</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="1211">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="1212" type="java.util.HashSet">
<item id="1213" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1214">statements</name>
<stringValue id="1215">boolean dataToBePublishedExists = false;

if(  EntitySequenceNumbers!= null &amp;&amp; EntitySequenceNumbers.length &gt; 0 )
	dataToBePublishedExists = true;

for( int tempCount = 0; tempCount &lt; listMessageTemp.length; tempCount++)
{
	arrayPBDPMessage[tempCount] =  listMessageTemp[ tempCount ] ;
}
</stringValue>
<type>CONSTANT</type>
</item>
<item id="1216" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1217">variables["Entities"]</name>
<stringValue id="1218">Entities</stringValue>
<type>VARIABLE</type>
</item>
<item id="1219" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1220">variables["Entities"]</name>
<stringValue id="1221">entitiesToBePublished</stringValue>
<type>VARIABLE</type>
</item>
<item id="1222" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="1223">["EntitySequenceNumbers"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="1224">variables["EntitySequenceNumbers"]</name>
<stringValue id="1225">EntitySequenceNumbers</stringValue>
<type>VARIABLE</type>
</item>
<item id="1226" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1227">variables["arrayPBDPMessage"]</name>
<stringValue id="1228">arrayPBDPMessage</stringValue>
<type>VARIABLE</type>
</item>
<item id="1229" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1230">variables["arrayPBDPMessage"]</name>
<stringValue id="1231">arrayPBDPMessage</stringValue>
<type>VARIABLE</type>
</item>
<item id="1232" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="1233">["dataToBePublishedExists"]@java/lang/Boolean@</UITypeHint>
<input>false</input>
<name id="1234">variables["dataToBePublishedExists"]</name>
<stringValue id="1235">dataToBePublishedExists</stringValue>
<type>VARIABLE</type>
</item>
<item id="1236" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1237">variables["listMessageTemp"]</name>
<stringValue id="1238">listMessageTemp</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="1239" type="java.util.HashSet">
<item id="1240" type="com.j2fe.workflow.definition.Transition">
<name id="1241">goto-next</name>
<source id="1242">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="1243">XML PUBLISHER</name>
<nodeHandler>com.thegoldensource.publishing.activity.ConvertBusinessEntity</nodeHandler>
<nodeHandlerClass id="1244">com.thegoldensource.publishing.activity.ConvertBusinessEntity</nodeHandlerClass>
<parameters id="1245" type="java.util.HashSet">
<item id="1246" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1247">addCorrelationHeader</name>
<stringValue id="1248">addCorrelationHeader</stringValue>
<type>VARIABLE</type>
</item>
<item id="1249" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1250">addCoveringXMLHeader</name>
<stringValue id="1251">addCoveringXMLHeader</stringValue>
<type>VARIABLE</type>
</item>
<item id="1252" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1253">addXMLHeader</name>
<stringValue id="1254">addHeader</stringValue>
<type>VARIABLE</type>
</item>
<item id="1255" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1256">additionalNotToPublishSet</name>
<stringValue id="1257">publishingDef</stringValue>
<type>VARIABLE</type>
<variablePart id="1258">exclusionFieldSet</variablePart>
</item>
<item id="1259" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1260">businessEntity</name>
<stringValue id="1261">entitiesToBePublished</stringValue>
<type>VARIABLE</type>
</item>
<item id="1262" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1263">dateFormat</name>
<stringValue id="1264">DateFormatForPublishedData</stringValue>
<type>VARIABLE</type>
</item>
<item id="1265" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1266">dateTimeFormat</name>
<stringValue id="1267">DateTimeFormatForPublishedData</stringValue>
<type>VARIABLE</type>
</item>
<item id="1268" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1269">entitySequenceNumbers</name>
<stringValue id="1270">EntitySequenceNumbers</stringValue>
<type>VARIABLE</type>
</item>
<item id="1271" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1272">grouping</name>
<stringValue id="1273">Group MultiOccurring Fields</stringValue>
<type>VARIABLE</type>
</item>
<item id="1274" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1275">jobId</name>
<stringValue id="1276">auditIdentifier</stringValue>
<type>VARIABLE</type>
</item>
<item id="1277" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1278">output</name>
<stringValue id="1279">OutputMessage</stringValue>
<type>VARIABLE</type>
</item>
<item id="1280" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1281">outputPerEntity</name>
<stringValue id="1282">listMessageTemp</stringValue>
<type>VARIABLE</type>
</item>
<item id="1283" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1284">outputType</name>
<stringValue id="1285">XML</stringValue>
<type>CONSTANT</type>
</item>
<item id="1286" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1287">publishRelationName</name>
<stringValue id="1288">publishRelationName</stringValue>
<type>VARIABLE</type>
</item>
<item id="1289" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1290">selectedFields</name>
<stringValue id="1291">publishingDef</stringValue>
<type>VARIABLE</type>
<variablePart id="1292">selectedFields</variablePart>
</item>
</parameters>
<sources id="1293" type="java.util.HashSet">
<item id="1294" type="com.j2fe.workflow.definition.Transition">
<name id="1295">XML</name>
<source id="1296">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="1297">Switch Case</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="1298">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="1299" type="java.util.HashSet">
<item id="1300" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1301">caseItem</name>
<stringValue id="1302">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="1303">outputType</variablePart>
</item>
<item id="1304" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1305">defaultItem</name>
<stringValue id="1306">XML</stringValue>
<type>CONSTANT</type>
</item>
<item id="1307" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1308">nullTransition</name>
<stringValue id="1309">XML</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="1310" type="java.util.HashSet">
<item id="1311" type="com.j2fe.workflow.definition.Transition">
<name id="1312">goto-next</name>
<source id="1313">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="1314">Decision to Add Header</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="1315">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="1316" type="java.util.HashSet">
<item id="1317" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1318">statements</name>
<stringValue id="1319">boolean addHeader = true;

if( CreateSingleFile == true )
{
	coveringHeader = false;
	addHeader = false;
}</stringValue>
<type>CONSTANT</type>
</item>
<item id="1320" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="1321">["CreateSingleFile"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="1322">variables["CreateSingleFile"]</name>
<stringValue id="1323">CreateSingleFile</stringValue>
<type>VARIABLE</type>
</item>
<item id="1324" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="1325">["addHeader"]@java/lang/Boolean@</UITypeHint>
<input>false</input>
<name id="1326">variables["addHeader"]</name>
<stringValue id="1327">addHeader</stringValue>
<type>VARIABLE</type>
</item>
<item id="1328" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="1329">["coveringHeader"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="1330">variables["coveringHeader"]</name>
<stringValue id="1331">coveringHeader</stringValue>
<type>VARIABLE</type>
</item>
<item id="1332" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="1333">["coveringHeader"]@java/lang/Boolean@</UITypeHint>
<input>false</input>
<name id="1334">variables["coveringHeader"]</name>
<stringValue id="1335">coveringHeader</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="1336" type="java.util.HashSet">
<item id="1337" type="com.j2fe.workflow.definition.Transition">
<name id="1338">goto-next</name>
<source id="1339">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="1340">Create Empty Lists</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="1341">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="1342" type="java.util.HashSet">
<item id="1343" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1344">statements</name>
<stringValue id="1345">import com.thegoldensource.be.service.data.EntityObject;

List OutputMessage = new ArrayList();
List listTempMessage = new ArrayList();
List convertedStrings = new ArrayList();

if( entitiesToBePublished == null )
{
	entitiesToBePublished = new EntityObject[] {};
}

Integer[]  EntitySequenceNumbers = new Integer[ entitiesToBePublished.length];
String[] arrayPBDPMessage  = new String[ entitiesToBePublished.length ];</stringValue>
<type>CONSTANT</type>
</item>
<item id="1346" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1347">variables["EntitySequenceNumbers"]</name>
<stringValue id="1348">EntitySequenceNumbers</stringValue>
<type>VARIABLE</type>
</item>
<item id="1349" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1350">variables["OutputMessage"]</name>
<stringValue id="1351">OutputMessage</stringValue>
<type>VARIABLE</type>
</item>
<item id="1352" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1353">variables["arrayPBDPMessage"]</name>
<stringValue id="1354">arrayPBDPMessage</stringValue>
<type>VARIABLE</type>
</item>
<item id="1355" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1356">variables["convertedStrings"]</name>
<stringValue id="1357">convertedStrings</stringValue>
<type>VARIABLE</type>
</item>
<item id="1358" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1359">variables["entitiesToBePublished"]</name>
<stringValue id="1360">entitiesToBePublished</stringValue>
<type>VARIABLE</type>
</item>
<item id="1361" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1362">variables["entitiesToBePublished"]</name>
<stringValue id="1363">entitiesToBePublished</stringValue>
<type>VARIABLE</type>
</item>
<item id="1364" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1365">variables["listMessageTemp"]</name>
<stringValue id="1366">listMessageTemp</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="1367" type="java.util.HashSet">
<item id="1368" type="com.j2fe.workflow.definition.Transition">
<name id="1369">ToSplit</name>
<source id="1370">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="1371">Automatically generated</description>
<directJoin>false</directJoin>
<name id="1372">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="1373">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="1374" type="java.util.HashSet">
<item id="1375" type="com.j2fe.workflow.definition.Transition">
<name id="1376">false</name>
<source id="1377">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="1378">Switch Case</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="1379">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="1380" type="java.util.HashSet">
<item id="1381" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1382">caseItem</name>
<stringValue id="1383">On Demand VSH</stringValue>
<type>VARIABLE</type>
</item>
<item id="1384" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1385">defaultItem</name>
<stringValue id="1386">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="1387" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1388">nullTransition</name>
<stringValue id="1389">true</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="1390" type="java.util.HashSet">
<item id="1391" type="com.j2fe.workflow.definition.Transition">
<name id="1392">goto-next</name>
<source id="1393">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="1394">Bean Shell Script (Standard) #7</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="1395">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="1396" type="java.util.HashSet">
<item id="1397" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1398">statements</name>
<stringValue id="1399">boolean coveringHeader = addCoveringXMLHeader ;

/*
if(deliveryDefinition.resourceConfigType != null)
{
	coveringHeader = false;
}
*/</stringValue>
<type>CONSTANT</type>
</item>
<item id="1400" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="1401">["addCoveringXMLHeader"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="1402">variables["addCoveringXMLHeader"]</name>
<stringValue id="1403">addCoveringXMLHeader</stringValue>
<type>VARIABLE</type>
</item>
<item id="1404" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="1405">["coveringHeader"]@java/lang/Boolean@</UITypeHint>
<input>false</input>
<name id="1406">variables["coveringHeader"]</name>
<stringValue id="1407">coveringHeader</stringValue>
<type>VARIABLE</type>
</item>
<item id="1408" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="1409">["deliveryDefinition"]@com/thegoldensource/publishing/util/DeliveryDefinition@</UITypeHint>
<input>true</input>
<name id="1410">variables["deliveryDefinition"]</name>
<stringValue id="1411">deliveryDefinition</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="1412" type="java.util.HashSet">
<item id="1413" type="com.j2fe.workflow.definition.Transition">
<name id="1414">found</name>
<source id="1415">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="1416">Bean Shell Script (Xor Split)</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="1417">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="1418" type="java.util.HashSet">
<item id="1419" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1420">statements</name>
<stringValue id="1421">import com.thegoldensource.be.service.data.EntityObject;

EntityObject[] entitiesToBePublished;
String ret = "found";

if(PublishDataWithFailedRulesValidation)
{
	entitiesToBePublished = Entities;
}
else
{
	entitiesToBePublished  = EntitiesThatPassedValidation;
}

boolean successfulEntitiesPresent = true;
if( 0 == entitiesToBePublished.length){
	successfulEntitiesPresent  = false;
	ret = "notfound";
}

return ret;

</stringValue>
<type>CONSTANT</type>
</item>
<item id="1422" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1423">variables["Entities"]</name>
<stringValue id="1424">Entities</stringValue>
<type>VARIABLE</type>
</item>
<item id="1425" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1426">variables["EntitiesThatFailedValidation"]</name>
<stringValue id="1427">Entitiesthatfailedthebatchrulesvalidation</stringValue>
<type>VARIABLE</type>
</item>
<item id="1428" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1429">variables["EntitiesThatPassedValidation"]</name>
<stringValue id="1430">Entitiesthatpassedthebatchrulesvalidation</stringValue>
<type>VARIABLE</type>
</item>
<item id="1431" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="1432">["PublishDataWithFailedRulesValidation"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="1433">variables["PublishDataWithFailedRulesValidation"]</name>
<stringValue id="1434">PublishDataWithFailedRulesValidation</stringValue>
<type>VARIABLE</type>
</item>
<item id="1435" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1436">variables["entitiesToBePublished"]</name>
<stringValue id="1437">entitiesToBePublished</stringValue>
<type>VARIABLE</type>
</item>
<item id="1438" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="1439">["successfulEntitiesPresent"]@java/lang/Boolean@</UITypeHint>
<input>false</input>
<name id="1440">variables["successfulEntitiesPresent"]</name>
<stringValue id="1441">entitiesToBePublishedPresent</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="1442" type="java.util.HashSet">
<item id="1443" type="com.j2fe.workflow.definition.Transition">
<name id="1444">ToSplit</name>
<source id="1445">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="1446">Automatically generated</description>
<directJoin>false</directJoin>
<name id="1447">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="1448">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="1449" type="java.util.HashSet">
<item id="1450" type="com.j2fe.workflow.definition.Transition">
<name id="1451">not valid</name>
<source id="1452">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="1453">Run Downstream Spcific Rules</name>
<nodeHandler>com.thegoldensource.batchrules.activity.EVProcessBatchRules</nodeHandler>
<nodeHandlerClass id="1454">com.thegoldensource.batchrules.activity.EVProcessBatchRules</nodeHandlerClass>
<parameters id="1455" type="java.util.HashSet">
<item id="1456" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1457">entities</name>
<stringValue id="1458">Entities</stringValue>
<type>VARIABLE</type>
</item>
<item id="1459" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1460">entities</name>
<stringValue id="1461">Entities</stringValue>
<type>VARIABLE</type>
</item>
<item id="1462" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1463">entitiesFailedBatchRuleProcessing</name>
<stringValue id="1464">Entitiesthatfailedthebatchrulesvalidation</stringValue>
<type>VARIABLE</type>
</item>
<item id="1465" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1466">entitiesSuccessfulBatchRuleProcessing</name>
<stringValue id="1467">Entitiesthatpassedthebatchrulesvalidation</stringValue>
<type>VARIABLE</type>
</item>
<item id="1468" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1469">entitySequenceNumbers</name>
<stringValue id="1470">EntitySequenceNumbers</stringValue>
<type>VARIABLE</type>
</item>
<item id="1471" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1472">extractorFactory</name>
<stringValue id="1473">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="1474" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1475">persistResults</name>
<stringValue id="1476">persistDQRulesExceptionsInTable</stringValue>
<type>VARIABLE</type>
</item>
<item id="1477" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1478">rulesToExecute</name>
<stringValue id="1479">finalListRules</stringValue>
<type>VARIABLE</type>
</item>
<item id="1480" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1481">sessionFactory</name>
<stringValue id="1482">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
</parameters>
<sources id="1483" type="java.util.HashSet">
<item id="1484" type="com.j2fe.workflow.definition.Transition">
<name id="1485">goto-next</name>
<source id="1486">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="1487">Combine Rules</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="1488">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="1489" type="java.util.HashSet">
<item id="1490" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1491">statements</name>
<stringValue id="1492">List rulesToExecute = new ArrayList();

if( DSRules != null &amp;&amp; DSRules.length &gt; 0)
{
	for( int i = 0; i &lt; DSRules.length; i++ )
	{
		rulesToExecute.add( DSRules[i] );
	}
}

if( filterRules != null &amp;&amp; filterRules.length &gt; 0)
{
	for( int i = 0; i &lt; filterRules.length; i++ )
	{
		rulesToExecute.add( filterRules[i] );
	}
}

String[] finalListRules = new String[ rulesToExecute.size() ];
finalListRules = rulesToExecute.toArray( finalListRules );

if( Entities != null &amp;&amp; Entities.length &gt; 0 )
{
	for( int count = 0; count &lt; Entities.length; count++ )
	{
		Entities[count].clearNotifications();		
	}
}</stringValue>
<type>CONSTANT</type>
</item>
<item id="1493" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1494">variables["DSRules"]</name>
<stringValue id="1495">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="1496">rulesDownStream</variablePart>
</item>
<item id="1497" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1498">variables["Entities"]</name>
<stringValue id="1499">Entities</stringValue>
<type>VARIABLE</type>
</item>
<item id="1500" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1501">variables["Entities"]</name>
<stringValue id="1502">Entities</stringValue>
<type>VARIABLE</type>
</item>
<item id="1503" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1504">variables["filterRules"]</name>
<stringValue id="1505">publishingDef</stringValue>
<type>VARIABLE</type>
<variablePart id="1506">rulesToBeProcessed</variablePart>
</item>
<item id="1507" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1508">variables["finalListRules"]</name>
<stringValue id="1509">finalListRules</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="1510" type="java.util.HashSet">
<item id="1511" type="com.j2fe.workflow.definition.Transition">
<name id="1512">loop</name>
<source idref="261"/>
<target idref="1486"/>
</item>
</sources>
<targets id="1513" type="java.util.HashSet">
<item idref="1484" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="1452"/>
</item>
</sources>
<targets id="1514" type="java.util.HashSet">
<item idref="1450" type="com.j2fe.workflow.definition.Transition"/>
<item id="1515" type="com.j2fe.workflow.definition.Transition">
<name id="1516">valid</name>
<source idref="1452"/>
<target idref="1445"/>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="1445"/>
</item>
<item idref="1515" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="1517" type="java.util.HashSet">
<item idref="1443" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="1415"/>
</item>
</sources>
<targets id="1518" type="java.util.HashSet">
<item idref="1413" type="com.j2fe.workflow.definition.Transition"/>
<item id="1519" type="com.j2fe.workflow.definition.Transition">
<name id="1520">notfound</name>
<source idref="1415"/>
<target id="1521">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="1522">Add To Audit Trail</name>
<nodeHandler>com.thegoldensource.publishing.activity.AddAuditTrail</nodeHandler>
<nodeHandlerClass id="1523">com.thegoldensource.publishing.activity.AddAuditTrail</nodeHandlerClass>
<parameters id="1524" type="java.util.HashSet">
<item id="1525" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1526">GSDM</name>
<stringValue id="1527">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="1528" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1529">auditId</name>
<stringValue id="1530">auditIdentifier</stringValue>
<type>VARIABLE</type>
</item>
<item id="1531" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1532">dataSource</name>
<stringValue id="1533">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="1534" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1535">downstreamDestinationId</name>
<stringValue id="1536">Default</stringValue>
<type>CONSTANT</type>
</item>
<item id="1537" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1538">entities</name>
<stringValue id="1539">Entitiesthatfailedthebatchrulesvalidation</stringValue>
<type>VARIABLE</type>
</item>
<item id="1540" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1541">entityOIDVsPBDPOID</name>
<stringValue id="1542">entityOIDVsPBDPOID</stringValue>
<type>VARIABLE</type>
</item>
<item id="1543" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1544">publishingDefinition</name>
<stringValue id="1545">publishingDef</stringValue>
<type>VARIABLE</type>
</item>
<item id="1546" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1547">status</name>
<objectValue id="1548" type="com.thegoldensource.subscription.AuditStatus">FAILED</objectValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="1549" type="java.util.HashSet">
<item idref="1519" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="1550" type="java.util.HashSet">
<item id="1551" type="com.j2fe.workflow.definition.Transition">
<name id="1552">goto-next</name>
<source idref="1521"/>
<target id="1553">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="1554">Write Publishing Notifications</name>
<nodeHandler>com.thegoldensource.publishing.activity.WritePublishingNotifications</nodeHandler>
<nodeHandlerClass id="1555">com.thegoldensource.publishing.activity.WritePublishingNotifications</nodeHandlerClass>
<parameters id="1556" type="java.util.HashSet">
<item id="1557" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1558">GSDM</name>
<stringValue id="1559">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="1560" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1561">auditId</name>
<stringValue id="1562">auditIdentifier</stringValue>
<type>VARIABLE</type>
</item>
<item id="1563" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1564">dataSource</name>
<stringValue id="1565">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="1566" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1567">downstreamDestinationId</name>
<stringValue id="1568">Default</stringValue>
<type>CONSTANT</type>
</item>
<item id="1569" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1570">entities</name>
<stringValue id="1571">Entitiesthatfailedthebatchrulesvalidation</stringValue>
<type>VARIABLE</type>
</item>
<item id="1572" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1573">entityOIDVsPBDPOID</name>
<stringValue id="1574">entityOIDVsPBDPOID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="1575" type="java.util.HashSet">
<item idref="1551" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="1576" type="java.util.HashSet">
<item id="1577" type="com.j2fe.workflow.definition.Transition">
<name id="1578">goto-next</name>
<source idref="1553"/>
<target idref="249"/>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="1393"/>
</item>
</sources>
<targets id="1579" type="java.util.HashSet">
<item idref="1391" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="1377"/>
</item>
</sources>
<targets id="1580" type="java.util.HashSet">
<item idref="1375" type="com.j2fe.workflow.definition.Transition"/>
<item id="1581" type="com.j2fe.workflow.definition.Transition">
<name id="1582">true</name>
<source idref="1377"/>
<target id="1583">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="1584">Dynamic Extraction for VSH</name>
<nodeHandler>com.thegoldensource.vendor.DynamicExtraction</nodeHandler>
<nodeHandlerClass id="1585">com.thegoldensource.vendor.DynamicExtraction</nodeHandlerClass>
<parameters id="1586" type="java.util.HashSet">
<item id="1587" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1588">downStream</name>
<stringValue id="1589">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="1590">downstreamDefinitionId</variablePart>
</item>
<item id="1591" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1592">entitiesToPublish</name>
<stringValue id="1593">entitiesToBePublished</stringValue>
<type>VARIABLE</type>
</item>
<item id="1594" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1595">extractionDefinition</name>
<stringValue id="1596">extractionDef</stringValue>
<type>VARIABLE</type>
</item>
<item id="1597" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1598">gcAuditId</name>
<stringValue id="1599">auditIdentifier</stringValue>
<type>VARIABLE</type>
</item>
<item id="1600" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1601">gcEntities</name>
<stringValue id="1602">entitiesToBePublished</stringValue>
<type>VARIABLE</type>
</item>
<item id="1603" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1604">tableType</name>
<stringValue id="1605">publishingDef</stringValue>
<type>VARIABLE</type>
<variablePart id="1606">tableId</variablePart>
</item>
<item id="1607" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1608">vddbDataSource</name>
<stringValue id="1609">jdbc/VDDB-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="1610" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1611">vddbFactory</name>
<stringValue id="1612">jdbc/VDDB-1</stringValue>
<type>REFERENCE</type>
</item>
</parameters>
<sources id="1613" type="java.util.HashSet">
<item idref="1581" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="1614" type="java.util.HashSet">
<item id="1615" type="com.j2fe.workflow.definition.Transition">
<name id="1616">goto-next</name>
<source idref="1583"/>
<target idref="1370"/>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="1370"/>
</item>
<item idref="1615" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="1617" type="java.util.HashSet">
<item idref="1368" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="1339"/>
</item>
</sources>
<targets id="1618" type="java.util.HashSet">
<item idref="1337" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="1313"/>
</item>
</sources>
<targets id="1619" type="java.util.HashSet">
<item idref="1311" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="1296"/>
</item>
</sources>
<targets id="1620" type="java.util.HashSet">
<item id="1621" type="com.j2fe.workflow.definition.Transition">
<name id="1622">CSV</name>
<source idref="1296"/>
<target id="1623">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="1624">CSV PUBLISHER</name>
<nodeHandler>com.thegoldensource.publishing.activity.ConvertBusinessEntity</nodeHandler>
<nodeHandlerClass id="1625">com.thegoldensource.publishing.activity.ConvertBusinessEntity</nodeHandlerClass>
<parameters id="1626" type="java.util.HashSet">
<item id="1627" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1628">addCSVHeader</name>
<stringValue id="1629">addHeader</stringValue>
<type>VARIABLE</type>
</item>
<item id="1630" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1631">additionalNotToPublishSet</name>
<stringValue id="1632">publishingDef</stringValue>
<type>VARIABLE</type>
<variablePart id="1633">exclusionFieldSet</variablePart>
</item>
<item id="1634" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1635">backwardCompatibilityCSV</name>
<stringValue id="1636">PublishDataOldCSVFormat</stringValue>
<type>VARIABLE</type>
</item>
<item id="1637" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1638">businessEntity</name>
<stringValue id="1639">entitiesToBePublished</stringValue>
<type>VARIABLE</type>
</item>
<item id="1640" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1641">dateFormat</name>
<stringValue id="1642">DateFormatForPublishedData</stringValue>
<type>VARIABLE</type>
</item>
<item id="1643" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1644">dateTimeFormat</name>
<stringValue id="1645">DateTimeFormatForPublishedData</stringValue>
<type>VARIABLE</type>
</item>
<item id="1646" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1647">downstreamProperties</name>
<stringValue id="1648">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="1649">propertyMap</variablePart>
</item>
<item id="1650" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1651">entitySequenceNumbers</name>
<stringValue id="1652">EntitySequenceNumbers</stringValue>
<type>VARIABLE</type>
</item>
<item id="1653" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1654">grouping</name>
<objectValue idref="283"/>
<type>CONSTANT</type>
</item>
<item id="1655" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1656">header</name>
<stringValue id="1657">header</stringValue>
<type>VARIABLE</type>
</item>
<item id="1658" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1659">headerFieldProperty</name>
<stringValue id="1660">headerFieldProperty</stringValue>
<type>VARIABLE</type>
</item>
<item id="1661" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1662">output</name>
<stringValue id="1663">OutputMessage</stringValue>
<type>VARIABLE</type>
</item>
<item id="1664" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1665">outputPerEntity</name>
<stringValue id="1666">listMessageTemp</stringValue>
<type>VARIABLE</type>
</item>
<item id="1667" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1668">outputType</name>
<stringValue id="1669">CSV</stringValue>
<type>CONSTANT</type>
</item>
<item id="1670" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1671">preferredVendors</name>
<stringValue id="1672">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="1673">preferredVendor</variablePart>
</item>
<item id="1674" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1675">selectedFields</name>
<stringValue id="1676">publishingDef</stringValue>
<type>VARIABLE</type>
<variablePart id="1677">selectedFields</variablePart>
</item>
</parameters>
<sources id="1678" type="java.util.HashSet">
<item idref="1621" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="1679" type="java.util.HashSet">
<item id="1680" type="com.j2fe.workflow.definition.Transition">
<name id="1681">goto-next</name>
<source idref="1623"/>
<target id="1682">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="1683">Copy Data to ConvertedStrings</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="1684">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="1685" type="java.util.HashSet">
<item id="1686" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1687">statements</name>
<stringValue id="1688">List convertedStrings = new ArrayList();
List OutputMessage = new ArrayList();


for( int tempCount = 0; tempCount &lt; listMessageTemp.length; tempCount++)
{
	convertedStrings.add( listMessageTemp[ tempCount ] );
	OutputMessage.add( listMessageTemp[ tempCount ] );
}

if( CSVHeader != null &amp;&amp; (CSVHeader.length() == 0)  )
	CSVHeader.append(header);

for( int tempCount = 0; tempCount &lt; listMessageTemp.length; tempCount++)
{
	arrayPBDPMessage[tempCount] =  listMessageTemp[ tempCount ];
}
</stringValue>
<type>CONSTANT</type>
</item>
<item id="1689" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1690">variables["CSVHeader"]</name>
<stringValue id="1691">CSVHeader</stringValue>
<type>VARIABLE</type>
</item>
<item id="1692" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1693">variables["EntitySequenceNumbers"]</name>
<stringValue id="1694">EntitySequenceNumbers</stringValue>
<type>VARIABLE</type>
</item>
<item id="1695" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1696">variables["EntitySequenceNumbers"]</name>
<stringValue id="1697">EntitySequenceNumbers</stringValue>
<type>VARIABLE</type>
</item>
<item id="1698" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="1699">["OutputMessage"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="1700">variables["OutputMessage"]</name>
<stringValue id="1701">OutputMessage</stringValue>
<type>VARIABLE</type>
</item>
<item id="1702" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1703">variables["OutputMessage"]</name>
<stringValue id="1704">OutputMessage</stringValue>
<type>VARIABLE</type>
</item>
<item id="1705" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1706">variables["arrayPBDPMessage"]</name>
<stringValue id="1707">arrayPBDPMessage</stringValue>
<type>VARIABLE</type>
</item>
<item id="1708" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1709">variables["arrayPBDPMessage"]</name>
<stringValue id="1710">arrayPBDPMessage</stringValue>
<type>VARIABLE</type>
</item>
<item id="1711" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1712">variables["convertedStrings"]</name>
<stringValue id="1713">convertedStrings</stringValue>
<type>VARIABLE</type>
</item>
<item id="1714" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="1715">["header"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="1716">variables["header"]</name>
<stringValue id="1717">header</stringValue>
<type>VARIABLE</type>
</item>
<item id="1718" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1719">variables["listMessageTemp"]</name>
<stringValue id="1720">listMessageTemp</stringValue>
<type>VARIABLE</type>
</item>
<item id="1721" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1722">variables["listMessageTemp"]</name>
<stringValue id="1723">listMessageTemp</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="1724" type="java.util.HashSet">
<item idref="1680" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="1725" type="java.util.HashSet">
<item id="1726" type="com.j2fe.workflow.definition.Transition">
<name id="1727">goto-next</name>
<source idref="1682"/>
<target idref="1183"/>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
<item id="1728" type="com.j2fe.workflow.definition.Transition">
<name id="1729">JSON</name>
<source idref="1296"/>
<target id="1730">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="1731">JSON</name>
<nodeHandler>com.thegoldensource.publishing.activity.ConvertBusinessEntity</nodeHandler>
<nodeHandlerClass id="1732">com.thegoldensource.publishing.activity.ConvertBusinessEntity</nodeHandlerClass>
<parameters id="1733" type="java.util.HashSet">
<item id="1734" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1735">addCorrelationHeader</name>
<stringValue id="1736">addCorrelationHeader</stringValue>
<type>VARIABLE</type>
</item>
<item id="1737" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1738">addGSONameJSONRoot</name>
<stringValue id="1739">addGSONameJSONRoot</stringValue>
<type>VARIABLE</type>
</item>
<item id="1740" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1741">addfirstDGName</name>
<stringValue id="1742">addFirstDataGroupNameJSON</stringValue>
<type>VARIABLE</type>
</item>
<item id="1743" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1744">additionalNotToPublishSet</name>
<stringValue id="1745">publishingDef</stringValue>
<type>VARIABLE</type>
<variablePart id="1746">exclusionFieldSet</variablePart>
</item>
<item id="1747" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1748">businessEntity</name>
<stringValue id="1749">entitiesToBePublished</stringValue>
<type>VARIABLE</type>
</item>
<item id="1750" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1751">dateFormat</name>
<stringValue id="1752">DateFormatForPublishedData</stringValue>
<type>VARIABLE</type>
</item>
<item id="1753" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1754">dateTimeFormat</name>
<stringValue id="1755">DateTimeFormatForPublishedData</stringValue>
<type>VARIABLE</type>
</item>
<item id="1756" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1757">enableValueTagJSON</name>
<stringValue id="1758">enableValueTagJSON</stringValue>
<type>VARIABLE</type>
</item>
<item id="1759" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1760">entitySequenceNumbers</name>
<stringValue id="1761">EntitySequenceNumbers</stringValue>
<type>VARIABLE</type>
</item>
<item id="1762" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1763">grouping</name>
<stringValue id="1764">Group MultiOccurring Fields</stringValue>
<type>VARIABLE</type>
</item>
<item id="1765" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1766">jobId</name>
<stringValue id="1767">auditIdentifier</stringValue>
<type>VARIABLE</type>
</item>
<item id="1768" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1769">output</name>
<stringValue id="1770">OutputMessage</stringValue>
<type>VARIABLE</type>
</item>
<item id="1771" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1772">outputPerEntity</name>
<stringValue id="1773">listMessageTemp</stringValue>
<type>VARIABLE</type>
</item>
<item id="1774" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1775">outputType</name>
<objectValue id="1776" type="com.thegoldensource.publishing.activity.ConvertBusinessEntity$OutputType">JSON</objectValue>
<type>CONSTANT</type>
</item>
<item id="1777" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1778">preferredVendors</name>
<stringValue id="1779">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="1780">preferredVendor</variablePart>
</item>
<item id="1781" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1782">publishRelationName</name>
<stringValue id="1783">publishRelationName</stringValue>
<type>VARIABLE</type>
</item>
<item id="1784" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1785">selectedFields</name>
<stringValue id="1786">publishingDef</stringValue>
<type>VARIABLE</type>
<variablePart id="1787">selectedFields</variablePart>
</item>
</parameters>
<sources id="1788" type="java.util.HashSet">
<item idref="1728" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="1789" type="java.util.HashSet">
<item id="1790" type="com.j2fe.workflow.definition.Transition">
<name id="1791">goto-next</name>
<source idref="1730"/>
<target id="1792">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="1793">Transformation Check</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="1794">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="1795" type="java.util.HashSet">
<item id="1796" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1797">statements</name>
<stringValue id="1798">String transformationReq = "NO";

if( (destV != null &amp;&amp; !destV.trim().equals("") ) ) // &amp;&amp; ( resourceConfigType == null ) )
{
transformationReq = "YES";
}

List ValidmessageList = new ArrayList();
//listMessageTemp  = new ArrayList();
HashMap seqNumVsMessages = new HashMap();

for( int tempCount = 0; tempCount &lt; listMessageTemp.length; tempCount++)
{
	arrayPBDPMessage[tempCount] =  listMessageTemp[ tempCount ] ;
}

</stringValue>
<type>CONSTANT</type>
</item>
<item id="1799" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1800">variables["OutputMessage"]</name>
<stringValue id="1801">OutputMessage</stringValue>
<type>VARIABLE</type>
</item>
<item id="1802" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1803">variables["ValidmessageList"]</name>
<stringValue id="1804">ValidmessageList</stringValue>
<type>VARIABLE</type>
</item>
<item id="1805" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1806">variables["arrayPBDPMessage"]</name>
<stringValue id="1807">arrayPBDPMessage</stringValue>
<type>VARIABLE</type>
</item>
<item id="1808" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1809">variables["arrayPBDPMessage"]</name>
<stringValue id="1810">arrayPBDPMessage</stringValue>
<type>VARIABLE</type>
</item>
<item id="1811" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="1812">["destV"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="1813">variables["destV"]</name>
<stringValue id="1814">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="1815">outputValue</variablePart>
</item>
<item id="1816" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1817">variables["listMessageTemp"]</name>
<stringValue id="1818">listMessageTemp</stringValue>
<type>VARIABLE</type>
</item>
<item id="1819" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1820">variables["listMessageTemp"]</name>
<stringValue id="1821">listMessageTemp</stringValue>
<type>VARIABLE</type>
</item>
<item id="1822" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="1823">["prefLanguage"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="1824">variables["prefLanguage"]</name>
<stringValue id="1825">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="1826">preferredLanguage</variablePart>
</item>
<item id="1827" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="1828">["prefVendor"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="1829">variables["prefVendor"]</name>
<stringValue id="1830">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="1831">preferredVendor</variablePart>
</item>
<item id="1832" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="1833">["resourceConfigType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="1834">variables["resourceConfigType"]</name>
<stringValue id="1835">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="1836">resourceConfigType</variablePart>
</item>
<item id="1837" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1838">variables["seqNumVsMessages"]</name>
<stringValue id="1839">seqNumVsMessages</stringValue>
<type>VARIABLE</type>
</item>
<item id="1840" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1841">variables["transformationReq"]</name>
<stringValue id="1842">transformationReq</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="1843" type="java.util.HashSet">
<item idref="1790" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="1844" type="java.util.HashSet">
<item id="1845" type="com.j2fe.workflow.definition.Transition">
<name id="1846">goto-next</name>
<source idref="1792"/>
<target id="1847">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="1848">Is Null</name>
<nodeHandler>com.j2fe.general.activities.IsNull</nodeHandler>
<nodeHandlerClass id="1849">com.j2fe.general.activities.IsNull</nodeHandlerClass>
<parameters id="1850" type="java.util.HashSet">
<item id="1851" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1852">input</name>
<stringValue id="1853">dataPath</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="1854" type="java.util.HashSet">
<item idref="1845" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="1855" type="java.util.HashSet">
<item id="1856" type="com.j2fe.workflow.definition.Transition">
<name id="1857">false</name>
<source idref="1847"/>
<target id="1858">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="1859">JSONSplitter </name>
<nodeHandler>com.thegoldensource.publishing.activity.JSONSplitter</nodeHandler>
<nodeHandlerClass id="1860">com.thegoldensource.publishing.activity.JSONSplitter</nodeHandlerClass>
<parameters id="1861" type="java.util.HashSet">
<item id="1862" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1863">dataPath</name>
<stringValue id="1864">dataPath</stringValue>
<type>VARIABLE</type>
</item>
<item id="1865" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1866">entitySequenceNumbers</name>
<stringValue id="1867">EntitySequenceNumbers</stringValue>
<type>VARIABLE</type>
</item>
<item id="1868" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1869">inputJSON</name>
<stringValue id="1870">listMessageTemp</stringValue>
<type>VARIABLE</type>
</item>
<item id="1871" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1872">jsonSplitSequenceNumbers</name>
<stringValue id="1873">EntitySequenceNumbers</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="1874" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1875">outputJSONArray</name>
<stringValue id="1876">OutputJSONArray</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="1877" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1878">seqNumVsMessages</name>
<stringValue id="1879">seqNumVsMessages</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="1880" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1881">splitJSONArray</name>
<stringValue id="1882">SplitNodesArray</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="1883" type="java.util.HashSet">
<item idref="1856" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="1884" type="java.util.HashSet">
<item id="1885" type="com.j2fe.workflow.definition.Transition">
<name id="1886">goto-next</name>
<source idref="1858"/>
<target id="1887">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="1888">Prepare ConvertedString JSONSplitter</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="1889">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="1890" type="java.util.HashSet">
<item id="1891" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1892">statements</name>
<stringValue id="1893">
List convertedStrings = new ArrayList();

for( int tempCount = 0; tempCount &lt; OutputJSONArray.length; tempCount++)
{
	convertedStrings.add( OutputJSONArray[ tempCount ] );
}

listMessageTemp = OutputJSONArray;</stringValue>
<type>CONSTANT</type>
</item>
<item id="1894" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1895">variables["OutputJSONArray"]</name>
<stringValue id="1896">OutputJSONArray</stringValue>
<type>VARIABLE</type>
</item>
<item id="1897" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1898">variables["convertedStrings"]</name>
<stringValue id="1899">convertedStrings</stringValue>
<type>VARIABLE</type>
</item>
<item id="1900" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1901">variables["listMessageTemp"]</name>
<stringValue id="1902">listMessageTemp</stringValue>
<type>VARIABLE</type>
</item>
<item id="1903" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1904">variables["listMessageTemp"]</name>
<stringValue id="1905">listMessageTemp</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="1906" type="java.util.HashSet">
<item idref="1885" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="1907" type="java.util.HashSet">
<item id="1908" type="com.j2fe.workflow.definition.Transition">
<name id="1909">goto-next</name>
<source idref="1887"/>
<target id="1910">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="1911">Automatically generated</description>
<directJoin>false</directJoin>
<name id="1912">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="1913">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="1914" type="java.util.HashSet">
<item idref="1908" type="com.j2fe.workflow.definition.Transition"/>
<item id="1915" type="com.j2fe.workflow.definition.Transition">
<name id="1916">goto-next</name>
<source id="1917">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="1918">Prepare ConvertedStrings</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="1919">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="1920" type="java.util.HashSet">
<item id="1921" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1922">statements</name>
<stringValue id="1923">
List convertedStrings = new ArrayList();

if(FilePerEntity)
{
	for( int tempCount = 0; tempCount &lt; listMessageTemp.length; tempCount++)
		convertedStrings.add( listMessageTemp[ tempCount ] );
}
else
{
	convertedStrings.add(OutputMessage);
}

</stringValue>
<type>CONSTANT</type>
</item>
<item id="1924" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="1925">["FilePerEntity"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="1926">variables["FilePerEntity"]</name>
<stringValue id="1927">FilePerEntity</stringValue>
<type>VARIABLE</type>
</item>
<item id="1928" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1929">variables["OutputMessage"]</name>
<stringValue id="1930">OutputMessage</stringValue>
<type>VARIABLE</type>
</item>
<item id="1931" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1932">variables["convertedStrings"]</name>
<stringValue id="1933">convertedStrings</stringValue>
<type>VARIABLE</type>
</item>
<item id="1934" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1935">variables["listMessageTemp"]</name>
<stringValue id="1936">listMessageTemp</stringValue>
<type>VARIABLE</type>
</item>
<item id="1937" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1938">variables["listMessageTemp"]</name>
<stringValue id="1939">listMessageTemp</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="1940" type="java.util.HashSet">
<item id="1941" type="com.j2fe.workflow.definition.Transition">
<name id="1942">true</name>
<source idref="1847"/>
<target idref="1917"/>
</item>
</sources>
<targets id="1943" type="java.util.HashSet">
<item idref="1915" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="1910"/>
</item>
</sources>
<targets id="1944" type="java.util.HashSet">
<item id="1945" type="com.j2fe.workflow.definition.Transition">
<name id="1946">ToSplit</name>
<source idref="1910"/>
<target id="1947">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="1948">Switch Case</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="1949">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="1950" type="java.util.HashSet">
<item id="1951" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1952">caseItem</name>
<stringValue id="1953">transformationReq</stringValue>
<type>VARIABLE</type>
</item>
<item id="1954" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1955">defaultItem</name>
<stringValue id="1956">NO</stringValue>
<type>CONSTANT</type>
</item>
<item id="1957" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1958">nullTransition</name>
<stringValue id="1959">NO</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="1960" type="java.util.HashSet">
<item idref="1945" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="1961" type="java.util.HashSet">
<item id="1962" type="com.j2fe.workflow.definition.Transition">
<name id="1963">NO</name>
<source idref="1947"/>
<target id="1964">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="1965">Copy Data to Converted Output</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="1966">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="1967" type="java.util.HashSet">
<item id="1968" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1969">statements</name>
<stringValue id="1970">List convertedOutput = new ArrayList();
HashMap seqNumVsMessages = new HashMap();

for(int count = 0; count &lt; EntitySequenceNumbers.length; count++ )
{
	convertedOutput.add( listMessageTemp[count] );    	
	List messages = new ArrayList();

	   if(seqNumVsMessages.get( EntitySequenceNumbers[count] ) == null)
	   {
		messages.add( listMessageTemp[ count ] );
		seqNumVsMessages.put( EntitySequenceNumbers[count], messages );    
	    }
   	else
  	{
		List messages = seqNumVsMessages.get( EntitySequenceNumbers[count] );
		messages.add( listMessageTemp[ count ]);
		seqNumVsMessages.put( EntitySequenceNumbers[count], messages );
    	}
   
	
   	//seqNumVsMessages.put(EntitySequenceNumbers[count], listMessageTemp[count] );	
}</stringValue>
<type>CONSTANT</type>
</item>
<item id="1971" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1972">variables["EntitySequenceNumbers"]</name>
<stringValue id="1973">EntitySequenceNumbers</stringValue>
<type>VARIABLE</type>
</item>
<item id="1974" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1975">variables["convertedOutput"]</name>
<stringValue id="1976">convertedStrings</stringValue>
<type>VARIABLE</type>
</item>
<item id="1977" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1978">variables["convertedStrings"]</name>
<stringValue id="1979">convertedStrings</stringValue>
<type>VARIABLE</type>
</item>
<item id="1980" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1981">variables["listMessageTemp"]</name>
<stringValue id="1982">listMessageTemp</stringValue>
<type>VARIABLE</type>
</item>
<item id="1983" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1984">variables["listMessageTemp"]</name>
<stringValue id="1985">listMessageTemp</stringValue>
<type>VARIABLE</type>
</item>
<item id="1986" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="1987">variables["seqNumVsMessages"]</name>
<stringValue id="1988">seqNumVsMessages</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="1989" type="java.util.HashSet">
<item idref="1962" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="1990" type="java.util.HashSet">
<item id="1991" type="com.j2fe.workflow.definition.Transition">
<name id="1992">goto-next</name>
<source idref="1964"/>
<target id="1993">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="1994">Validation Initialization</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="1995">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="1996" type="java.util.HashSet">
<item id="1997" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="1998">statements</name>
<stringValue id="1999">import java.util.ArrayList;
import java.util.List;

boolean validateJSON = false;

if(resourceConfigType != null)
{
	validateJSON = true;
}


List jsonErrors = new ArrayList();
int loopConvertedStrings = 0;
HashMap validJSONMessages = new HashMap();</stringValue>
<type>CONSTANT</type>
</item>
<item id="2000" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2001">["loopConvertedStrings"]@java/lang/Integer@</UITypeHint>
<input>false</input>
<name id="2002">variables["loopConvertedStrings"]</name>
<stringValue id="2003">loopConvertedStrings</stringValue>
<type>VARIABLE</type>
</item>
<item id="2004" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2005">["resourceConfigType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="2006">variables["resourceConfigType"]</name>
<stringValue id="2007">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="2008">resourceConfigType</variablePart>
</item>
<item id="2009" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="2010">variables["validJSONMessages"]</name>
<stringValue id="2011">validJSONMessages</stringValue>
<type>VARIABLE</type>
</item>
<item id="2012" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2013">["validateJSON"]@java/lang/Boolean@</UITypeHint>
<input>false</input>
<name id="2014">variables["validateJSON"]</name>
<stringValue id="2015">validateJSON</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="2016" type="java.util.HashSet">
<item idref="1991" type="com.j2fe.workflow.definition.Transition"/>
<item id="2017" type="com.j2fe.workflow.definition.Transition">
<name id="2018">goto-next</name>
<source id="2019">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="2020">Copy Translated Output</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="2021">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="2022" type="java.util.HashSet">
<item id="2023" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2024">statements</name>
<objectValue id="2025" type="java.lang.String">//int[] EntitySequenceNumbers = new int[TranslationResult.size()];
List convertedOutput = new ArrayList();
HashMap seqNumVsMessages = new HashMap();
List messages = new ArrayList();

//If validation is required, only then replace the entity sequence numbers. Else use the same.
if(resourceConfigType != null)
{
	EntitySequenceNumbers = new int[TranslationResult.size()];
}
 

for(int output = 0; output &lt; plainOutput.length; output++)
{
    convertedOutput.add(plainOutput[output].toString());
    messages.add(plainOutput[output].toString());
}
 

for(int count = 0; count &lt; TranslationResult.size(); count++ )
{
    if(resourceConfigType != null)
    {
    	EntitySequenceNumbers[count] = TranslationResult.get(count).getCorrelationID();
     }
 

    //Object[] plainOutput = TranslationResult.get(count).getPlainOutput();
/*
    for(int output = 0; output &lt; plainOutput.length; output++)
    {
        convertedOutput.add(plainOutput[output].toString());
        messages.add(plainOutput[output].toString());
    }
*/

 

   int index = TranslationResult.get(count).getCorrelationID();

   List SequenceMessages = new ArrayList();
   SequenceMessages .add( messages.get(count) );

   seqNumVsMessages.put( index, SequenceMessages );    
}

 

                   
if( convertedOutput.isEmpty() || convertedOutput.size() == 0 )
{
    HashMap parameters = new HashMap();
    parameters.put("XSDVALIDATION", "Custom Transformation did not return any results.");

 
	if(entitiesToBePublished != null)
	{
		for(int lengthEntities = 0; lengthEntities &lt; entitiesToBePublished.length; lengthEntities++ )
		{
			entitiesToBePublished[lengthEntities].addNotification(15, "MSGPUB", "XSDVALID", org.apache.log4j.Level.toLevel(40),     parameters);
		} 
	}
}</objectValue>
<type>CONSTANT</type>
</item>
<item id="2026" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2027">variables["EntitySequenceNumbers"]</name>
<stringValue id="2028">EntitySequenceNumbers</stringValue>
<type>VARIABLE</type>
</item>
<item id="2029" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="2030">variables["EntitySequenceNumbers"]</name>
<stringValue id="2031">EntitySequenceNumbers</stringValue>
<type>VARIABLE</type>
</item>
<item id="2032" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2033">variables["TranslationResult"]</name>
<stringValue id="2034">TranslationResult</stringValue>
<type>VARIABLE</type>
</item>
<item id="2035" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2036">["convertedOutput"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="2037">variables["convertedOutput"]</name>
<stringValue id="2038">convertedStrings</stringValue>
<type>VARIABLE</type>
</item>
<item id="2039" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2040">["convertedStrings"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="2041">variables["convertedStrings"]</name>
<stringValue id="2042">convertedStrings</stringValue>
<type>VARIABLE</type>
</item>
<item id="2043" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2044">["entitiesToBePublished"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="2045">variables["entitiesToBePublished"]</name>
<stringValue id="2046">entitiesToBePublished</stringValue>
<type>VARIABLE</type>
</item>
<item id="2047" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2048">variables["plainOutput"]</name>
<stringValue id="2049">PlainOutputArray(forinputArray)</stringValue>
<type>VARIABLE</type>
</item>
<item id="2050" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2051">variables["resourceConfigType"]</name>
<stringValue id="2052">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="2053">resourceConfigType</variablePart>
</item>
<item id="2054" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2055">["seqNumVsMessages"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="2056">variables["seqNumVsMessages"]</name>
<stringValue id="2057">seqNumVsMessages</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="2058" type="java.util.HashSet">
<item id="2059" type="com.j2fe.workflow.definition.Transition">
<name id="2060">goto-next</name>
<source id="2061">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="2062">Translation (Standard)</name>
<nodeHandler>com.j2fe.translation.activities.Translation</nodeHandler>
<nodeHandlerClass id="2063">com.j2fe.translation.activities.Translation</nodeHandlerClass>
<parameters id="2064" type="java.util.HashSet">
<item id="2065" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="2066">allTranslatedOutputs</name>
<stringValue id="2067">TranslationResult</stringValue>
<type>VARIABLE</type>
</item>
<item id="2068" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2069">correlationSequence</name>
<stringValue id="2070">EntitySequenceNumber</stringValue>
<type>VARIABLE</type>
</item>
<item id="2071" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2072">inputArray</name>
<stringValue id="2073">convertedStrings</stringValue>
<type>VARIABLE</type>
</item>
<item id="2074" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2075">mapping</name>
<stringValue id="2076">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="2077">outputValue</variablePart>
</item>
<item id="2078" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2079">["language"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="2080">metaData["language"]</name>
<stringValue id="2081">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="2082">preferredLanguage</variablePart>
</item>
<item id="2083" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2084">["vendor"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="2085">metaData["vendor"]</name>
<stringValue id="2086">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="2087">preferredVendor</variablePart>
</item>
<item id="2088" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="2089">plainOutputArray</name>
<stringValue id="2090">PlainOutputArray(forinputArray)</stringValue>
<type>VARIABLE</type>
</item>
<item id="2091" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="2092">translatedTimestamp</name>
<stringValue id="2093">TranslationTimestamp</stringValue>
<type>VARIABLE</type>
</item>
<item id="2094" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2095">wantedOutputType</name>
<stringValue id="2096">Text</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="2097" type="java.util.HashSet">
<item id="2098" type="com.j2fe.workflow.definition.Transition">
<name id="2099">YES</name>
<source idref="1947"/>
<target idref="2061"/>
</item>
</sources>
<targets id="2100" type="java.util.HashSet">
<item idref="2059" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="2019"/>
</item>
</sources>
<targets id="2101" type="java.util.HashSet">
<item idref="2017" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="1993"/>
</item>
</sources>
<targets id="2102" type="java.util.HashSet">
<item id="2103" type="com.j2fe.workflow.definition.Transition">
<name id="2104">goto-next</name>
<source idref="1993"/>
<target id="2105">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="2106">Bean Shell Script (Standard) #3</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="2107">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="2108" type="java.util.HashSet">
<item id="2109" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2110">statements</name>
<stringValue id="2111">HashMap seqNumVsMessages = new HashMap();

for(int count = 0; count &lt; EntitySequenceNumbers.length; count++ )
{
   List messages = new ArrayList();
   if(seqNumVsMessages.get( EntitySequenceNumbers[count] ) == null)
   {
		messages.add( convertedStrings.get(count) );
		seqNumVsMessages.put( EntitySequenceNumbers[count], messages );    
    }
   else
   {
		messages = seqNumVsMessages.get( EntitySequenceNumbers[count] );
		messages.add( convertedStrings.get(count) );
		seqNumVsMessages.put( EntitySequenceNumbers[count], messages );
    }
   
}
</stringValue>
<type>CONSTANT</type>
</item>
<item id="2112" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2113">["EntitySequenceNumbers"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="2114">variables["EntitySequenceNumbers"]</name>
<stringValue id="2115">EntitySequenceNumbers</stringValue>
<type>VARIABLE</type>
</item>
<item id="2116" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="2117">variables["EntitySequenceNumbers"]</name>
<stringValue id="2118">EntitySequenceNumbers</stringValue>
<type>VARIABLE</type>
</item>
<item id="2119" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2120">["convertedStrings"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="2121">variables["convertedStrings"]</name>
<stringValue id="2122">convertedStrings</stringValue>
<type>VARIABLE</type>
</item>
<item id="2123" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2124">["seqNumVsMessages"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="2125">variables["seqNumVsMessages"]</name>
<stringValue id="2126">seqNumVsMessages</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="2127" type="java.util.HashSet">
<item idref="2103" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="2128" type="java.util.HashSet">
<item id="2129" type="com.j2fe.workflow.definition.Transition">
<name id="2130">goto-next</name>
<source idref="2105"/>
<target id="2131">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="2132">Switch Case</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="2133">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="2134" type="java.util.HashSet">
<item id="2135" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2136">caseInsensitive</name>
<objectValue idref="353"/>
<type>CONSTANT</type>
</item>
<item id="2137" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2138">caseItem</name>
<stringValue id="2139">validateJSON</stringValue>
<type>VARIABLE</type>
</item>
<item id="2140" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2141">defaultItem</name>
<stringValue id="2142">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="2143" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2144">nullTransition</name>
<stringValue id="2145">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="2146" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2147">trimSpaces</name>
<objectValue idref="283"/>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="2148" type="java.util.HashSet">
<item idref="2129" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="2149" type="java.util.HashSet">
<item id="2150" type="com.j2fe.workflow.definition.Transition">
<name id="2151">false</name>
<source idref="2131"/>
<target id="2152">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="2153">Consolidate Without Vallidation</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="2154">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="2155" type="java.util.HashSet">
<item id="2156" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2157">statements</name>
<stringValue id="2158">OutputMessage = convertedOutput;
listMessageTemp = convertedOutput;</stringValue>
<type>CONSTANT</type>
</item>
<item id="2159" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="2160">variables["OutputMessage"]</name>
<stringValue id="2161">OutputMessage</stringValue>
<type>VARIABLE</type>
</item>
<item id="2162" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2163">variables["convertedOutput"]</name>
<stringValue id="2164">convertedStrings</stringValue>
<type>VARIABLE</type>
</item>
<item id="2165" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="2166">variables["listMessageTemp"]</name>
<stringValue id="2167">listMessageTemp</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="2168" type="java.util.HashSet">
<item idref="2150" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="2169" type="java.util.HashSet">
<item id="2170" type="com.j2fe.workflow.definition.Transition">
<name id="2171">goto-next</name>
<source idref="2152"/>
<target idref="1183"/>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
<item id="2172" type="com.j2fe.workflow.definition.Transition">
<name id="2173">true</name>
<source idref="2131"/>
<target id="2174">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="2175">NOP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="2176">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="2177" type="java.util.HashSet">
<item id="2178" type="com.j2fe.workflow.definition.Transition">
<name id="2179">goto-next</name>
<source id="2180">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="2181">NOP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="2182">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="2183" type="java.util.HashSet">
<item id="2184" type="com.j2fe.workflow.definition.Transition">
<name id="2185">goto-next</name>
<source id="2186">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="2187">Remove If Invalid</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="2188">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="2189" type="java.util.HashSet">
<item id="2190" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2191">statements</name>
<stringValue id="2192">import com.thegoldensource.be.service.data.RuleSeverityEnum;

HashMap parameters = new HashMap();

if( EntitySequenceNumbers.length &gt; loopConvertedStrings -1 )
{
	List messages = seqNumVsMessages.get( EntitySequenceNumbers[ loopConvertedStrings -1 ]  );
	messages.remove( convertedStrings.get( loopConvertedStrings -1 ) );
	//seqNumVsMessages.remove( EntitySequenceNumbers[ loopConvertedStrings -1 ] );
	seqNumVsMessages.put( EntitySequenceNumbers[ loopConvertedStrings -1 ], messages);

	parameters.put("JSONVALIDATION", validationErrors);
	entitiesToBePublished[ loopConvertedStrings -1 ].addNotification(1, "MSGPUB", "VALIDATE", RuleSeverityEnum.ERROR, 	parameters);
}</stringValue>
<type>CONSTANT</type>
</item>
<item id="2193" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2194">variables["EntitySequenceNumbers"]</name>
<stringValue id="2195">EntitySequenceNumbers</stringValue>
<type>VARIABLE</type>
</item>
<item id="2196" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2197">variables["convertedStrings"]</name>
<stringValue id="2198">convertedStrings</stringValue>
<type>VARIABLE</type>
</item>
<item id="2199" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2200">variables["entitiesToBePublished"]</name>
<stringValue id="2201">entitiesToBePublished</stringValue>
<type>VARIABLE</type>
</item>
<item id="2202" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2203">["loopConvertedStrings"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="2204">variables["loopConvertedStrings"]</name>
<stringValue id="2205">loopConvertedStrings</stringValue>
<type>VARIABLE</type>
</item>
<item id="2206" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2207">["seqNumVsMessages"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="2208">variables["seqNumVsMessages"]</name>
<stringValue id="2209">seqNumVsMessages</stringValue>
<type>VARIABLE</type>
</item>
<item id="2210" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2211">variables["validationErrors"]</name>
<stringValue id="2212">jsonErrors</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="2213" type="java.util.HashSet">
<item id="2214" type="com.j2fe.workflow.definition.Transition">
<name id="2215">not-valid</name>
<source id="2216">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="2217">JSON Validation</name>
<nodeHandler>com.thegoldensource.publishing.activity.JsonValidation</nodeHandler>
<nodeHandlerClass id="2218">com.thegoldensource.publishing.activity.JsonValidation</nodeHandlerClass>
<parameters id="2219" type="java.util.HashSet">
<item id="2220" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="2221">jsonError</name>
<stringValue id="2222">jsonErrors</stringValue>
<type>VARIABLE</type>
</item>
<item id="2223" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2224">jsonFileAsString</name>
<stringValue id="2225">eachJSON</stringValue>
<type>VARIABLE</type>
</item>
<item id="2226" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2227">schemaFileName</name>
<stringValue id="2228">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="2229">resourceConfigType</variablePart>
</item>
</parameters>
<sources id="2230" type="java.util.HashSet">
<item id="2231" type="com.j2fe.workflow.definition.Transition">
<name id="2232">loop</name>
<source id="2233">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="2234">For Loop</name>
<nodeHandler>com.j2fe.workflow.handler.impl.ForEach</nodeHandler>
<nodeHandlerClass id="2235">com.j2fe.workflow.handler.impl.ForEach</nodeHandlerClass>
<parameters id="2236" type="java.util.HashSet">
<item id="2237" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2238">counter</name>
<stringValue id="2239">loopConvertedStrings</stringValue>
<type>VARIABLE</type>
</item>
<item id="2240" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="2241">counter</name>
<stringValue id="2242">loopConvertedStrings</stringValue>
<type>VARIABLE</type>
</item>
<item id="2243" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2244">incrementValue</name>
<objectValue idref="273"/>
<type>CONSTANT</type>
</item>
<item id="2245" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2246">input</name>
<stringValue id="2247">convertedStrings</stringValue>
<type>VARIABLE</type>
</item>
<item id="2248" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="2249">output</name>
<stringValue id="2250">eachJSON</stringValue>
<type>VARIABLE</type>
</item>
<item id="2251" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2252">resetOnEnd</name>
<objectValue idref="283"/>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="2253" type="java.util.HashSet">
<item id="2254" type="com.j2fe.workflow.definition.Transition">
<name id="2255">goto-next</name>
<source idref="2174"/>
<target idref="2233"/>
</item>
</sources>
<targets id="2256" type="java.util.HashSet">
<item id="2257" type="com.j2fe.workflow.definition.Transition">
<name id="2258">end-loop</name>
<source idref="2233"/>
<target id="2259">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="2260">Consolidate Valid Messages</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="2261">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="2262" type="java.util.HashSet">
<item id="2263" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2264">statements</name>
<objectValue id="2265" type="java.lang.String">import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

List OutputMessage = new ArrayList();
List modified = new ArrayList();

for(Map.Entry entry : seqNumVsMessages.entrySet())
{
                if(entry.getValue() != null)
                {
                                if( entry.getValue() instanceof String )
                                {
                                                OutputMessage.add( entry.getValue() );

                                                Integer seqNumber = entry.getKey();
                                                modified.add( seqNumber );

                                }
                                else
                                {
                                                OutputMessage.addAll((List)entry.getValue());

                                                for(int i=0; i&lt;((List)entry.getValue()).size(); i++)
                                                {
                                                                Integer seqNumber = entry.getKey();

                                                                modified.add( seqNumber );
                                                }
                                }
                                

                }
}

Integer[] modifiedSeq = new Integer[ modified.size() ];

for( int countSeq = 0; countSeq &lt; modified.size(); countSeq++)
                modifiedSeq[ countSeq ] = modified.get( countSeq );

listMessageTemp = OutputMessage;
</objectValue>
<type>CONSTANT</type>
</item>
<item id="2266" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2267">variables["OutputMessage"]</name>
<stringValue id="2268">OutputMessage</stringValue>
<type>VARIABLE</type>
</item>
<item id="2269" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="2270">variables["OutputMessage"]</name>
<stringValue id="2271">OutputMessage</stringValue>
<type>VARIABLE</type>
</item>
<item id="2272" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2273">variables["listMessageTemp"]</name>
<stringValue id="2274">listMessageTemp</stringValue>
<type>VARIABLE</type>
</item>
<item id="2275" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="2276">variables["listMessageTemp"]</name>
<stringValue id="2277">listMessageTemp</stringValue>
<type>VARIABLE</type>
</item>
<item id="2278" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="2279">variables["modifiedSeq"]</name>
<stringValue id="2280">EntitySequenceNumbers</stringValue>
<type>VARIABLE</type>
</item>
<item id="2281" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2282">variables["seqNumVsMessages"]</name>
<stringValue id="2283">seqNumVsMessages</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="2284" type="java.util.HashSet">
<item idref="2257" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="2285" type="java.util.HashSet">
<item id="2286" type="com.j2fe.workflow.definition.Transition">
<name id="2287">goto-next</name>
<source idref="2259"/>
<target idref="1183"/>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
<item idref="2231" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="2216"/>
</item>
</sources>
<targets id="2288" type="java.util.HashSet">
<item idref="2214" type="com.j2fe.workflow.definition.Transition"/>
<item id="2289" type="com.j2fe.workflow.definition.Transition">
<name id="2290">valid</name>
<source idref="2216"/>
<target idref="2180"/>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="2186"/>
</item>
</sources>
<targets id="2291" type="java.util.HashSet">
<item idref="2184" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="2180"/>
</item>
<item idref="2289" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="2292" type="java.util.HashSet">
<item idref="2178" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="2174"/>
</item>
<item idref="2172" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="2293" type="java.util.HashSet">
<item idref="2254" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
<item idref="2098" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
<item idref="1941" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
<item idref="1294" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="1242"/>
</item>
</sources>
<targets id="2294" type="java.util.HashSet">
<item idref="1240" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="1209"/>
</item>
</sources>
<targets id="2295" type="java.util.HashSet">
<item idref="1207" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="1189"/>
</item>
</sources>
<targets id="2296" type="java.util.HashSet">
<item idref="1187" type="com.j2fe.workflow.definition.Transition"/>
<item id="2297" type="com.j2fe.workflow.definition.Transition">
<name id="2298">true</name>
<source idref="1189"/>
<target id="2299">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="2300">Transformation Check</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="2301">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="2302" type="java.util.HashSet">
<item id="2303" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2304">statements</name>
<stringValue id="2305">String transformationReq = "NO";

if(destV != null &amp;&amp; !destV.trim().equals("") ) //&amp;&amp; resourceConfigType == null 
{
transformationReq = "YES";
}

if(prefVendor != null &amp;&amp; prefLanguage!=null)
{
transformationReq = "OOB";
}

/*
Object convertedStrings;


if(FilePerEntity)
{
convertedStrings = listMessageTemp;
}
else
{
convertedStrings = OutputMessage;
}

if(convertedStrings==null)
{
	convertedStrings = listMessageTemp;
}
*/

List convertedStrings = new ArrayList();

if(FilePerEntity)
{
	for( int tempCount = 0; tempCount &lt; listMessageTemp.length; tempCount++)
		convertedStrings.add( listMessageTemp[ tempCount ] );
}
else
{
	convertedStrings.add(OutputMessage);
}

List ValidmessageList = new ArrayList();
//listMessageTemp  = new ArrayList();
HashMap seqNumVsMessages = new HashMap();
</stringValue>
<type>CONSTANT</type>
</item>
<item id="2306" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2307">["FilePerEntity"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="2308">variables["FilePerEntity"]</name>
<stringValue id="2309">FilePerEntity</stringValue>
<type>VARIABLE</type>
</item>
<item id="2310" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2311">variables["OutputMessage"]</name>
<stringValue id="2312">OutputMessage</stringValue>
<type>VARIABLE</type>
</item>
<item id="2313" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="2314">variables["ValidmessageList"]</name>
<stringValue id="2315">ValidmessageList</stringValue>
<type>VARIABLE</type>
</item>
<item id="2316" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2317">["convertedStrings"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="2318">variables["convertedStrings"]</name>
<stringValue id="2319">convertedStrings</stringValue>
<type>VARIABLE</type>
</item>
<item id="2320" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2321">["counter"]@java/lang/Integer@</UITypeHint>
<input>false</input>
<name id="2322">variables["counter"]</name>
<stringValue id="2323">ForLoopCounter</stringValue>
<type>VARIABLE</type>
</item>
<item id="2324" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2325">["destV"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="2326">variables["destV"]</name>
<stringValue id="2327">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="2328">outputValue</variablePart>
</item>
<item id="2329" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2330">["listMessageTemp"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="2331">variables["listMessageTemp"]</name>
<stringValue id="2332">listMessageTemp</stringValue>
<type>VARIABLE</type>
</item>
<item id="2333" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="2334">variables["listMessageTemp"]</name>
<stringValue id="2335">listMessageTemp</stringValue>
<type>VARIABLE</type>
</item>
<item id="2336" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2337">["prefLanguage"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="2338">variables["prefLanguage"]</name>
<stringValue id="2339">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="2340">preferredLanguage</variablePart>
</item>
<item id="2341" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2342">["prefLanguage"]@java/lang/Object@</UITypeHint>
<input>false</input>
<name id="2343">variables["prefLanguage"]</name>
<stringValue id="2344">language</stringValue>
<type>VARIABLE</type>
</item>
<item id="2345" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2346">["prefVendor"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="2347">variables["prefVendor"]</name>
<stringValue id="2348">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="2349">preferredVendor</variablePart>
</item>
<item id="2350" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="2351">variables["prefVendor"]</name>
<stringValue id="2352">vendor</stringValue>
<type>VARIABLE</type>
</item>
<item id="2353" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2354">["resourceConfigType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="2355">variables["resourceConfigType"]</name>
<stringValue id="2356">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="2357">resourceConfigType</variablePart>
</item>
<item id="2358" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="2359">variables["seqNumVsMessages"]</name>
<stringValue id="2360">seqNumVsMessages</stringValue>
<type>VARIABLE</type>
</item>
<item id="2361" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="2362">variables["transformationReq"]</name>
<stringValue id="2363">transformationReq</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="2364" type="java.util.HashSet">
<item idref="2297" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="2365" type="java.util.HashSet">
<item id="2366" type="com.j2fe.workflow.definition.Transition">
<name id="2367">goto-next</name>
<source idref="2299"/>
<target id="2368">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="2369">Switch Case</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="2370">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="2371" type="java.util.HashSet">
<item id="2372" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2373">caseItem</name>
<stringValue id="2374">transformationReq</stringValue>
<type>VARIABLE</type>
</item>
<item id="2375" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2376">defaultItem</name>
<stringValue id="2377">NO</stringValue>
<type>CONSTANT</type>
</item>
<item id="2378" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2379">nullTransition</name>
<stringValue id="2380">NO</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="2381" type="java.util.HashSet">
<item idref="2366" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="2382" type="java.util.HashSet">
<item id="2383" type="com.j2fe.workflow.definition.Transition">
<name id="2384">NO</name>
<source idref="2368"/>
<target id="2385">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="2386">Bean Shell Script (Standard) #6</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="2387">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="2388" type="java.util.HashSet">
<item id="2389" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2390">statements</name>
<stringValue id="2391">List convertedOutput = new ArrayList();
HashMap seqNumVsMessages = new HashMap();

if( CreateSingleFile )
{
	for(int count = 0; count &lt; listMessageTemp.length; count++ )
	{
		convertedOutput.add( listMessageTemp[count] );    	
	   	seqNumVsMessages.put(EntitySequenceNumbers[count], listMessageTemp[count] );	
	}
}
else
{
	for(int count = 0; count &lt; listMessageTemp.length; count++ )
	{
	   	seqNumVsMessages.put(EntitySequenceNumbers[count], listMessageTemp[count] );	
	}

	convertedOutput = convertedStrings;
	
	/*
	for(int i = 0; i &lt; convertedStrings.size(); i++ )
	{
	   	convertedOutput.add(convertedStrings.get(i));
	}
	*/
	
}
</stringValue>
<type>CONSTANT</type>
</item>
<item id="2392" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2393">["CreateSingleFile"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="2394">variables["CreateSingleFile"]</name>
<stringValue id="2395">CreateSingleFile</stringValue>
<type>VARIABLE</type>
</item>
<item id="2396" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2397">variables["EntitySequenceNumbers"]</name>
<stringValue id="2398">EntitySequenceNumbers</stringValue>
<type>VARIABLE</type>
</item>
<item id="2399" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="2400">variables["convertedOutput"]</name>
<stringValue id="2401">convertedOutput</stringValue>
<type>VARIABLE</type>
</item>
<item id="2402" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2403">variables["convertedStrings"]</name>
<stringValue id="2404">convertedStrings</stringValue>
<type>VARIABLE</type>
</item>
<item id="2405" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2406">variables["listMessageTemp"]</name>
<stringValue id="2407">listMessageTemp</stringValue>
<type>VARIABLE</type>
</item>
<item id="2408" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="2409">variables["listMessageTemp"]</name>
<stringValue id="2410">listMessageTemp</stringValue>
<type>VARIABLE</type>
</item>
<item id="2411" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="2412">variables["seqNumVsMessages"]</name>
<stringValue id="2413">seqNumVsMessages</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="2414" type="java.util.HashSet">
<item idref="2383" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="2415" type="java.util.HashSet">
<item id="2416" type="com.j2fe.workflow.definition.Transition">
<name id="2417">goto-next</name>
<source idref="2385"/>
<target id="2418">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="2419">Validation Initialization</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="2420">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="2421" type="java.util.HashSet">
<item id="2422" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2423">statements</name>
<stringValue id="2424">import java.util.ArrayList;
import java.util.List;

boolean validateXSD = false;

if(resourceConfigType != null)
{
	validateXSD = true;
}


List xmlErrors = new ArrayList();
int loopConvertedStrings = 0;
HashMap validXMLMessages = new HashMap();

</stringValue>
<type>CONSTANT</type>
</item>
<item id="2425" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2426">["loopConvertedStrings"]@java/lang/Integer@</UITypeHint>
<input>false</input>
<name id="2427">variables["loopConvertedStrings"]</name>
<stringValue id="2428">loopConvertedStrings</stringValue>
<type>VARIABLE</type>
</item>
<item id="2429" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2430">["resourceConfigType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="2431">variables["resourceConfigType"]</name>
<stringValue id="2432">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="2433">resourceConfigType</variablePart>
</item>
<item id="2434" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="2435">variables["validXMLMessages"]</name>
<stringValue id="2436">validXMLMessages</stringValue>
<type>VARIABLE</type>
</item>
<item id="2437" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2438">["validateXSD"]@java/lang/Boolean@</UITypeHint>
<input>false</input>
<name id="2439">variables["validateXSD"]</name>
<stringValue id="2440">validateXSD</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="2441" type="java.util.HashSet">
<item id="2442" type="com.j2fe.workflow.definition.Transition">
<name id="2443">goto-next</name>
<source id="2444">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="2445">Bean Shell Script (Standard) #3</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="2446">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="2447" type="java.util.HashSet">
<item id="2448" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2449">statements</name>
<objectValue id="2450" type="java.lang.String">//int[] EntitySequenceNumbers = new int[TranslationResult.size()];
List convertedOutput = new ArrayList();
HashMap seqNumVsMessages = new HashMap();
List messages = new ArrayList();

//If validation is required, only then replace the entity sequence numbers. Else use the same.
if(resourceConfigType != null)
{
	EntitySequenceNumbers = new int[TranslationResult.size()];
}

for(int output = 0; output &lt; plainOutput.length; output++)
{
    convertedOutput.add(plainOutput[output].toString());
    messages.add(plainOutput[output].toString());
}
 

for(int count = 0; count &lt; TranslationResult.size(); count++ )
{
    if(resourceConfigType != null)
    {
     	EntitySequenceNumbers[count] = TranslationResult.get(count).getCorrelationID();
     }
 

    //Object[] plainOutput = TranslationResult.get(count).getPlainOutput();
/*
    for(int output = 0; output &lt; plainOutput.length; output++)
    {
        convertedOutput.add(plainOutput[output].toString());
        messages.add(plainOutput[output].toString());
    }
*/

 

   int index = TranslationResult.get(count).getCorrelationID();
   seqNumVsMessages.put( index, messages.get(count) );    
}

 

                   
if( convertedOutput.isEmpty() || convertedOutput.size() == 0 )
{
    HashMap parameters = new HashMap();
    parameters.put("XSDVALIDATION", "Custom Transformation did not return any results.");

 
	if(entitiesToBePublished != null)
	{
		for(int lengthEntities = 0; lengthEntities &lt; entitiesToBePublished.length; lengthEntities++ )
		{
			entitiesToBePublished[lengthEntities].addNotification(15, "MSGPUB", "XSDVALID", org.apache.log4j.Level.toLevel(40),     parameters);
		} 
	}
}</objectValue>
<type>CONSTANT</type>
</item>
<item id="2451" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2452">variables["EntitySequenceNumbers"]</name>
<stringValue id="2453">EntitySequenceNumbers</stringValue>
<type>VARIABLE</type>
</item>
<item id="2454" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="2455">variables["EntitySequenceNumbers"]</name>
<stringValue id="2456">EntitySequenceNumbers</stringValue>
<type>VARIABLE</type>
</item>
<item id="2457" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2458">variables["TranslationResult"]</name>
<stringValue id="2459">TranslationResult</stringValue>
<type>VARIABLE</type>
</item>
<item id="2460" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2461">["convertedOutput"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="2462">variables["convertedOutput"]</name>
<stringValue id="2463">convertedOutput</stringValue>
<type>VARIABLE</type>
</item>
<item id="2464" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2465">["convertedStrings"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="2466">variables["convertedStrings"]</name>
<stringValue id="2467">convertedStrings</stringValue>
<type>VARIABLE</type>
</item>
<item id="2468" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2469">["entitiesToBePublished"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="2470">variables["entitiesToBePublished"]</name>
<stringValue id="2471">entitiesToBePublished</stringValue>
<type>VARIABLE</type>
</item>
<item id="2472" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2473">variables["plainOutput"]</name>
<stringValue id="2474">PlainOutputArray(forinputArray)</stringValue>
<type>VARIABLE</type>
</item>
<item id="2475" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2476">variables["resourceConfigType"]</name>
<stringValue id="2477">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="2478">resourceConfigType</variablePart>
</item>
<item id="2479" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2480">["seqNumVsMessages"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="2481">variables["seqNumVsMessages"]</name>
<stringValue id="2482">seqNumVsMessages</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="2483" type="java.util.HashSet">
<item id="2484" type="com.j2fe.workflow.definition.Transition">
<name id="2485">goto-next</name>
<source id="2486">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="2487">Translation (Standard)</name>
<nodeHandler>com.j2fe.translation.activities.Translation</nodeHandler>
<nodeHandlerClass id="2488">com.j2fe.translation.activities.Translation</nodeHandlerClass>
<parameters id="2489" type="java.util.HashSet">
<item id="2490" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="2491">allTranslatedOutputs</name>
<stringValue id="2492">TranslationResult</stringValue>
<type>VARIABLE</type>
</item>
<item id="2493" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2494">correlationSequence</name>
<stringValue id="2495">EntitySequenceNumber</stringValue>
<type>VARIABLE</type>
</item>
<item id="2496" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2497">inputArray</name>
<stringValue id="2498">convertedStrings</stringValue>
<type>VARIABLE</type>
</item>
<item id="2499" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2500">mapping</name>
<stringValue id="2501">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="2502">outputValue</variablePart>
</item>
<item id="2503" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2504">["language"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="2505">metaData["language"]</name>
<stringValue id="2506">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="2507">preferredLanguage</variablePart>
</item>
<item id="2508" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2509">["vendor"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="2510">metaData["vendor"]</name>
<stringValue id="2511">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="2512">preferredVendor</variablePart>
</item>
<item id="2513" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="2514">plainOutputArray</name>
<stringValue id="2515">PlainOutputArray(forinputArray)</stringValue>
<type>VARIABLE</type>
</item>
<item id="2516" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="2517">translatedTimestamp</name>
<stringValue id="2518">TranslationTimestamp</stringValue>
<type>VARIABLE</type>
</item>
<item id="2519" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2520">wantedOutputType</name>
<stringValue id="2521">Text</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="2522" type="java.util.HashSet">
<item id="2523" type="com.j2fe.workflow.definition.Transition">
<name id="2524">YES</name>
<source id="2525">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="2526">Switch Case</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="2527">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="2528" type="java.util.HashSet">
<item id="2529" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2530">caseItem</name>
<stringValue id="2531">transformationReq</stringValue>
<type>VARIABLE</type>
</item>
<item id="2532" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2533">defaultItem</name>
<stringValue id="2534">NO</stringValue>
<type>CONSTANT</type>
</item>
<item id="2535" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2536">nullTransition</name>
<stringValue id="2537">NO</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="2538" type="java.util.HashSet">
<item id="2539" type="com.j2fe.workflow.definition.Transition">
<name id="2540">goto-next</name>
<source id="2541">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="2542">Transformation Check</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="2543">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="2544" type="java.util.HashSet">
<item id="2545" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2546">statements</name>
<objectValue id="2547" type="java.lang.String">import org.apache.log4j.Logger;
import com.j2fe.general.activities.BeanShellScript;

static final Logger logger = Logger.getLogger(BeanShellScript.class);

String transformationReq = "NO";

if( (destV != null &amp;&amp; !destV.trim().equals("") ) ) // &amp;&amp; ( resourceConfigType == null ) )
{
transformationReq = "YES";
}

convertedStrings = new ArrayList();

for( int i = 0; i &lt; transformedStrings.length; i++ )
{
	//When CreateSingleFile=true and XML is output type, the translation adds &lt;?xml&gt; to the start. Need to remove it for correct merge of files.
	if( CreateSingleFile == true &amp;&amp; publishingFileType.toString().equals("XML") )
	{
		String transformedText = transformedStrings[i];
		String header = "&lt;?xml version='1.0' encoding='utf-8'?&gt;";		

		if( transformedText.contains( "?xml") )
			transformedText  = transformedText.substring(transformedText.indexOf("&gt;") + 1);

		logger.info("STEP1:: " + transformedText);
		
		if( transformationReq.equals("NO") )
		{
			String coveringHeader = gsoName.toUpperCase();
			if( transformedText.contains( coveringHeader  ) )			
			{
				transformedText  = transformedText.substring(transformedText.indexOf( "&gt;" ) + 1);				
				logger.info("STEP2:: " + transformedText);
			}

			String coveringFooter = "&lt;/" + gsoName.toUpperCase() + "S&gt;";
			if( transformedText.contains( coveringFooter ) )			
			{
				transformedText  = transformedText.substring( 0, transformedText.indexOf(coveringFooter) );				
				logger.info("STEP3:: " + transformedText);
			}

		}

		convertedStrings.add( transformedText );
	}
	else
		convertedStrings.add( transformedStrings[i] );
}
</objectValue>
<type>CONSTANT</type>
</item>
<item id="2548" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2549">["CreateSingleFile"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="2550">variables["CreateSingleFile"]</name>
<stringValue id="2551">CreateSingleFile</stringValue>
<type>VARIABLE</type>
</item>
<item id="2552" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2553">["FilePerEntity"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="2554">variables["FilePerEntity"]</name>
<stringValue id="2555">FilePerEntity</stringValue>
<type>VARIABLE</type>
</item>
<item id="2556" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2557">["convertedStrings"]@java/lang/Object@</UITypeHint>
<input>false</input>
<name id="2558">variables["convertedStrings"]</name>
<stringValue id="2559">convertedStrings</stringValue>
<type>VARIABLE</type>
</item>
<item id="2560" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2561">["destV"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="2562">variables["destV"]</name>
<stringValue id="2563">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="2564">outputValue</variablePart>
</item>
<item id="2565" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2566">["gsoName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="2567">variables["gsoName"]</name>
<stringValue id="2568">publishingDef</stringValue>
<type>VARIABLE</type>
<variablePart id="2569">model</variablePart>
</item>
<item id="2570" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2571">["prefLanguage"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="2572">variables["prefLanguage"]</name>
<stringValue id="2573">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="2574">preferredLanguage</variablePart>
</item>
<item id="2575" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2576">["prefVendor"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="2577">variables["prefVendor"]</name>
<stringValue id="2578">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="2579">preferredVendor</variablePart>
</item>
<item id="2580" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2581">["publishingFileType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="2582">variables["publishingFileType"]</name>
<stringValue id="2583">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="2584">outputType</variablePart>
</item>
<item id="2585" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2586">["resourceConfigType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="2587">variables["resourceConfigType"]</name>
<stringValue id="2588">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="2589">resourceConfigType</variablePart>
</item>
<item id="2590" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="2591">variables["transformationReq"]</name>
<stringValue id="2592">transformationReq</stringValue>
<type>VARIABLE</type>
</item>
<item id="2593" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2594">variables["transformedStrings"]</name>
<stringValue id="2595">transformedStrings</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="2596" type="java.util.HashSet">
<item id="2597" type="com.j2fe.workflow.definition.Transition">
<name id="2598">goto-next</name>
<source id="2599">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="2600">Translation (Standard) #2</name>
<nodeHandler>com.j2fe.translation.activities.Translation</nodeHandler>
<nodeHandlerClass id="2601">com.j2fe.translation.activities.Translation</nodeHandlerClass>
<parameters id="2602" type="java.util.HashSet">
<item id="2603" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2604">inputArray</name>
<stringValue id="2605">convertedStrings</stringValue>
<type>VARIABLE</type>
</item>
<item id="2606" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2607">mapping</name>
<objectValue id="2608" type="java.net.URI">db://resource/Publishing/standardXslt.xslt</objectValue>
<type>CONSTANT</type>
</item>
<item id="2609" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2610">["language"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="2611">metaData["language"]</name>
<stringValue id="2612">language</stringValue>
<type>VARIABLE</type>
</item>
<item id="2613" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2614">["vendor"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="2615">metaData["vendor"]</name>
<stringValue id="2616">vendor</stringValue>
<type>VARIABLE</type>
</item>
<item id="2617" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="2618">plainOutputArray</name>
<stringValue id="2619">transformedStrings</stringValue>
<type>VARIABLE</type>
</item>
<item id="2620" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2621">wantedOutputType</name>
<objectValue id="2622" type="com.j2fe.translation.InputType">Text</objectValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="2623" type="java.util.HashSet">
<item id="2624" type="com.j2fe.workflow.definition.Transition">
<name id="2625">OOB</name>
<source idref="2368"/>
<target idref="2599"/>
</item>
</sources>
<targets id="2626" type="java.util.HashSet">
<item idref="2597" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="2541"/>
</item>
</sources>
<targets id="2627" type="java.util.HashSet">
<item idref="2539" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="2525"/>
</item>
</sources>
<targets id="2628" type="java.util.HashSet">
<item id="2629" type="com.j2fe.workflow.definition.Transition">
<name id="2630">NO</name>
<source idref="2525"/>
<target id="2631">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="2632">Bean Shell Script (Standard) #6</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="2633">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="2634" type="java.util.HashSet">
<item id="2635" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2636">statements</name>
<stringValue id="2637">List convertedOutput = new ArrayList();
HashMap seqNumVsMessages = new HashMap();

for(int count = 0; count &lt; convertedStrings.size(); count++ )
{
	convertedOutput.add( convertedStrings.get(count) );    	
   	seqNumVsMessages.put(EntitySequenceNumbers[count], convertedStrings.get(count) );	
}
</stringValue>
<type>CONSTANT</type>
</item>
<item id="2638" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2639">variables["EntitySequenceNumbers"]</name>
<stringValue id="2640">EntitySequenceNumbers</stringValue>
<type>VARIABLE</type>
</item>
<item id="2641" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="2642">variables["convertedOutput"]</name>
<stringValue id="2643">convertedOutput</stringValue>
<type>VARIABLE</type>
</item>
<item id="2644" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2645">variables["convertedStrings"]</name>
<stringValue id="2646">convertedStrings</stringValue>
<type>VARIABLE</type>
</item>
<item id="2647" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="2648">variables["listMessageTemp"]</name>
<stringValue id="2649">listMessageTemp</stringValue>
<type>VARIABLE</type>
</item>
<item id="2650" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="2651">variables["seqNumVsMessages"]</name>
<stringValue id="2652">seqNumVsMessages</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="2653" type="java.util.HashSet">
<item idref="2629" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="2654" type="java.util.HashSet">
<item id="2655" type="com.j2fe.workflow.definition.Transition">
<name id="2656">goto-next</name>
<source idref="2631"/>
<target idref="2418"/>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
<item idref="2523" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="2486"/>
</item>
<item id="2657" type="com.j2fe.workflow.definition.Transition">
<name id="2658">YES</name>
<source idref="2368"/>
<target idref="2486"/>
</item>
</sources>
<targets id="2659" type="java.util.HashSet">
<item idref="2484" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="2444"/>
</item>
</sources>
<targets id="2660" type="java.util.HashSet">
<item idref="2442" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="2418"/>
</item>
<item idref="2655" type="com.j2fe.workflow.definition.Transition"/>
<item idref="2416" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="2661" type="java.util.HashSet">
<item id="2662" type="com.j2fe.workflow.definition.Transition">
<name id="2663">goto-next</name>
<source idref="2418"/>
<target id="2664">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="2665">Switch Case</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="2666">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="2667" type="java.util.HashSet">
<item id="2668" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2669">caseInsensitive</name>
<objectValue idref="353"/>
<type>CONSTANT</type>
</item>
<item id="2670" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2671">caseItem</name>
<stringValue id="2672">validateXSD</stringValue>
<type>VARIABLE</type>
</item>
<item id="2673" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2674">defaultItem</name>
<stringValue id="2675">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="2676" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2677">nullTransition</name>
<stringValue id="2678">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="2679" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2680">trimSpaces</name>
<objectValue idref="283"/>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="2681" type="java.util.HashSet">
<item idref="2662" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="2682" type="java.util.HashSet">
<item id="2683" type="com.j2fe.workflow.definition.Transition">
<name id="2684">false</name>
<source idref="2664"/>
<target id="2685">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="2686">Consolidate Without Vallidation</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="2687">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="2688" type="java.util.HashSet">
<item id="2689" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2690">statements</name>
<stringValue id="2691">OutputMessage = convertedOutput;
listMessageTemp = convertedOutput;</stringValue>
<type>CONSTANT</type>
</item>
<item id="2692" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="2693">variables["OutputMessage"]</name>
<stringValue id="2694">OutputMessage</stringValue>
<type>VARIABLE</type>
</item>
<item id="2695" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2696">variables["convertedOutput"]</name>
<stringValue id="2697">convertedOutput</stringValue>
<type>VARIABLE</type>
</item>
<item id="2698" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="2699">variables["listMessageTemp"]</name>
<stringValue id="2700">listMessageTemp</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="2701" type="java.util.HashSet">
<item idref="2683" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="2702" type="java.util.HashSet">
<item id="2703" type="com.j2fe.workflow.definition.Transition">
<name id="2704">goto-next</name>
<source idref="2685"/>
<target idref="1183"/>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
<item id="2705" type="com.j2fe.workflow.definition.Transition">
<name id="2706">true</name>
<source idref="2664"/>
<target id="2707">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="2708">NOP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="2709">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="2710" type="java.util.HashSet">
<item idref="2705" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="2711" type="java.util.HashSet">
<item id="2712" type="com.j2fe.workflow.definition.Transition">
<name id="2713">goto-next</name>
<source idref="2707"/>
<target id="2714">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="2715">Automatically generated</description>
<directJoin>false</directJoin>
<name id="2716">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="2717">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="2718" type="java.util.HashSet">
<item idref="2712" type="com.j2fe.workflow.definition.Transition"/>
<item id="2719" type="com.j2fe.workflow.definition.Transition">
<name id="2720">goto-next</name>
<source id="2721">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="2722">NOP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="2723">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="2724" type="java.util.HashSet">
<item id="2725" type="com.j2fe.workflow.definition.Transition">
<name id="2726">goto-next</name>
<source id="2727">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="2728">Remove If Invalid</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="2729">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="2730" type="java.util.HashSet">
<item id="2731" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2732">statements</name>
<stringValue id="2733">import com.thegoldensource.be.service.data.RuleSeverityEnum;

HashMap parameters = new HashMap();

if( EntitySequenceNumbers.length &gt; loopConvertedStrings -1 )
{
	seqNumVsMessages.remove( EntitySequenceNumbers[ loopConvertedStrings -1 ] );

	parameters.put("XSDVALIDATION", validationErrors);
	entitiesToBePublished[ loopConvertedStrings -1 ].addNotification(1, "MSGPUB", "XSDVALID", RuleSeverityEnum.ERROR, 	parameters);
}</stringValue>
<type>CONSTANT</type>
</item>
<item id="2734" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2735">variables["EntitySequenceNumbers"]</name>
<stringValue id="2736">EntitySequenceNumbers</stringValue>
<type>VARIABLE</type>
</item>
<item id="2737" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2738">variables["entitiesToBePublished"]</name>
<stringValue id="2739">entitiesToBePublished</stringValue>
<type>VARIABLE</type>
</item>
<item id="2740" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2741">["loopConvertedStrings"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="2742">variables["loopConvertedStrings"]</name>
<stringValue id="2743">loopConvertedStrings</stringValue>
<type>VARIABLE</type>
</item>
<item id="2744" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2745">["seqNumVsMessages"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="2746">variables["seqNumVsMessages"]</name>
<stringValue id="2747">seqNumVsMessages</stringValue>
<type>VARIABLE</type>
</item>
<item id="2748" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2749">variables["validationErrors"]</name>
<stringValue id="2750">validationErrors</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="2751" type="java.util.HashSet">
<item id="2752" type="com.j2fe.workflow.definition.Transition">
<name id="2753">not-valid</name>
<source id="2754">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="2755">XML Validation</name>
<nodeHandler>com.j2fe.workflow.handler.impl.XMLValidation</nodeHandler>
<nodeHandlerClass id="2756">com.j2fe.workflow.handler.impl.XMLValidation</nodeHandlerClass>
<parameters id="2757" type="java.util.HashSet">
<item id="2758" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="2759">xmlError</name>
<stringValue id="2760">validationErrors</stringValue>
<type>VARIABLE</type>
</item>
<item id="2761" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2762">xmlFileAsString</name>
<stringValue id="2763">eachXML</stringValue>
<type>VARIABLE</type>
</item>
<item id="2764" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2765">xsdFileName</name>
<stringValue id="2766">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="2767">resourceConfigType</variablePart>
</item>
</parameters>
<sources id="2768" type="java.util.HashSet">
<item id="2769" type="com.j2fe.workflow.definition.Transition">
<name id="2770">loop</name>
<source id="2771">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="2772">For Loop</name>
<nodeHandler>com.j2fe.workflow.handler.impl.ForEach</nodeHandler>
<nodeHandlerClass id="2773">com.j2fe.workflow.handler.impl.ForEach</nodeHandlerClass>
<parameters id="2774" type="java.util.HashSet">
<item id="2775" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2776">counter</name>
<stringValue id="2777">loopConvertedStrings</stringValue>
<type>VARIABLE</type>
</item>
<item id="2778" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="2779">counter</name>
<stringValue id="2780">loopConvertedStrings</stringValue>
<type>VARIABLE</type>
</item>
<item id="2781" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2782">incrementValue</name>
<objectValue idref="273"/>
<type>CONSTANT</type>
</item>
<item id="2783" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2784">input</name>
<stringValue id="2785">convertedOutput</stringValue>
<type>VARIABLE</type>
</item>
<item id="2786" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="2787">output</name>
<stringValue id="2788">eachXML</stringValue>
<type>VARIABLE</type>
</item>
<item id="2789" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2790">resetOnEnd</name>
<objectValue idref="283"/>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="2791" type="java.util.HashSet">
<item id="2792" type="com.j2fe.workflow.definition.Transition">
<name id="2793">ToSplit</name>
<source idref="2714"/>
<target idref="2771"/>
</item>
</sources>
<targets id="2794" type="java.util.HashSet">
<item id="2795" type="com.j2fe.workflow.definition.Transition">
<name id="2796">end-loop</name>
<source idref="2771"/>
<target id="2797">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="2798">Consolidate Valid Messages</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="2799">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="2800" type="java.util.HashSet">
<item id="2801" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2802">statements</name>
<objectValue id="2803" type="java.lang.String">import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

List OutputMessage = new ArrayList();
List modified = new ArrayList();

for(Map.Entry entry : seqNumVsMessages.entrySet())
{
                if(entry.getValue() != null)
                {
                                if( entry.getValue() instanceof String )
                                {
                                                OutputMessage.add( entry.getValue() );

                                                Integer seqNumber = entry.getKey();
                                                modified.add( seqNumber );

                                }
                                else
                                {
                                                OutputMessage.addAll((List)entry.getValue());

                                                for(int i=0; i&lt;((List)entry.getValue()).size(); i++)
                                                {
                                                                Integer seqNumber = entry.getKey();

                                                                modified.add( seqNumber );
                                                }
                                }
                                

                }
}

Integer[] modifiedSeq = new Integer[ modified.size() ];

for( int countSeq = 0; countSeq &lt; modified.size(); countSeq++)
                modifiedSeq[ countSeq ] = modified.get( countSeq );

listMessageTemp = OutputMessage;
</objectValue>
<type>CONSTANT</type>
</item>
<item id="2804" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2805">variables["OutputMessage"]</name>
<stringValue id="2806">OutputMessage</stringValue>
<type>VARIABLE</type>
</item>
<item id="2807" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="2808">variables["OutputMessage"]</name>
<stringValue id="2809">OutputMessage</stringValue>
<type>VARIABLE</type>
</item>
<item id="2810" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2811">variables["listMessageTemp"]</name>
<stringValue id="2812">listMessageTemp</stringValue>
<type>VARIABLE</type>
</item>
<item id="2813" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="2814">variables["listMessageTemp"]</name>
<stringValue id="2815">listMessageTemp</stringValue>
<type>VARIABLE</type>
</item>
<item id="2816" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="2817">variables["modifiedSeq"]</name>
<stringValue id="2818">EntitySequenceNumbers</stringValue>
<type>VARIABLE</type>
</item>
<item id="2819" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2820">variables["seqNumVsMessages"]</name>
<stringValue id="2821">seqNumVsMessages</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="2822" type="java.util.HashSet">
<item idref="2795" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="2823" type="java.util.HashSet">
<item id="2824" type="com.j2fe.workflow.definition.Transition">
<name id="2825">goto-next</name>
<source idref="2797"/>
<target idref="1183"/>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
<item idref="2769" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="2754"/>
</item>
</sources>
<targets id="2826" type="java.util.HashSet">
<item idref="2752" type="com.j2fe.workflow.definition.Transition"/>
<item id="2827" type="com.j2fe.workflow.definition.Transition">
<name id="2828">valid</name>
<source idref="2754"/>
<target idref="2721"/>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="2727"/>
</item>
</sources>
<targets id="2829" type="java.util.HashSet">
<item idref="2725" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="2721"/>
</item>
<item idref="2827" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="2830" type="java.util.HashSet">
<item idref="2719" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="2714"/>
</item>
</sources>
<targets id="2831" type="java.util.HashSet">
<item idref="2792" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
<item idref="2624" type="com.j2fe.workflow.definition.Transition"/>
<item idref="2657" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="1183"/>
</item>
<item idref="2824" type="com.j2fe.workflow.definition.Transition"/>
<item idref="2286" type="com.j2fe.workflow.definition.Transition"/>
<item idref="2703" type="com.j2fe.workflow.definition.Transition"/>
<item idref="2170" type="com.j2fe.workflow.definition.Transition"/>
<item idref="1726" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="2832" type="java.util.HashSet">
<item idref="1181" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="1167"/>
</item>
</sources>
<targets id="2833" type="java.util.HashSet">
<item idref="1165" type="com.j2fe.workflow.definition.Transition"/>
<item id="2834" type="com.j2fe.workflow.definition.Transition">
<name id="2835">true</name>
<source idref="1167"/>
<target id="2836">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="2837">Destination Initialization</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="2838">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="2839" type="java.util.HashSet">
<item id="2840" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2841">statements</name>
<stringValue id="2842">import com.thegoldensource.subscription.PublishingDestination;



PublishingDestination destType = destinationDef.getDestination();



String downStreamSystemName = destinationDef.getDownstreamSystemName();



String downStreamDestinationId = destinationDef.getDownstreamDestinationId();



String destVal = destinationDef.getDestinationValue();



String[] emailVal = {destVal};




if(destVal !=null )

{

    emailVal = destinationDef.getDestinationValue().split(",");

}



</stringValue>
<type>CONSTANT</type>
</item>
<item id="2843" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2844">["destType"]@com/thegoldensource/subscription/PublishingDestination@</UITypeHint>
<input>false</input>
<name id="2845">variables["destType"]</name>
<stringValue id="2846">destType</stringValue>
<type>VARIABLE</type>
</item>
<item id="2847" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="2848">variables["destVal"]</name>
<stringValue id="2849">destVal</stringValue>
<type>VARIABLE</type>
</item>
<item id="2850" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2851">variables["destinationDef"]</name>
<stringValue id="2852">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="2853">destinationDefinitions[0]</variablePart>
</item>
<item id="2854" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2855">["downStreamDestinationId"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="2856">variables["downStreamDestinationId"]</name>
<stringValue id="2857">downStreamDestinationId</stringValue>
<type>VARIABLE</type>
</item>
<item id="2858" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2859">["downStreamSystemName"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="2860">variables["downStreamSystemName"]</name>
<stringValue id="2861">downstreamSysName</stringValue>
<type>VARIABLE</type>
</item>
<item id="2862" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="2863">variables["emailVal"]</name>
<stringValue id="2864">emailVal</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="2865" type="java.util.HashSet">
<item idref="2834" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="2866" type="java.util.HashSet">
<item id="2867" type="com.j2fe.workflow.definition.Transition">
<name id="2868">goto-next</name>
<source idref="2836"/>
<target id="2869">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="2870">Data To Be Published Exists?</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="2871">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="2872" type="java.util.HashSet">
<item id="2873" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2874">statements</name>
<stringValue id="2875">boolean dataToBePublishedExists = false;

if(  EntitySequenceNumbers!= null &amp;&amp; EntitySequenceNumbers.length &gt; 0 )
	dataToBePublishedExists = true;</stringValue>
<type>CONSTANT</type>
</item>
<item id="2876" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2877">variables["EntitySequenceNumbers"]</name>
<stringValue id="2878">EntitySequenceNumbers</stringValue>
<type>VARIABLE</type>
</item>
<item id="2879" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2880">["dataToBePublishedExists"]@java/lang/Boolean@</UITypeHint>
<input>false</input>
<name id="2881">variables["dataToBePublishedExists"]</name>
<stringValue id="2882">dataToBePublishedExists</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="2883" type="java.util.HashSet">
<item idref="2867" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="2884" type="java.util.HashSet">
<item id="2885" type="com.j2fe.workflow.definition.Transition">
<name id="2886">goto-next</name>
<source idref="2869"/>
<target id="2887">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="2888">Switch Case</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="2889">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="2890" type="java.util.HashSet">
<item id="2891" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2892">caseInsensitive</name>
<stringValue id="2893">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="2894" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2895">caseItem</name>
<stringValue id="2896">dataToBePublishedExists</stringValue>
<type>VARIABLE</type>
</item>
<item id="2897" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2898">defaultItem</name>
<stringValue id="2899">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="2900" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2901">nullTransition</name>
<stringValue id="2902">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="2903" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2904">trimSpaces</name>
<stringValue id="2905">true</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="2906" type="java.util.HashSet">
<item idref="2885" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="2907" type="java.util.HashSet">
<item id="2908" type="com.j2fe.workflow.definition.Transition">
<name id="2909">goto-next</name>
<source idref="2887"/>
<target idref="1131"/>
</item>
<item id="2910" type="com.j2fe.workflow.definition.Transition">
<name id="2911">true</name>
<source idref="2887"/>
<target id="2912">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="2913">Merge Data</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="2914">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="2915" type="java.util.HashSet">
<item id="2916" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2917">statements</name>
<objectValue id="2918" type="java.lang.String">import java.util.ArrayList;
import java.util.List;
import java.lang.StringBuilder;

List finalData = new ArrayList();
//finalData.addAll(listMessageTemp);

//In case of JSON message, createSingleFile is not yet handled. But if filePerEntity is false, then multiple entities should be published in one file.
//JSON requires opening and closing square brackets to denote multiple entities as array and it is handled in OutputMessage parameter of JSON Converter.
if( publishingFileType != null &amp;&amp; publishingFileType.toString().equalsIgnoreCase("JSON") &amp;&amp; FilePerEntity == false)
{
	final StringBuilder builder = new StringBuilder();
	String BEName = GSOName;
	BEName = BEName.toUpperCase();

       	builder.append("{");
    	builder.append("\"");
       	builder.append(BEName + "\":");
       	builder.append("[");

	boolean isFirstString = true;
	for( String eachRecord : OutputMessage )
	{
               	if(isFirstString == true)
               	{
               		isFirstString = false;
               	}
               	else
               		builder.append(",");

		builder.append( eachRecord );
		//finalData.add(eachRecord); 					
	}

	builder.append("]");
        builder.append("}");

	finalData.add( builder.toString() );
 
}
else if( publishingFileType.toString().equalsIgnoreCase("CSV") &amp;&amp; FilePerEntity == false &amp;&amp;  !CreateSingleFile )
{
	//If not single file and file per entity is false, then remove the header from every record and then prepare finalData.
	boolean headerAdded = false;
	for(String eachRecord : OutputMessage)
	{
		String[] arrayCSVData  = eachRecord.split("\n");
			
		String actualData = arrayCSVData[arrayCSVData.length -1];	
		if( headerAdded == false )
		{
			finalData.add( eachRecord);
			headerAdded = true;
		}
		else
			finalData.add( actualData );
	}			
}
else
{
	for( String eachRecord : listMessageTemp )
	{
		finalData.add(eachRecord); 					

		/* Will be taken care by appendEOF parameter of the workflow.
		//Need to add a carriage return for better representation when files are merged.
		if( ( fileExtension != null &amp;&amp; !fileExtension.isEmpty() &amp;&amp; fileExtension.equalsIgnoreCase("CSV") ) || 
		( publishingFileType !=null &amp;&amp; publishingFileType.toString().equals("CSV") ) )
			finalData.add("\n"); 		
		*/
	}
}

/*
if(CreateSingleFile)
{
	if(fileExtension != null &amp;&amp; !fileExtension.isEmpty() &amp;&amp; fileExtension.equalsIgnoreCase("CSV"))
	{		
		removeHeader = true;
		for(String eachRecord : OutputMessage)
		{
			String[] arrayCSVData  = eachRecord.split("\n");
			
			//String actualData = arrayCSVData[arrayCSVData.length -1];	
			
			if( eachRecord != null &amp;&amp; !eachRecord .isEmpty() )	
			{
				finalData.add(eachRecord); 					
				finalData.add("\n"); 		
			}
		}			
		
		System.out.println("finalData:: " + finalData);
	}

	if(fileExtension != null &amp;&amp; !fileExtension.isEmpty() &amp;&amp; fileExtension.equalsIgnoreCase("XML"))
	{
		boolean removeHeaderFooterTags = true;
				
		for(String eachRecord : OutputMessage)
		{
			String firstLineRemoved = eachRecord.substring(eachRecord.indexOf("&lt;"+GSOName+"&gt;"));
			System.out.println("firstLineRemoved :: " + firstLineRemoved);
				
			finalData.add( firstLineRemoved );
			//String headerRemoved = 	firstLineRemoved.subString(firstLineRemoved .indexOf("\n"));
			//System.out.println("headerRemoved  :: " + headerRemoved );	
		}
	}
}
else
{
	finalData.addAll(OutputMessage);
}
*/
</objectValue>
<type>CONSTANT</type>
</item>
<item id="2919" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2920">["CreateSingleFile"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="2921">variables["CreateSingleFile"]</name>
<stringValue id="2922">CreateSingleFile</stringValue>
<type>VARIABLE</type>
</item>
<item id="2923" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2924">["FilePerEntity"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="2925">variables["FilePerEntity"]</name>
<stringValue id="2926">FilePerEntity</stringValue>
<type>VARIABLE</type>
</item>
<item id="2927" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2928">["GSOName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="2929">variables["GSOName"]</name>
<stringValue id="2930">publishingDef</stringValue>
<type>VARIABLE</type>
<variablePart id="2931">model</variablePart>
</item>
<item id="2932" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2933">variables["OutputMessage"]</name>
<stringValue id="2934">OutputMessage</stringValue>
<type>VARIABLE</type>
</item>
<item id="2935" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2936">variables["arrayPBDPMessage"]</name>
<stringValue id="2937">arrayPBDPMessage</stringValue>
<type>VARIABLE</type>
</item>
<item id="2938" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="2939">variables["arrayPBDPMessage"]</name>
<stringValue id="2940">arrayPBDPMessage</stringValue>
<type>VARIABLE</type>
</item>
<item id="2941" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="2942">variables["finalData"]</name>
<stringValue id="2943">finalData</stringValue>
<type>VARIABLE</type>
</item>
<item id="2944" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2945">["headerString"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="2946">variables["headerString"]</name>
<stringValue id="2947">headerString</stringValue>
<type>VARIABLE</type>
</item>
<item id="2948" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2949">variables["listMessageTemp"]</name>
<stringValue id="2950">listMessageTemp</stringValue>
<type>VARIABLE</type>
</item>
<item id="2951" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2952">["publishingFileType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="2953">variables["publishingFileType"]</name>
<stringValue id="2954">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="2955">outputType</variablePart>
</item>
</parameters>
<sources id="2956" type="java.util.HashSet">
<item idref="2910" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="2957" type="java.util.HashSet">
<item id="2958" type="com.j2fe.workflow.definition.Transition">
<name id="2959">goto-next</name>
<source idref="2912"/>
<target id="2960">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="2961">Create File Name</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="2962">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="2963" type="java.util.HashSet">
<item id="2964" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2965">statements</name>
<objectValue id="2966" type="java.lang.String">import com.thegoldensource.subscription.PublishedOutPutType;
import java.util.GregorianCalendar;
import org.apache.log4j.Logger;
import com.j2fe.general.activities.BeanShellScript;
import java.text.SimpleDateFormat;
import java.time.Instant;

static final Logger logger = Logger.getLogger(BeanShellScript.class);

String nameOfFile;
String PublishingFileName = subscriptionProperties.get("FILE_NAME");
String fileExtension = subscriptionProperties.get("FILE_EXTENSION");

logger.debug("Date Format:" + DateFormat );

if( CreateSingleFile == true )
{
	nameOfFile = "Temp_" + threadId + "_" + Integer.toString(EntitySequenceNumbers[0])  ;

	if(fileExtension != null &amp;&amp; !fileExtension.isEmpty())
		nameOfFile += fileExtension;
	else if(publishingFileType !=null &amp;&amp; publishingFileType.toString().equals("JSON"))
		nameOfFile += ".json";
	else if(publishingFileType !=null &amp;&amp; publishingFileType.toString().equals("CSV"))
		nameOfFile += ".csv";
	else
		nameOfFile += ".xml";
}
else if(PublishingFileName == null || ( PublishingFileName != null &amp;&amp; PublishingFileName.isEmpty() ) )
{
	nameOfFile ="PublishedFile"+"_" + System.nanoTime( ); 

	nameOfFile += "_" + Integer.toString(EntitySequenceNumbers[0]);

	if(fileExtension != null &amp;&amp; !fileExtension.isEmpty())
		nameOfFile += fileExtension;
	else if(publishingFileType !=null &amp;&amp; publishingFileType.toString().equals("JSON"))
		nameOfFile += ".json";
	else if(publishingFileType !=null &amp;&amp; publishingFileType.toString().equals("CSV"))
		nameOfFile += ".csv";
	else
		nameOfFile += ".xml";
}
else
{
	if ( PublishingFileName.lastIndexOf(".") &gt; 0)
	{
		nameOfFile = PublishingFileName.substring(0,PublishingFileName.lastIndexOf("."));
		if(DateFormat != null &amp;&amp; !DateFormat.isEmpty())
		{			
			nameOfFile += "_" + new SimpleDateFormat(DateFormat).format(Calendar.getInstance().getTime());
			//nameOfFile += "_" + new SimpleDateFormat(DateFormat).format(Instant.now().toEpochMilli());
		}
		         
		  nameOfFile += PublishingFileName.substring(PublishingFileName.lastIndexOf("."));
	   }
	   else
	   {
		       nameOfFile = PublishingFileName;    
       	        	if(DateFormat != null &amp;&amp; !DateFormat.isEmpty())
			{			    
                  	  	 nameOfFile += "_" + new SimpleDateFormat(DateFormat).format(Calendar.getInstance().getTime());
			   	// nameOfFile += "_" + new SimpleDateFormat(DateFormat).format(Instant.now().toEpochMilli());
               	 	}
               	
	     }

	//GT 157263 - Same file name getting created when two bulks are processed in a split second.
	nameOfFile += "_" + Integer.toString(EntitySequenceNumbers[0]);

	if(fileExtension != null &amp;&amp; !fileExtension.isEmpty())
		nameOfFile += fileExtension;
	else if(publishingFileType !=null &amp;&amp; publishingFileType.toString().equals("JSON"))
		nameOfFile += ".json";
	else if(publishingFileType !=null &amp;&amp; publishingFileType.toString().equals("CSV"))
		nameOfFile += ".csv";
	else
		nameOfFile += ".xml";
}


/*
if(publishingFileType !=null &amp;&amp; publishingFileType.toString().equals("CSV"))
{
	   if(PublishingFileName == null || PublishingFileName.isEmpty() )
		    nameOfFile ="PublishedFile"+"_" + System.nanoTime( )+ ".csv";
	   else
	   {
		       nameOfFile =PublishingFileName; // + ".csv";
               if(DateFormat != null &amp;&amp; !DateFormat.isEmpty())
	        {			
			nameOfFile += "_" + new SimpleDateFormat(DateFormat).format(Calendar.getInstance().getTime());
			//nameOfFile += "_" + new SimpleDateFormat(DateFormat).format(Instant.now().toEpochMilli());
               }
              
		//GT 157263 - Same file name getting created when two bulks are processed in a split second. 
		nameOfFile += "_" + Integer.toString(EntitySequenceNumbers[0]);
               nameOfFile += ".csv";
	  }
}
*/</objectValue>
<type>CONSTANT</type>
</item>
<item id="2967" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2968">["CreateSingleFile"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="2969">variables["CreateSingleFile"]</name>
<stringValue id="2970">CreateSingleFile</stringValue>
<type>VARIABLE</type>
</item>
<item id="2971" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2972">["DateFormat"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="2973">variables["DateFormat"]</name>
<stringValue id="2974">DateFormat</stringValue>
<type>VARIABLE</type>
</item>
<item id="2975" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2976">variables["EntitySequenceNumbers"]</name>
<stringValue id="2977">EntitySequenceNumbers</stringValue>
<type>VARIABLE</type>
</item>
<item id="2978" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2979">variables["auditid"]</name>
<stringValue id="2980">auditIdentifier</stringValue>
<type>VARIABLE</type>
</item>
<item id="2981" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="2982">variables["nameOfFile"]</name>
<stringValue id="2983">nameOfFile</stringValue>
<type>VARIABLE</type>
</item>
<item id="2984" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2985">["publishingFileType"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="2986">variables["publishingFileType"]</name>
<stringValue id="2987">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="2988">outputType</variablePart>
</item>
<item id="2989" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="2990">["subscriptionProperties"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="2991">variables["subscriptionProperties"]</name>
<stringValue id="2992">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="2993">propertyMap</variablePart>
</item>
<item id="2994" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="2995">variables["threadId"]</name>
<stringValue id="2996">threadId</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="2997" type="java.util.HashSet">
<item idref="2958" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="2998" type="java.util.HashSet">
<item id="2999" type="com.j2fe.workflow.definition.Transition">
<name id="3000">goto-next</name>
<source idref="2960"/>
<target id="3001">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="3002">Write File</name>
<nodeHandler>com.j2fe.general.activities.File</nodeHandler>
<nodeHandlerClass id="3003">com.j2fe.general.activities.File</nodeHandlerClass>
<parameters id="3004" type="java.util.HashSet">
<item id="3005" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3006">appendEOFLine</name>
<stringValue id="3007">appendEOFLine</stringValue>
<type>VARIABLE</type>
</item>
<item id="3008" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3009">directory</name>
<stringValue id="3010">destVal</stringValue>
<type>VARIABLE</type>
</item>
<item id="3011" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3012">fileName</name>
<stringValue id="3013">nameOfFile</stringValue>
<type>VARIABLE</type>
</item>
<item id="3014" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3015">listOfText</name>
<stringValue id="3016">finalData</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="3017" type="java.util.HashSet">
<item idref="2999" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="3018" type="java.util.HashSet">
<item id="3019" type="com.j2fe.workflow.definition.Transition">
<name id="3020">goto-next</name>
<source idref="3001"/>
<target id="3021">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="3022">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="3023">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="3024" type="java.util.HashSet">
<item idref="3019" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="3025" type="java.util.HashSet">
<item id="3026" type="com.j2fe.workflow.definition.Transition">
<name id="3027">goto-next</name>
<source idref="3021"/>
<target idref="1131"/>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="1161"/>
</item>
<item id="3028" type="com.j2fe.workflow.definition.Transition">
<name id="3029">goto-next</name>
<source id="3030">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="3031">NOP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="3032">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="3033" type="java.util.HashSet">
<item id="3034" type="com.j2fe.workflow.definition.Transition">
<name id="3035">false</name>
<source id="3036">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="3037">Switch Case</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="3038">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="3039" type="java.util.HashSet">
<item id="3040" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3041">caseItem</name>
<stringValue id="3042">StorePublishedMessageToPBDP</stringValue>
<type>VARIABLE</type>
</item>
<item id="3043" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3044">defaultItem</name>
<stringValue id="3045">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="3046" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3047">nullTransition</name>
<stringValue id="3048">false</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="3049" type="java.util.HashSet">
<item id="3050" type="com.j2fe.workflow.definition.Transition">
<name id="3051">ToSplit</name>
<source id="3052">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="3053">Automatically generated</description>
<directJoin>false</directJoin>
<name id="3054">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="3055">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="3056" type="java.util.HashSet">
<item id="3057" type="com.j2fe.workflow.definition.Transition">
<name id="3058">goto-next</name>
<source id="3059">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="3060">Write Publishing Notifications</name>
<nodeHandler>com.thegoldensource.publishing.activity.WritePublishingNotifications</nodeHandler>
<nodeHandlerClass id="3061">com.thegoldensource.publishing.activity.WritePublishingNotifications</nodeHandlerClass>
<parameters id="3062" type="java.util.HashSet">
<item id="3063" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3064">GSDM</name>
<stringValue id="3065">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="3066" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3067">auditId</name>
<stringValue id="3068">auditIdentifier</stringValue>
<type>VARIABLE</type>
</item>
<item id="3069" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3070">dataSource</name>
<stringValue id="3071">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="3072" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3073">downstreamDestinationId</name>
<stringValue id="3074">downStreamDestinationId</stringValue>
<type>VARIABLE</type>
</item>
<item id="3075" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3076">downstreamSystemName</name>
<stringValue id="3077">downstreamSysName</stringValue>
<type>VARIABLE</type>
</item>
<item id="3078" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3079">entities</name>
<stringValue id="3080">Entitiesthatpassedthebatchrulesvalidation</stringValue>
<type>VARIABLE</type>
</item>
<item id="3081" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3082">entityOIDVsPBDPOID</name>
<stringValue id="3083">entityOIDVsPBDPOID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="3084" type="java.util.HashSet">
<item id="3085" type="com.j2fe.workflow.definition.Transition">
<name id="3086">goto-next</name>
<source id="3087">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="3088">Add To Audit Trail</name>
<nodeHandler>com.thegoldensource.publishing.activity.AddAuditTrail</nodeHandler>
<nodeHandlerClass id="3089">com.thegoldensource.publishing.activity.AddAuditTrail</nodeHandlerClass>
<parameters id="3090" type="java.util.HashSet">
<item id="3091" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3092">GSDM</name>
<stringValue id="3093">Database</stringValue>
<type>VARIABLE</type>
</item>
<item id="3094" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3095">auditId</name>
<stringValue id="3096">auditIdentifier</stringValue>
<type>VARIABLE</type>
</item>
<item id="3097" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3098">dataSource</name>
<stringValue id="3099">Database</stringValue>
<type>VARIABLE</type>
</item>
<item id="3100" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3101">downstreamDestinationId</name>
<stringValue id="3102">downStreamDestinationId</stringValue>
<type>VARIABLE</type>
</item>
<item id="3103" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3104">downstreamSystemName</name>
<stringValue id="3105">downstreamSysName</stringValue>
<type>VARIABLE</type>
</item>
<item id="3106" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3107">entities</name>
<stringValue id="3108">Entitiesthatpassedthebatchrulesvalidation</stringValue>
<type>VARIABLE</type>
</item>
<item id="3109" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="3110">entityOIDVsPBDPOID</name>
<stringValue id="3111">entityOIDVsPBDPOID</stringValue>
<type>VARIABLE</type>
</item>
<item id="3112" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3113">publishingDefinition</name>
<stringValue id="3114">publishingDef</stringValue>
<type>VARIABLE</type>
</item>
<item id="3115" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3116">status</name>
<objectValue id="3117" type="com.thegoldensource.subscription.AuditStatus">SUCCESSFUL</objectValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="3118" type="java.util.HashSet">
<item id="3119" type="com.j2fe.workflow.definition.Transition">
<name id="3120">goto-next</name>
<source id="3121">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="3122">Write Publishing Notifications</name>
<nodeHandler>com.thegoldensource.publishing.activity.WritePublishingNotifications</nodeHandler>
<nodeHandlerClass id="3123">com.thegoldensource.publishing.activity.WritePublishingNotifications</nodeHandlerClass>
<parameters id="3124" type="java.util.HashSet">
<item id="3125" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3126">GSDM</name>
<stringValue id="3127">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="3128" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3129">auditId</name>
<stringValue id="3130">auditIdentifier</stringValue>
<type>VARIABLE</type>
</item>
<item id="3131" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3132">dataSource</name>
<stringValue id="3133">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="3134" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3135">downstreamDestinationId</name>
<stringValue id="3136">downStreamDestinationId</stringValue>
<type>VARIABLE</type>
</item>
<item id="3137" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3138">downstreamSystemName</name>
<stringValue id="3139">downstreamSysName</stringValue>
<type>VARIABLE</type>
</item>
<item id="3140" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3141">entities</name>
<stringValue id="3142">Entitiesthatfailedthebatchrulesvalidation</stringValue>
<type>VARIABLE</type>
</item>
<item id="3143" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3144">entityOIDVsPBDPOID</name>
<stringValue id="3145">entityOIDVsPBDPOID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="3146" type="java.util.HashSet">
<item id="3147" type="com.j2fe.workflow.definition.Transition">
<name id="3148">goto-next</name>
<source id="3149">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="3150">Add To Audit Trail</name>
<nodeHandler>com.thegoldensource.publishing.activity.AddAuditTrail</nodeHandler>
<nodeHandlerClass id="3151">com.thegoldensource.publishing.activity.AddAuditTrail</nodeHandlerClass>
<parameters id="3152" type="java.util.HashSet">
<item id="3153" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3154">GSDM</name>
<stringValue id="3155">Database</stringValue>
<type>VARIABLE</type>
</item>
<item id="3156" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3157">auditId</name>
<stringValue id="3158">auditIdentifier</stringValue>
<type>VARIABLE</type>
</item>
<item id="3159" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3160">dataSource</name>
<stringValue id="3161">Database</stringValue>
<type>VARIABLE</type>
</item>
<item id="3162" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3163">downstreamDestinationId</name>
<stringValue id="3164">downStreamDestinationId</stringValue>
<type>VARIABLE</type>
</item>
<item id="3165" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3166">downstreamSystemName</name>
<stringValue id="3167">downstreamSysName</stringValue>
<type>VARIABLE</type>
</item>
<item id="3168" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3169">entities</name>
<stringValue id="3170">Entitiesthatfailedthebatchrulesvalidation</stringValue>
<type>VARIABLE</type>
</item>
<item id="3171" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="3172">entityOIDVsPBDPOID</name>
<stringValue id="3173">entityOIDVsPBDPOID</stringValue>
<type>VARIABLE</type>
</item>
<item id="3174" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3175">publishingDefinition</name>
<stringValue id="3176">publishingDef</stringValue>
<type>VARIABLE</type>
</item>
<item id="3177" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3178">status</name>
<stringValue id="3179">FAILED</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="3180" type="java.util.HashSet">
<item id="3181" type="com.j2fe.workflow.definition.Transition">
<name id="3182">false</name>
<source id="3183">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="3184">Switch Case</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="3185">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="3186" type="java.util.HashSet">
<item id="3187" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3188">caseItem</name>
<stringValue id="3189">PublishDataWithFailedRulesValidation</stringValue>
<type>VARIABLE</type>
</item>
<item id="3190" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3191">defaultItem</name>
<stringValue id="3192">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="3193" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3194">nullTransition</name>
<stringValue id="3195">false</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="3196" type="java.util.HashSet">
<item id="3197" type="com.j2fe.workflow.definition.Transition">
<name id="3198">goto-next</name>
<source id="3199">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="3200">Automatically generated</description>
<directJoin>false</directJoin>
<name id="3201">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="3202">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="3203" type="java.util.HashSet">
<item id="3204" type="com.j2fe.workflow.definition.Transition">
<name id="3205">end-loop</name>
<source id="3206">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="3207">For Loop</name>
<nodeHandler>com.j2fe.workflow.handler.impl.ForEach</nodeHandler>
<nodeHandlerClass id="3208">com.j2fe.workflow.handler.impl.ForEach</nodeHandlerClass>
<parameters id="3209" type="java.util.HashSet">
<item id="3210" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3211">counter</name>
<stringValue id="3212">jmsCounter</stringValue>
<type>VARIABLE</type>
</item>
<item id="3213" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="3214">counter</name>
<stringValue id="3215">jmsCounter</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="3216" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3217">input</name>
<stringValue id="3218">finalData</stringValue>
<type>VARIABLE</type>
</item>
<item id="3219" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="3220">output</name>
<stringValue id="3221">jmsEntity</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="3222" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3223">resetOnEnd</name>
<objectValue idref="283"/>
<type>CONSTANT</type>
</item>
</parameters>
<persistentVariables id="3224" type="java.util.HashSet">
<item id="3225" type="java.lang.String">jmsCounter
1000</item>
</persistentVariables>
<sources id="3226" type="java.util.HashSet">
<item id="3227" type="com.j2fe.workflow.definition.Transition">
<name id="3228">goto-next</name>
<source id="3229">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="3230">JMS Loop</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="3231">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="3232" type="java.util.HashSet">
<item id="3233" type="com.j2fe.workflow.definition.Transition">
<name id="3234">JMS</name>
<source id="3235">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="3236">Switch Case</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="3237">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="3238" type="java.util.HashSet">
<item id="3239" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3240">caseItem</name>
<stringValue id="3241">destType</stringValue>
<type>VARIABLE</type>
</item>
<item id="3242" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3243">defaultItem</name>
<stringValue id="3244">FILE</stringValue>
<type>CONSTANT</type>
</item>
<item id="3245" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3246">nullTransition</name>
<stringValue id="3247">FILE</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="3248" type="java.util.HashSet">
<item id="3249" type="com.j2fe.workflow.definition.Transition">
<name id="3250">goto-next</name>
<source id="3251">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="3252">Create File Name</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="3253">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="3254" type="java.util.HashSet">
<item id="3255" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3256">statements</name>
<objectValue id="3257" type="java.lang.String">import com.thegoldensource.subscription.PublishedOutPutType;
import java.util.GregorianCalendar;
import org.apache.log4j.Logger;
import com.j2fe.general.activities.BeanShellScript;
import java.text.SimpleDateFormat;

static final Logger logger = Logger.getLogger(BeanShellScript.class);

String nameOfFile;

logger.debug("Date Format:" + DateFormat );
String PublishingFileName = subscriptionProperties.get("FILE_NAME");
String fileExtension = subscriptionProperties.get("FILE_EXTENSION");

if(PublishingFileName == null || (PublishingFileName != null &amp;&amp; PublishingFileName.isEmpty() ))
{
	nameOfFile ="PublishedFile"+"_" + System.nanoTime( ); 

	if(publishingFileType !=null &amp;&amp; publishingFileType.toString().equals("JSON"))
		nameOfFile += ".json";
	else if(publishingFileType !=null &amp;&amp; publishingFileType.toString().equals("CSV"))
		nameOfFile += ".csv";
	else
		nameOfFile += ".xml";
}
else
{
	if ( PublishingFileName.lastIndexOf(".") &gt; 0)
	{
		nameOfFile = PublishingFileName.substring(0,PublishingFileName.lastIndexOf("."));
		if(DateFormat != null &amp;&amp; !DateFormat.isEmpty())
			nameOfFile += "_" + new SimpleDateFormat(DateFormat).format(Calendar.getInstance
								().getTime());
		         
		  nameOfFile += PublishingFileName.substring(PublishingFileName.lastIndexOf("."));
	   }
	   else
	   {
		       nameOfFile = PublishingFileName;    
       	        if(DateFormat != null &amp;&amp; !DateFormat.isEmpty())
              	     nameOfFile += "_" + new SimpleDateFormat(DateFormat).format(Calendar.getInstance
								().getTime());
               
               	
	     }

	if(publishingFileType !=null &amp;&amp; publishingFileType.toString().equals("JSON"))
		nameOfFile += ".json";
	else
		nameOfFile += ".xml";
}



if(publishingFileType !=null &amp;&amp; publishingFileType.toString().equals("CSV"))
{
	   if(PublishingFileName == null || PublishingFileName.isEmpty() )
		    nameOfFile ="PublishedFile"+"_" + System.nanoTime( )+ ".csv";
	   else
	   {
		       nameOfFile =PublishingFileName; // + ".csv";
               if(DateFormat != null &amp;&amp; !DateFormat.isEmpty())
               	nameOfFile += "_" + new SimpleDateFormat(DateFormat).format(Calendar.getInstance
							().getTime());
               
               nameOfFile += ".csv";
	  }
}</objectValue>
<type>CONSTANT</type>
</item>
<item id="3258" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="3259">["DateFormat"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="3260">variables["DateFormat"]</name>
<stringValue id="3261">DateFormat</stringValue>
<type>VARIABLE</type>
</item>
<item id="3262" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="3263">["auditId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="3264">variables["auditId"]</name>
<stringValue id="3265">auditIdentifier</stringValue>
<type>VARIABLE</type>
</item>
<item id="3266" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="3267">variables["nameOfFile"]</name>
<stringValue id="3268">nameOfFile</stringValue>
<type>VARIABLE</type>
</item>
<item id="3269" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3270">variables["publishingFileType"]</name>
<stringValue id="3271">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="3272">outputType</variablePart>
</item>
<item id="3273" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3274">variables["subscriptionProperties"]</name>
<stringValue id="3275">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="3276">propertyMap</variablePart>
</item>
</parameters>
<sources id="3277" type="java.util.HashSet">
<item id="3278" type="com.j2fe.workflow.definition.Transition">
<name id="3279">goto-next</name>
<source id="3280">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="3281">Merge Data</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="3282">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="3283" type="java.util.HashSet">
<item id="3284" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3285">statements</name>
<objectValue id="3286" type="java.lang.String">import java.util.ArrayList;
import java.util.List;
import java.lang.StringBuilder;
import com.thegoldensource.subscription.PublishingDestination;

List finalData = new ArrayList();
String fileExtension = subscriptionProperties.get("FILE_EXTENSION");
String fileType = null;


//finalData.addAll(listMessageTemp);

//In case of JSON message, createSingleFile is not yet handled. But if filePerEntity is false, then multiple entities should be published in one file.
//JSON requires opening and closing square brackets to denote multiple entities as array and it is handled in OutputMessage parameter of JSON Converter.
if( publishingFileType != null &amp;&amp; publishingFileType.toString().equalsIgnoreCase("JSON") &amp;&amp; FilePerEntity == false 
&amp;&amp; ( ( fileExtension == null ) || ( fileExtension != null &amp;&amp; fileExtension.equals(".json") ) )  &amp;&amp; !destinationType.toString().equals("TABLE"))
{
	final StringBuilder builder = new StringBuilder();
	boolean isFirstString = true;	

       	builder.append("{");
       	builder.append("\"");
       	builder.append(GSOName.toUpperCase() + "\":");
       	builder.append("[");

	for( String eachRecord : OutputMessage )
	{
               	if(isFirstString == true)
               	{
               		isFirstString = false;
               	}
               	else
               		builder.append(",");

		builder.append(eachRecord);
		//finalData.add(eachRecord); 					
	}

       	builder.append("]");
       	builder.append("}");

	finalData.add(builder.toString());
}
else if( publishingFileType.toString().equalsIgnoreCase("CSV") &amp;&amp; FilePerEntity == false &amp;&amp;  !CreateSingleFile )
{
	//If not single file and file per entity is false, then remove the header from every record and then prepare finalData.
	boolean headerAdded = false;
	for(String eachRecord : OutputMessage)
	{
		String[] arrayCSVData  = eachRecord.split("\n");
			
		String actualData = arrayCSVData[arrayCSVData.length -1];	
		if( headerAdded == false )
		{
			finalData.add( eachRecord);
			headerAdded = true;
		}
		else
			finalData.add( actualData );
	}			
}
else
{
	for( String eachRecord : listMessageTemp )
	{
		finalData.add(eachRecord); 					

		/* Will be taken care by appendEOF parameter of the workflow.
		//Need to add a carriage return for better representation when files are merged.
		if( ( fileExtension != null &amp;&amp; !fileExtension.isEmpty() &amp;&amp; fileExtension.equalsIgnoreCase("CSV") ) || 
		( publishingFileType !=null &amp;&amp; publishingFileType.toString().equals("CSV") ) )
			finalData.add("\n"); 		
		*/
	}
}

/*
if(CreateSingleFile)
{
	if(fileExtension != null &amp;&amp; !fileExtension.isEmpty() &amp;&amp; fileExtension.equalsIgnoreCase("CSV"))
	{		
		removeHeader = true;
		for(String eachRecord : OutputMessage)
		{
			String[] arrayCSVData  = eachRecord.split("\n");
			
			//String actualData = arrayCSVData[arrayCSVData.length -1];	
			
			if( eachRecord != null &amp;&amp; !eachRecord .isEmpty() )	
			{
				finalData.add(eachRecord); 					
				finalData.add("\n"); 		
			}
		}			
		
		System.out.println("finalData:: " + finalData);
	}

	if(fileExtension != null &amp;&amp; !fileExtension.isEmpty() &amp;&amp; fileExtension.equalsIgnoreCase("XML"))
	{
		boolean removeHeaderFooterTags = true;
				
		for(String eachRecord : OutputMessage)
		{
			String firstLineRemoved = eachRecord.substring(eachRecord.indexOf("&lt;"+GSOName+"&gt;"));
			System.out.println("firstLineRemoved :: " + firstLineRemoved);
				
			finalData.add( firstLineRemoved );
			//String headerRemoved = 	firstLineRemoved.subString(firstLineRemoved .indexOf("\n"));
			//System.out.println("headerRemoved  :: " + headerRemoved );	
		}
	}
}
else
{
	finalData.addAll(OutputMessage);
}
*/
</objectValue>
<type>CONSTANT</type>
</item>
<item id="3287" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="3288">["CreateSingleFile"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="3289">variables["CreateSingleFile"]</name>
<stringValue id="3290">CreateSingleFile</stringValue>
<type>VARIABLE</type>
</item>
<item id="3291" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="3292">["FilePerEntity"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="3293">variables["FilePerEntity"]</name>
<stringValue id="3294">FilePerEntity</stringValue>
<type>VARIABLE</type>
</item>
<item id="3295" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="3296">["GSOName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="3297">variables["GSOName"]</name>
<stringValue id="3298">publishingDef</stringValue>
<type>VARIABLE</type>
<variablePart id="3299">model</variablePart>
</item>
<item id="3300" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3301">variables["OutputMessage"]</name>
<stringValue id="3302">OutputMessage</stringValue>
<type>VARIABLE</type>
</item>
<item id="3303" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3304">variables["arrayPBDPMessage"]</name>
<stringValue id="3305">arrayPBDPMessage</stringValue>
<type>VARIABLE</type>
</item>
<item id="3306" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="3307">variables["arrayPBDPMessage"]</name>
<stringValue id="3308">arrayPBDPMessage</stringValue>
<type>VARIABLE</type>
</item>
<item id="3309" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="3310">["destinationType"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="3311">variables["destinationType"]</name>
<stringValue id="3312">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="3313">destinationDefinitions[0].destination</variablePart>
</item>
<item id="3314" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="3315">variables["finalData"]</name>
<stringValue id="3316">finalData</stringValue>
<type>VARIABLE</type>
</item>
<item id="3317" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="3318">["headerString"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="3319">variables["headerString"]</name>
<stringValue id="3320">headerString</stringValue>
<type>VARIABLE</type>
</item>
<item id="3321" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3322">variables["listMessageTemp"]</name>
<stringValue id="3323">listMessageTemp</stringValue>
<type>VARIABLE</type>
</item>
<item id="3324" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="3325">["publishingFileType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="3326">variables["publishingFileType"]</name>
<stringValue id="3327">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="3328">outputType</variablePart>
</item>
<item id="3329" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3330">variables["subscriptionProperties"]</name>
<stringValue id="3331">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="3332">propertyMap</variablePart>
</item>
</parameters>
<sources id="3333" type="java.util.HashSet">
<item id="3334" type="com.j2fe.workflow.definition.Transition">
<name id="3335">true</name>
<source id="3336">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="3337">Switch Case</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="3338">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="3339" type="java.util.HashSet">
<item id="3340" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3341">caseInsensitive</name>
<objectValue idref="283"/>
<type>CONSTANT</type>
</item>
<item id="3342" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3343">caseItem</name>
<stringValue id="3344">dataToBePublishedExists</stringValue>
<type>VARIABLE</type>
</item>
<item id="3345" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3346">defaultItem</name>
<stringValue id="3347">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="3348" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3349">nullTransition</name>
<stringValue id="3350">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="3351" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3352">trimSpaces</name>
<objectValue idref="283"/>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="3353" type="java.util.HashSet">
<item id="3354" type="com.j2fe.workflow.definition.Transition">
<name id="3355">goto-next</name>
<source id="3356">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="3357">Data To Be Published Exists?</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="3358">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="3359" type="java.util.HashSet">
<item id="3360" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3361">statements</name>
<stringValue id="3362">boolean dataToBePublishedExists = false;

if(  EntitySequenceNumbers!= null &amp;&amp; EntitySequenceNumbers.length &gt; 0 )
	dataToBePublishedExists = true;</stringValue>
<type>CONSTANT</type>
</item>
<item id="3363" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3364">variables["EntitySequenceNumbers"]</name>
<stringValue id="3365">EntitySequenceNumbers</stringValue>
<type>VARIABLE</type>
</item>
<item id="3366" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="3367">["dataToBePublishedExists"]@java/lang/Boolean@</UITypeHint>
<input>false</input>
<name id="3368">variables["dataToBePublishedExists"]</name>
<stringValue id="3369">dataToBePublishedExists</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="3370" type="java.util.HashSet">
<item id="3371" type="com.j2fe.workflow.definition.Transition">
<name id="3372">goto-next</name>
<source id="3373">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="3374">Destination Initialization</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="3375">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="3376" type="java.util.HashSet">
<item id="3377" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3378">statements</name>
<stringValue id="3379">import com.thegoldensource.subscription.PublishingDestination;&#13;
&#13;
&#13;
&#13;
PublishingDestination destType = destinationDef.getDestination();&#13;
&#13;
&#13;
&#13;
String downStreamSystemName = destinationDef.getDownstreamSystemName();&#13;
&#13;
&#13;
&#13;
String downStreamDestinationId = destinationDef.getDownstreamDestinationId();&#13;
&#13;
&#13;
&#13;
String destVal = destinationDef.getDestinationValue();&#13;
&#13;
&#13;
&#13;
String[] emailVal = {destVal};&#13;
&#13;
&#13;
&#13;
&#13;
if(destVal !=null )&#13;
&#13;
{&#13;
&#13;
    emailVal = destinationDef.getDestinationValue().split(",");&#13;
&#13;
}&#13;
&#13;
&#13;
&#13;
</stringValue>
<type>CONSTANT</type>
</item>
<item id="3380" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="3381">["destType"]@com/thegoldensource/subscription/PublishingDestination@</UITypeHint>
<input>false</input>
<name id="3382">variables["destType"]</name>
<stringValue id="3383">destType</stringValue>
<type>VARIABLE</type>
</item>
<item id="3384" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="3385">variables["destVal"]</name>
<stringValue id="3386">destVal</stringValue>
<type>VARIABLE</type>
</item>
<item id="3387" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3388">variables["destinationDef"]</name>
<stringValue id="3389">destinationDef</stringValue>
<type>VARIABLE</type>
</item>
<item id="3390" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="3391">["downStreamDestinationId"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="3392">variables["downStreamDestinationId"]</name>
<stringValue id="3393">downStreamDestinationId</stringValue>
<type>VARIABLE</type>
</item>
<item id="3394" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="3395">["downStreamSystemName"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="3396">variables["downStreamSystemName"]</name>
<stringValue id="3397">downstreamSysName</stringValue>
<type>VARIABLE</type>
</item>
<item id="3398" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="3399">variables["emailVal"]</name>
<stringValue id="3400">emailVal</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="3401" type="java.util.HashSet">
<item id="3402" type="com.j2fe.workflow.definition.Transition">
<name id="3403">loop</name>
<source idref="1137"/>
<target idref="3373"/>
</item>
</sources>
<targets id="3404" type="java.util.HashSet">
<item idref="3371" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3356"/>
</item>
</sources>
<targets id="3405" type="java.util.HashSet">
<item idref="3354" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3336"/>
</item>
</sources>
<targets id="3406" type="java.util.HashSet">
<item id="3407" type="com.j2fe.workflow.definition.Transition">
<name id="3408">false</name>
<source idref="3336"/>
<target id="3409">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="3410">Switch Case</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="3411">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="3412" type="java.util.HashSet">
<item id="3413" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3414">caseInsensitive</name>
<objectValue idref="283"/>
<type>CONSTANT</type>
</item>
<item id="3415" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3416">caseItem</name>
<stringValue id="3417">PublishDataWithFailedRulesValidation</stringValue>
<type>VARIABLE</type>
</item>
<item id="3418" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3419">defaultItem</name>
<stringValue id="3420">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="3421" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3422">nullTransition</name>
<stringValue id="3423">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="3424" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3425">trimSpaces</name>
<objectValue idref="283"/>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="3426" type="java.util.HashSet">
<item idref="3407" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="3427" type="java.util.HashSet">
<item id="3428" type="com.j2fe.workflow.definition.Transition">
<name id="3429">false</name>
<source idref="3409"/>
<target id="3430">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="3431">Add To Audit Trail</name>
<nodeHandler>com.thegoldensource.publishing.activity.AddAuditTrail</nodeHandler>
<nodeHandlerClass id="3432">com.thegoldensource.publishing.activity.AddAuditTrail</nodeHandlerClass>
<parameters id="3433" type="java.util.HashSet">
<item id="3434" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3435">GSDM</name>
<stringValue id="3436">Database</stringValue>
<type>VARIABLE</type>
</item>
<item id="3437" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3438">auditId</name>
<stringValue id="3439">auditIdentifier</stringValue>
<type>VARIABLE</type>
</item>
<item id="3440" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3441">dataSource</name>
<stringValue id="3442">Database</stringValue>
<type>VARIABLE</type>
</item>
<item id="3443" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3444">downstreamDestinationId</name>
<stringValue id="3445">downStreamDestinationId</stringValue>
<type>VARIABLE</type>
</item>
<item id="3446" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3447">downstreamSystemName</name>
<stringValue id="3448">downstreamSysName</stringValue>
<type>VARIABLE</type>
</item>
<item id="3449" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3450">entities</name>
<stringValue id="3451">Entitiesthatfailedthebatchrulesvalidation</stringValue>
<type>VARIABLE</type>
</item>
<item id="3452" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="3453">entityOIDVsPBDPOID</name>
<stringValue id="3454">entityOIDVsPBDPOID</stringValue>
<type>VARIABLE</type>
</item>
<item id="3455" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3456">publishingDefinition</name>
<stringValue id="3457">publishingDef</stringValue>
<type>VARIABLE</type>
</item>
<item id="3458" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3459">status</name>
<stringValue id="3460">FAILED</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="3461" type="java.util.HashSet">
<item idref="3428" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="3462" type="java.util.HashSet">
<item id="3463" type="com.j2fe.workflow.definition.Transition">
<name id="3464">goto-next</name>
<source idref="3430"/>
<target id="3465">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="3466">Write Publishing Notifications</name>
<nodeHandler>com.thegoldensource.publishing.activity.WritePublishingNotifications</nodeHandler>
<nodeHandlerClass id="3467">com.thegoldensource.publishing.activity.WritePublishingNotifications</nodeHandlerClass>
<parameters id="3468" type="java.util.HashSet">
<item id="3469" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3470">GSDM</name>
<stringValue id="3471">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="3472" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3473">auditId</name>
<stringValue id="3474">auditIdentifier</stringValue>
<type>VARIABLE</type>
</item>
<item id="3475" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3476">dataSource</name>
<stringValue id="3477">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="3478" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3479">downstreamDestinationId</name>
<stringValue id="3480">downStreamDestinationId</stringValue>
<type>VARIABLE</type>
</item>
<item id="3481" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3482">downstreamSystemName</name>
<stringValue id="3483">downstreamSysName</stringValue>
<type>VARIABLE</type>
</item>
<item id="3484" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3485">entities</name>
<stringValue id="3486">Entitiesthatfailedthebatchrulesvalidation</stringValue>
<type>VARIABLE</type>
</item>
<item id="3487" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3488">entityOIDVsPBDPOID</name>
<stringValue id="3489">entityOIDVsPBDPOID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="3490" type="java.util.HashSet">
<item idref="3463" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="3491" type="java.util.HashSet">
<item id="3492" type="com.j2fe.workflow.definition.Transition">
<name id="3493">goto-next</name>
<source idref="3465"/>
<target id="3494">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="3495">Add To Audit Trail</name>
<nodeHandler>com.thegoldensource.publishing.activity.AddAuditTrail</nodeHandler>
<nodeHandlerClass id="3496">com.thegoldensource.publishing.activity.AddAuditTrail</nodeHandlerClass>
<parameters id="3497" type="java.util.HashSet">
<item id="3498" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3499">GSDM</name>
<stringValue id="3500">Database</stringValue>
<type>VARIABLE</type>
</item>
<item id="3501" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3502">auditId</name>
<stringValue id="3503">auditIdentifier</stringValue>
<type>VARIABLE</type>
</item>
<item id="3504" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3505">dataSource</name>
<stringValue id="3506">Database</stringValue>
<type>VARIABLE</type>
</item>
<item id="3507" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3508">downstreamDestinationId</name>
<stringValue id="3509">downStreamDestinationId</stringValue>
<type>VARIABLE</type>
</item>
<item id="3510" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3511">downstreamSystemName</name>
<stringValue id="3512">downstreamSysName</stringValue>
<type>VARIABLE</type>
</item>
<item id="3513" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3514">entities</name>
<stringValue id="3515">entitiesToBePublished</stringValue>
<type>VARIABLE</type>
</item>
<item id="3516" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="3517">entityOIDVsPBDPOID</name>
<stringValue id="3518">entityOIDVsPBDPOID</stringValue>
<type>VARIABLE</type>
</item>
<item id="3519" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3520">publishingDefinition</name>
<stringValue id="3521">publishingDef</stringValue>
<type>VARIABLE</type>
</item>
<item id="3522" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3523">status</name>
<objectValue idref="1548"/>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="3524" type="java.util.HashSet">
<item idref="3492" type="com.j2fe.workflow.definition.Transition"/>
<item id="3525" type="com.j2fe.workflow.definition.Transition">
<name id="3526">true</name>
<source idref="3409"/>
<target idref="3494"/>
</item>
</sources>
<targets id="3527" type="java.util.HashSet">
<item id="3528" type="com.j2fe.workflow.definition.Transition">
<name id="3529">goto-next</name>
<source idref="3494"/>
<target id="3530">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="3531">Write Publishing Notifications</name>
<nodeHandler>com.thegoldensource.publishing.activity.WritePublishingNotifications</nodeHandler>
<nodeHandlerClass id="3532">com.thegoldensource.publishing.activity.WritePublishingNotifications</nodeHandlerClass>
<parameters id="3533" type="java.util.HashSet">
<item id="3534" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3535">GSDM</name>
<stringValue id="3536">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="3537" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3538">auditId</name>
<stringValue id="3539">auditIdentifier</stringValue>
<type>VARIABLE</type>
</item>
<item id="3540" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3541">dataSource</name>
<stringValue id="3542">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="3543" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3544">downstreamDestinationId</name>
<stringValue id="3545">downStreamDestinationId</stringValue>
<type>VARIABLE</type>
</item>
<item id="3546" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3547">downstreamSystemName</name>
<stringValue id="3548">downstreamSysName</stringValue>
<type>VARIABLE</type>
</item>
<item id="3549" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3550">entities</name>
<stringValue id="3551">entitiesToBePublished</stringValue>
<type>VARIABLE</type>
</item>
<item id="3552" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3553">entityOIDVsPBDPOID</name>
<stringValue id="3554">entityOIDVsPBDPOID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="3555" type="java.util.HashSet">
<item idref="3528" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="3556" type="java.util.HashSet">
<item id="3557" type="com.j2fe.workflow.definition.Transition">
<name id="3558">goto-next</name>
<source idref="3530"/>
<target idref="3052"/>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
<item idref="3525" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</target>
</item>
<item idref="3334" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="3280"/>
</item>
</sources>
<targets id="3559" type="java.util.HashSet">
<item idref="3278" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3251"/>
</item>
</sources>
<targets id="3560" type="java.util.HashSet">
<item idref="3249" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3235"/>
</item>
</sources>
<targets id="3561" type="java.util.HashSet">
<item id="3562" type="com.j2fe.workflow.definition.Transition">
<name id="3563">EMAIL</name>
<source idref="3235"/>
<target id="3564">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="3565">Email</name>
<nodeHandler>com.j2fe.general.activities.EMAIL</nodeHandler>
<nodeHandlerClass id="3566">com.j2fe.general.activities.EMAIL</nodeHandlerClass>
<parameters id="3567" type="java.util.HashSet">
<item id="3568" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3569">attachments</name>
<stringValue id="3570">listMessageTemp</stringValue>
<type>VARIABLE</type>
</item>
<item id="3571" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3572">emailText</name>
<stringValue id="3573">Email Text</stringValue>
<type>VARIABLE</type>
</item>
<item id="3574" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3575">from</name>
<stringValue id="3576">Senders Email</stringValue>
<type>VARIABLE</type>
</item>
<item id="3577" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3578">recipients</name>
<stringValue id="3579">emailVal</stringValue>
<type>VARIABLE</type>
</item>
<item id="3580" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3581">session</name>
<stringValue id="3582">Email Session</stringValue>
<type>VARIABLE</type>
</item>
<item id="3583" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3584">subject</name>
<stringValue id="3585">Email Subject</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="3586" type="java.util.HashSet">
<item idref="3562" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="3587" type="java.util.HashSet">
<item id="3588" type="com.j2fe.workflow.definition.Transition">
<name id="3589">goto-next</name>
<source idref="3564"/>
<target idref="3199"/>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
<item id="3590" type="com.j2fe.workflow.definition.Transition">
<name id="3591">FILE</name>
<source idref="3235"/>
<target id="3592">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="3593">Bean Shell Script (Standard) #10</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="3594">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="3595" type="java.util.HashSet">
<item id="3596" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3597">statements</name>
<stringValue id="3598">String pubFileDirectory = destVal;</stringValue>
<type>CONSTANT</type>
</item>
<item id="3599" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="3600">["destVal"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="3601">variables["destVal"]</name>
<stringValue id="3602">destVal</stringValue>
<type>VARIABLE</type>
</item>
<item id="3603" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="3604">variables["pubFileDirectory"]</name>
<stringValue id="3605">pubFileDirectory</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<persistentVariables id="3606" type="java.util.HashSet">
<item id="3607" type="java.lang.String">pubFileDirectory
1000</item>
</persistentVariables>
<sources id="3608" type="java.util.HashSet">
<item idref="3590" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="3609" type="java.util.HashSet">
<item id="3610" type="com.j2fe.workflow.definition.Transition">
<name id="3611">goto-next</name>
<source idref="3592"/>
<target id="3612">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="3613">Switch Case</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="3614">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="3615" type="java.util.HashSet">
<item id="3616" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3617">caseItem</name>
<stringValue id="3618">FilePerEntity</stringValue>
<type>VARIABLE</type>
</item>
<item id="3619" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3620">defaultItem</name>
<stringValue id="3621">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="3622" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3623">nullTransition</name>
<stringValue id="3624">false</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="3625" type="java.util.HashSet">
<item idref="3610" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="3626" type="java.util.HashSet">
<item id="3627" type="com.j2fe.workflow.definition.Transition">
<name id="3628">false</name>
<source idref="3612"/>
<target id="3629">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="3630">Create File Name</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="3631">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="3632" type="java.util.HashSet">
<item id="3633" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3634">statements</name>
<objectValue id="3635" type="java.lang.String">import com.thegoldensource.subscription.PublishedOutPutType;
import java.util.GregorianCalendar;
import org.apache.log4j.Logger;
import com.j2fe.general.activities.BeanShellScript;
import java.text.SimpleDateFormat;
import java.time.Instant;

static final Logger logger = Logger.getLogger(BeanShellScript.class);

String nameOfFile;
String PublishingFileName = subscriptionProperties.get("FILE_NAME");
String fileExtension = subscriptionProperties.get("FILE_EXTENSION");

logger.debug("Date Format:" + DateFormat );

if( CreateSingleFile == true )
{
	nameOfFile = "Temp_" + threadId + "_" + Integer.toString(EntitySequenceNumbers[0])  ;

	if(fileExtension != null &amp;&amp; !fileExtension.isEmpty())
		nameOfFile += fileExtension;
	else if(publishingFileType !=null &amp;&amp; publishingFileType.toString().equals("JSON"))
		nameOfFile += ".json";
	else if(publishingFileType !=null &amp;&amp; publishingFileType.toString().equals("CSV"))
		nameOfFile += ".csv";
	else
		nameOfFile += ".xml";
}
else if(PublishingFileName == null || ( PublishingFileName != null &amp;&amp; PublishingFileName.isEmpty() ) )
{
	nameOfFile ="PublishedFile"; 

	if(DateFormat != null &amp;&amp; !DateFormat.isEmpty())
	{			
		nameOfFile += "_" + new SimpleDateFormat(DateFormat).format(Calendar.getInstance().getTime());
		//nameOfFile += "_" + new SimpleDateFormat(DateFormat).format(Instant.now().toEpochMilli());
	}
	else
	{
		nameOfFile += "_" + System.nanoTime( );
	}

	nameOfFile += "_" + Integer.toString(EntitySequenceNumbers[0]);

	if(fileExtension != null &amp;&amp; !fileExtension.isEmpty())
		nameOfFile += fileExtension;
	else if(publishingFileType !=null &amp;&amp; publishingFileType.toString().equals("JSON"))
		nameOfFile += ".json";
	else if(publishingFileType !=null &amp;&amp; publishingFileType.toString().equals("CSV"))
		nameOfFile += ".csv";
	else
		nameOfFile += ".xml";
}
else
{
	if ( PublishingFileName.lastIndexOf(".") &gt; 0)
	{
		nameOfFile = PublishingFileName.substring(0,PublishingFileName.lastIndexOf("."));
		if(DateFormat != null &amp;&amp; !DateFormat.isEmpty())
		{			
			nameOfFile += "_" + new SimpleDateFormat(DateFormat).format(Calendar.getInstance().getTime());
			//nameOfFile += "_" + new SimpleDateFormat(DateFormat).format(Instant.now().toEpochMilli());
		}
		         
		  nameOfFile += PublishingFileName.substring(PublishingFileName.lastIndexOf("."));
	   }
	   else
	   {
		       nameOfFile = PublishingFileName;    
       	        	if(DateFormat != null &amp;&amp; !DateFormat.isEmpty())
			{			    
                  	  	 nameOfFile += "_" + new SimpleDateFormat(DateFormat).format(Calendar.getInstance().getTime());
			   	// nameOfFile += "_" + new SimpleDateFormat(DateFormat).format(Instant.now().toEpochMilli());
               	 	}
               	
	     }

	//GT 157263 - Same file name getting created when two bulks are processed in a split second.
	nameOfFile += "_" + Integer.toString(EntitySequenceNumbers[0]);

	if(fileExtension != null &amp;&amp; !fileExtension.isEmpty())
		nameOfFile += fileExtension;
	else if(publishingFileType !=null &amp;&amp; publishingFileType.toString().equals("JSON"))
		nameOfFile += ".json";
	else if(publishingFileType !=null &amp;&amp; publishingFileType.toString().equals("CSV"))
		nameOfFile += ".csv";
	else
		nameOfFile += ".xml";
}


/*
if(publishingFileType !=null &amp;&amp; publishingFileType.toString().equals("CSV"))
{
	   if(PublishingFileName == null || PublishingFileName.isEmpty() )
		    nameOfFile ="PublishedFile"+"_" + System.nanoTime( )+ ".csv";
	   else
	   {
		       nameOfFile =PublishingFileName; // + ".csv";
               if(DateFormat != null &amp;&amp; !DateFormat.isEmpty())
	        {			
			nameOfFile += "_" + new SimpleDateFormat(DateFormat).format(Calendar.getInstance().getTime());
			//nameOfFile += "_" + new SimpleDateFormat(DateFormat).format(Instant.now().toEpochMilli());
               }
              
		//GT 157263 - Same file name getting created when two bulks are processed in a split second. 
		nameOfFile += "_" + Integer.toString(EntitySequenceNumbers[0]);
               nameOfFile += ".csv";
	  }
}
*/</objectValue>
<type>CONSTANT</type>
</item>
<item id="3636" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="3637">["CreateSingleFile"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="3638">variables["CreateSingleFile"]</name>
<stringValue id="3639">CreateSingleFile</stringValue>
<type>VARIABLE</type>
</item>
<item id="3640" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="3641">["DateFormat"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="3642">variables["DateFormat"]</name>
<stringValue id="3643">DateFormat</stringValue>
<type>VARIABLE</type>
</item>
<item id="3644" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3645">variables["EntitySequenceNumbers"]</name>
<stringValue id="3646">EntitySequenceNumbers</stringValue>
<type>VARIABLE</type>
</item>
<item id="3647" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3648">variables["auditid"]</name>
<stringValue id="3649">auditIdentifier</stringValue>
<type>VARIABLE</type>
</item>
<item id="3650" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="3651">variables["nameOfFile"]</name>
<stringValue id="3652">nameOfFile</stringValue>
<type>VARIABLE</type>
</item>
<item id="3653" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="3654">["publishingFileType"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="3655">variables["publishingFileType"]</name>
<stringValue id="3656">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="3657">outputType</variablePart>
</item>
<item id="3658" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="3659">["subscriptionProperties"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="3660">variables["subscriptionProperties"]</name>
<stringValue id="3661">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="3662">propertyMap</variablePart>
</item>
<item id="3663" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3664">variables["threadId"]</name>
<stringValue id="3665">threadId</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="3666" type="java.util.HashSet">
<item idref="3627" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="3667" type="java.util.HashSet">
<item id="3668" type="com.j2fe.workflow.definition.Transition">
<name id="3669">goto-next</name>
<source idref="3629"/>
<target id="3670">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="3671">Write File</name>
<nodeHandler>com.j2fe.general.activities.File</nodeHandler>
<nodeHandlerClass id="3672">com.j2fe.general.activities.File</nodeHandlerClass>
<parameters id="3673" type="java.util.HashSet">
<item id="3674" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3675">appendEOFLine</name>
<stringValue id="3676">appendEOFLine</stringValue>
<type>VARIABLE</type>
</item>
<item id="3677" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3678">directory</name>
<stringValue id="3679">destVal</stringValue>
<type>VARIABLE</type>
</item>
<item id="3680" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3681">fileName</name>
<stringValue id="3682">nameOfFile</stringValue>
<type>VARIABLE</type>
</item>
<item id="3683" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3684">listOfText</name>
<stringValue id="3685">finalData</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="3686" type="java.util.HashSet">
<item idref="3668" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="3687" type="java.util.HashSet">
<item id="3688" type="com.j2fe.workflow.definition.Transition">
<name id="3689">goto-next</name>
<source idref="3670"/>
<target idref="3199"/>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
<item id="3690" type="com.j2fe.workflow.definition.Transition">
<name id="3691">true</name>
<source idref="3612"/>
<target id="3692">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="3693">Automatically generated</description>
<directJoin>false</directJoin>
<name id="3694">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="3695">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="3696" type="java.util.HashSet">
<item id="3697" type="com.j2fe.workflow.definition.Transition">
<name id="3698">goto-next</name>
<source id="3699">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="3700">Write File</name>
<nodeHandler>com.j2fe.general.activities.File</nodeHandler>
<nodeHandlerClass id="3701">com.j2fe.general.activities.File</nodeHandlerClass>
<parameters id="3702" type="java.util.HashSet">
<item id="3703" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3704">appendEOFLine</name>
<stringValue id="3705">appendEOFLine</stringValue>
<type>VARIABLE</type>
</item>
<item id="3706" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3707">directory</name>
<stringValue id="3708">destVal</stringValue>
<type>VARIABLE</type>
</item>
<item id="3709" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3710">fileName</name>
<stringValue id="3711">nameOfFile</stringValue>
<type>VARIABLE</type>
</item>
<item id="3712" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3713">text</name>
<stringValue id="3714">singleEntity</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="3715" type="java.util.HashSet">
<item id="3716" type="com.j2fe.workflow.definition.Transition">
<name id="3717">goto-next</name>
<source id="3718">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="3719">Create File Name</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="3720">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="3721" type="java.util.HashSet">
<item id="3722" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3723">statements</name>
<objectValue id="3724" type="java.lang.String">import com.thegoldensource.subscription.PublishedOutPutType;
import com.j2fe.general.activities.BeanShellScript;
import org.apache.log4j.Logger;
import java.text.SimpleDateFormat;
import java.time.Instant;


static final Logger logger = Logger.getLogger(BeanShellScript.class);

logger.debug("File Loop Counter:" + fileLoopCounter);;
logger.debug("EntitySequenceNumber Length:" + EntitySequenceNumber.length);
logger.debug("Publishing File Type::" + publishingFileType );

String nameOfFile;
String PublishingFileName = subscriptionProperties.get("FILE_NAME");
String fileExtension = subscriptionProperties.get("FILE_EXTENSION");
//long threadId =  Thread.currentThread().getId();

if( CreateSingleFile == true )
{	
	 if(EntitySequenceNumber.length &lt; finalData.size())
	{
		nameOfFile = "Temp_" + threadId + "_" +  Integer.toString(EntitySequenceNumber[0]);
	}
	else if(EntitySequenceNumber.length &gt;= fileLoopCounter)
	{
		nameOfFile = "Temp_" + threadId + "_" + Integer.toString(EntitySequenceNumber[fileLoopCounter-1]);
	}	
}
else if(PublishingFileName == null || ( PublishingFileName != null &amp;&amp; PublishingFileName.isEmpty() ) )
{
	 if(EntitySequenceNumber.length &lt; finalData.size())
	{
		nameOfFile ="PublishedFile"  + "_" + Integer.toString(EntitySequenceNumber[0]) +"_" + threadId;
		if(DateFormat != null &amp;&amp; !DateFormat.isEmpty())
		{			
			nameOfFile += "_" + new SimpleDateFormat(DateFormat).format(Calendar.getInstance().getTime());
		}
		else
		{
			nameOfFile += "_" + System.nanoTime( );
		}
	}
	else if(EntitySequenceNumber.length &gt;= fileLoopCounter)
	{
		nameOfFile ="PublishedFile" + "_" + Integer.toString(EntitySequenceNumber[fileLoopCounter-1]) +"_" + threadId;
		if(DateFormat != null &amp;&amp; !DateFormat.isEmpty())
		{			
			nameOfFile += "_" + new SimpleDateFormat(DateFormat).format(Calendar.getInstance().getTime());
		}
		else
		{
			nameOfFile += "_" + System.nanoTime( );
		}
	}
}
else if(EntitySequenceNumber.length &lt; finalData.size())
{
	nameOfFile = PublishingFileName + "_"  + Integer.toString(EntitySequenceNumber[0]) +  "_" + Integer.toString(fileLoopCounter) +"_" + threadId;
	if(DateFormat != null &amp;&amp; !DateFormat.isEmpty())
	{			
		nameOfFile += "_" + new SimpleDateFormat(DateFormat).format(Calendar.getInstance().getTime());
	}
	else
	{
		nameOfFile += "_" + System.nanoTime( );
	}
}
else if(EntitySequenceNumber.length &gt;= fileLoopCounter)
{
	nameOfFile = PublishingFileName + "_"  + Integer.toString(EntitySequenceNumber[fileLoopCounter-1]) + "_" + threadId;
	if(DateFormat != null &amp;&amp; !DateFormat.isEmpty())
	{			
		nameOfFile += "_" + new SimpleDateFormat(DateFormat).format(Calendar.getInstance().getTime());
	}
	else
	{
		nameOfFile += "_" + System.nanoTime( );
	}
}


if(fileExtension != null &amp;&amp; !fileExtension.isEmpty())
	nameOfFile += fileExtension;
else if((publishingFileType  == null ) || (publishingFileType !=null &amp;&amp; publishingFileType.toString().equals("XML") ) )
	nameOfFile  = nameOfFile + ".xml";
else if(publishingFileType !=null &amp;&amp; publishingFileType.toString().equals("CSV"))
	nameOfFile = nameOfFile  + ".csv";
else if(publishingFileType !=null &amp;&amp; publishingFileType.toString().equals("JSON"))
	nameOfFile = nameOfFile  + ".json";

/*
if(publishingFileType !=null &amp;&amp; publishingFileType.toString().equals("CSV") &amp;&amp; (EntitySequenceNumber.length &gt;= fileLoopCounter))
{
  if(PublishingFileName == null || PublishingFileName.isEmpty())
	nameOfFile ="PublishedFile"+"_" + System.nanoTime( )+ ".csv";
  else
	nameOfFile =PublishingFileName + Integer.toString(EntitySequenceNumber[fileLoopCounter-1]) + ".csv";

   logger.debug("Value of EntitySequenceNumber:" +EntitySequenceNumber[fileLoopCounter-1]);
}

if(publishingFileType !=null &amp;&amp; publishingFileType.toString().equals("JSON") &amp;&amp; (EntitySequenceNumber.length &gt;= fileLoopCounter))
{
  if(PublishingFileName == null || PublishingFileName.isEmpty())
	nameOfFile ="PublishedFile"+"_" + System.nanoTime( )+ ".json";
  else
	nameOfFile =PublishingFileName + Integer.toString(EntitySequenceNumber[fileLoopCounter-1]) + ".json";
}
*/</objectValue>
<type>CONSTANT</type>
</item>
<item id="3725" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="3726">["CreateSingleFile"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="3727">variables["CreateSingleFile"]</name>
<stringValue id="3728">CreateSingleFile</stringValue>
<type>VARIABLE</type>
</item>
<item id="3729" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="3730">["DateFormat"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="3731">variables["DateFormat"]</name>
<stringValue id="3732">DateFormat</stringValue>
<type>VARIABLE</type>
</item>
<item id="3733" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3734">variables["EntitySequenceNumber"]</name>
<stringValue id="3735">EntitySequenceNumbers</stringValue>
<type>VARIABLE</type>
</item>
<item id="3736" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="3737">["auditId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="3738">variables["auditId"]</name>
<stringValue id="3739">auditIdentifier</stringValue>
<type>VARIABLE</type>
</item>
<item id="3740" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="3741">["fileLoopCounter"]@java/lang/Integer@</UITypeHint>
<input>true</input>
<name id="3742">variables["fileLoopCounter"]</name>
<stringValue id="3743">fileLoopCounter</stringValue>
<type>VARIABLE</type>
</item>
<item id="3744" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3745">variables["finalData"]</name>
<stringValue id="3746">finalData</stringValue>
<type>VARIABLE</type>
</item>
<item id="3747" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="3748">["nameOfFile"]@java/lang/Object@</UITypeHint>
<input>false</input>
<name id="3749">variables["nameOfFile"]</name>
<stringValue id="3750">nameOfFile</stringValue>
<type>VARIABLE</type>
</item>
<item id="3751" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="3752">["publishingFileType"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="3753">variables["publishingFileType"]</name>
<stringValue id="3754">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="3755">outputType</variablePart>
</item>
<item id="3756" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3757">variables["subscriptionProperties"]</name>
<stringValue id="3758">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="3759">propertyMap</variablePart>
</item>
<item id="3760" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="3761">["threadId"]@java/lang/Long@</UITypeHint>
<input>true</input>
<name id="3762">variables["threadId"]</name>
<stringValue id="3763">threadId</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="3764" type="java.util.HashSet">
<item id="3765" type="com.j2fe.workflow.definition.Transition">
<name id="3766">loop</name>
<source id="3767">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="3768">File Loop</name>
<nodeHandler>com.j2fe.workflow.handler.impl.ForEach</nodeHandler>
<nodeHandlerClass id="3769">com.j2fe.workflow.handler.impl.ForEach</nodeHandlerClass>
<parameters id="3770" type="java.util.HashSet">
<item id="3771" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3772">counter</name>
<stringValue id="3773">fileLoopCounter</stringValue>
<type>VARIABLE</type>
</item>
<item id="3774" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="3775">counter</name>
<stringValue id="3776">fileLoopCounter</stringValue>
<type>VARIABLE</type>
</item>
<item id="3777" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3778">incrementValue</name>
<objectValue idref="273"/>
<type>CONSTANT</type>
</item>
<item id="3779" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3780">input</name>
<stringValue id="3781">finalData</stringValue>
<type>VARIABLE</type>
</item>
<item id="3782" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="3783">output</name>
<stringValue id="3784">singleEntity</stringValue>
<type>VARIABLE</type>
</item>
<item id="3785" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3786">resetOnEnd</name>
<objectValue idref="283"/>
<type>CONSTANT</type>
</item>
</parameters>
<persistentVariables id="3787" type="java.util.HashSet">
<item id="3788" type="java.lang.String">fileLoopCounter
1000</item>
</persistentVariables>
<sources id="3789" type="java.util.HashSet">
<item id="3790" type="com.j2fe.workflow.definition.Transition">
<name id="3791">ToSplit</name>
<source idref="3692"/>
<target idref="3767"/>
</item>
</sources>
<targets id="3792" type="java.util.HashSet">
<item id="3793" type="com.j2fe.workflow.definition.Transition">
<name id="3794">end-loop</name>
<source idref="3767"/>
<target id="3795">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="3796">NOP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="3797">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="3798" type="java.util.HashSet">
<item idref="3793" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="3799" type="java.util.HashSet">
<item id="3800" type="com.j2fe.workflow.definition.Transition">
<name id="3801">goto-next</name>
<source idref="3795"/>
<target idref="3199"/>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
<item idref="3765" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="3718"/>
</item>
</sources>
<targets id="3802" type="java.util.HashSet">
<item idref="3716" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3699"/>
</item>
</sources>
<targets id="3803" type="java.util.HashSet">
<item idref="3697" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3692"/>
</item>
<item idref="3690" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="3804" type="java.util.HashSet">
<item idref="3790" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
<item idref="3233" type="com.j2fe.workflow.definition.Transition"/>
<item id="3805" type="com.j2fe.workflow.definition.Transition">
<name id="3806">TABLE</name>
<source idref="3235"/>
<target id="3807">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="3808">PopulateDownStreamTable</name>
<nodeHandler>com.thegoldensource.publishing.activity.PopulateDownStreamTable</nodeHandler>
<nodeHandlerClass id="3809">com.thegoldensource.publishing.activity.PopulateDownStreamTable</nodeHandlerClass>
<parameters id="3810" type="java.util.HashSet">
<item id="3811" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3812">TableName</name>
<stringValue id="3813">destVal</stringValue>
<type>VARIABLE</type>
</item>
<item id="3814" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3815">dataSource</name>
<stringValue id="3816">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="3817">connectionFactory</variablePart>
</item>
<item id="3818" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3819">dateFormat</name>
<stringValue id="3820">DateFormatForPublishedData</stringValue>
<type>VARIABLE</type>
</item>
<item id="3821" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3822">dateTimeFormat</name>
<stringValue id="3823">DateTimeFormatForPublishedData</stringValue>
<type>VARIABLE</type>
</item>
<item id="3824" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3825">extractorFactory</name>
<stringValue id="3826">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="3827">connectionFactory</variablePart>
</item>
<item id="3828" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3829">inputData</name>
<stringValue id="3830">finalData</stringValue>
<type>VARIABLE</type>
</item>
<item id="3831" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3832">separatorValue</name>
<stringValue id="3833">Separator</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="3834" type="java.util.HashSet">
<item idref="3805" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="3835" type="java.util.HashSet">
<item id="3836" type="com.j2fe.workflow.definition.Transition">
<name id="3837">goto-next</name>
<source idref="3807"/>
<target idref="3199"/>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="3229"/>
</item>
<item id="3838" type="com.j2fe.workflow.definition.Transition">
<name id="3839">goto-next</name>
<source id="3840">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="3841">Bulk JMS Publisher</name>
<nodeHandler>com.j2fe.general.activities.BulkJMS</nodeHandler>
<nodeHandlerClass id="3842">com.j2fe.general.activities.BulkJMS</nodeHandlerClass>
<parameters id="3843" type="java.util.HashSet">
<item id="3844" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3845">connectionFactory</name>
<stringValue id="3846">deliveryDefinition</stringValue>
<type>VARIABLE</type>
<variablePart id="3847">connectionFactory</variablePart>
</item>
<item id="3848" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3849">destination</name>
<stringValue id="3850">destVal</stringValue>
<type>VARIABLE</type>
</item>
<item id="3851" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="3852">["aoiName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="3853">headerProperties["aoiName"]</name>
<stringValue id="3854">publishingDef</stringValue>
<type>VARIABLE</type>
<variablePart id="3855">aoiName</variablePart>
</item>
<item id="3856" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="3857">["downstreamName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="3858">headerProperties["downstreamName"]</name>
<stringValue id="3859">downstreamSysName</stringValue>
<type>VARIABLE</type>
</item>
<item id="3860" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3861">headerProperties["kafka.message.key"]</name>
<stringValue id="3862">jsonKey</stringValue>
<type>VARIABLE</type>
</item>
<item id="3863" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="3864">["subscriptionName"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="3865">headerProperties["subscriptionName"]</name>
<stringValue id="3866">publishingDef</stringValue>
<type>VARIABLE</type>
<variablePart id="3867">subscriptionName</variablePart>
</item>
<item id="3868" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3869">priority</name>
<stringValue id="3870">publishingDef</stringValue>
<type>VARIABLE</type>
<variablePart id="3871">jmsPriority</variablePart>
</item>
<item id="3872" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3873">textArrayInput[0]</name>
<stringValue id="3874">jmsEntity</stringValue>
<type>VARIABLE</type>
</item>
<item id="3875" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3876">xa</name>
<objectValue idref="353"/>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="3877" type="java.util.HashSet">
<item id="3878" type="com.j2fe.workflow.definition.Transition">
<name id="3879">goto-next</name>
<source id="3880">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="3881">Fetch key</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="3882">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="3883" type="java.util.HashSet">
<item id="3884" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3885">statements</name>
<stringValue id="3886">import com.fasterxml.jackson.core.JsonParseException;&#13;
import com.fasterxml.jackson.core.JsonProcessingException;&#13;
import com.fasterxml.jackson.databind.JsonMappingException;&#13;
import com.fasterxml.jackson.databind.ObjectMapper;&#13;
import java.util.Map;&#13;
import java.util.LinkedHashMap;&#13;
import com.j2fe.feeds.activities.JsonUtil;&#13;
&#13;
String val="";&#13;
&#13;
if(isFlat)&#13;
{&#13;
	ObjectMapper mapper = new ObjectMapper();&#13;
	Map json = mapper.readValue(jsonmsg, LinkedHashMap.class);&#13;
	val = json.get(jsonpath);&#13;
}&#13;
else&#13;
{&#13;
	 val=JsonUtil.getValue(jsonmsg,jsonpath);&#13;
}</stringValue>
<type>CONSTANT</type>
</item>
<item id="3887" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3888">variables["isFlat"]</name>
<stringValue id="3889">IsFlattened?</stringValue>
<type>VARIABLE</type>
</item>
<item id="3890" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3891">variables["jsonmsg"]</name>
<stringValue id="3892">jmsEntity</stringValue>
<type>VARIABLE</type>
</item>
<item id="3893" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3894">variables["jsonpath"]</name>
<stringValue id="3895">KafkaKeyPath</stringValue>
<type>VARIABLE</type>
</item>
<item id="3896" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="3897">variables["val"]</name>
<stringValue id="3898">jsonKey</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="3899" type="java.util.HashSet">
<item id="3900" type="com.j2fe.workflow.definition.Transition">
<name id="3901">loop</name>
<source idref="3206"/>
<target idref="3880"/>
</item>
</sources>
<targets id="3902" type="java.util.HashSet">
<item idref="3878" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3840"/>
</item>
</sources>
<targets id="3903" type="java.util.HashSet">
<item idref="3838" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3229"/>
</item>
</sources>
<targets id="3904" type="java.util.HashSet">
<item idref="3227" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3206"/>
</item>
</sources>
<targets id="3905" type="java.util.HashSet">
<item idref="3204" type="com.j2fe.workflow.definition.Transition"/>
<item idref="3900" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="3199"/>
</item>
<item idref="3588" type="com.j2fe.workflow.definition.Transition"/>
<item idref="3800" type="com.j2fe.workflow.definition.Transition"/>
<item idref="3836" type="com.j2fe.workflow.definition.Transition"/>
<item idref="3688" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="3906" type="java.util.HashSet">
<item idref="3197" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3183"/>
</item>
</sources>
<targets id="3907" type="java.util.HashSet">
<item idref="3181" type="com.j2fe.workflow.definition.Transition"/>
<item id="3908" type="com.j2fe.workflow.definition.Transition">
<name id="3909">true</name>
<source idref="3183"/>
<target id="3910">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="3911">Add To Audit Trail</name>
<nodeHandler>com.thegoldensource.publishing.activity.AddAuditTrail</nodeHandler>
<nodeHandlerClass id="3912">com.thegoldensource.publishing.activity.AddAuditTrail</nodeHandlerClass>
<parameters id="3913" type="java.util.HashSet">
<item id="3914" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3915">GSDM</name>
<stringValue id="3916">Database</stringValue>
<type>VARIABLE</type>
</item>
<item id="3917" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3918">auditId</name>
<stringValue id="3919">auditIdentifier</stringValue>
<type>VARIABLE</type>
</item>
<item id="3920" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3921">dataSource</name>
<stringValue id="3922">Database</stringValue>
<type>VARIABLE</type>
</item>
<item id="3923" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3924">downstreamDestinationId</name>
<stringValue id="3925">downStreamDestinationId</stringValue>
<type>VARIABLE</type>
</item>
<item id="3926" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3927">downstreamSystemName</name>
<stringValue id="3928">downstreamSysName</stringValue>
<type>VARIABLE</type>
</item>
<item id="3929" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3930">entities</name>
<stringValue id="3931">entitiesToBePublished</stringValue>
<type>VARIABLE</type>
</item>
<item id="3932" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="3933">entityOIDVsPBDPOID</name>
<stringValue id="3934">entityOIDVsPBDPOID</stringValue>
<type>VARIABLE</type>
</item>
<item id="3935" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3936">publishingDefinition</name>
<stringValue id="3937">publishingDef</stringValue>
<type>VARIABLE</type>
</item>
<item id="3938" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3939">status</name>
<stringValue id="3940">SUCCESSFUL</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="3941" type="java.util.HashSet">
<item idref="3908" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="3942" type="java.util.HashSet">
<item id="3943" type="com.j2fe.workflow.definition.Transition">
<name id="3944">goto-next</name>
<source idref="3910"/>
<target id="3945">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="3946">Write Publishing Notifications</name>
<nodeHandler>com.thegoldensource.publishing.activity.WritePublishingNotifications</nodeHandler>
<nodeHandlerClass id="3947">com.thegoldensource.publishing.activity.WritePublishingNotifications</nodeHandlerClass>
<parameters id="3948" type="java.util.HashSet">
<item id="3949" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3950">GSDM</name>
<stringValue id="3951">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="3952" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3953">auditId</name>
<stringValue id="3954">auditIdentifier</stringValue>
<type>VARIABLE</type>
</item>
<item id="3955" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3956">dataSource</name>
<stringValue id="3957">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="3958" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3959">downstreamDestinationId</name>
<stringValue id="3960">downStreamDestinationId</stringValue>
<type>VARIABLE</type>
</item>
<item id="3961" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3962">downstreamSystemName</name>
<stringValue id="3963">downstreamSysName</stringValue>
<type>VARIABLE</type>
</item>
<item id="3964" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3965">entities</name>
<stringValue id="3966">entitiesToBePublished</stringValue>
<type>VARIABLE</type>
</item>
<item id="3967" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3968">entityOIDVsPBDPOID</name>
<stringValue id="3969">entityOIDVsPBDPOID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="3970" type="java.util.HashSet">
<item idref="3943" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="3971" type="java.util.HashSet">
<item id="3972" type="com.j2fe.workflow.definition.Transition">
<name id="3973">goto-next</name>
<source idref="3945"/>
<target idref="3052"/>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="3149"/>
</item>
</sources>
<targets id="3974" type="java.util.HashSet">
<item idref="3147" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3121"/>
</item>
</sources>
<targets id="3975" type="java.util.HashSet">
<item idref="3119" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3087"/>
</item>
</sources>
<targets id="3976" type="java.util.HashSet">
<item idref="3085" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3059"/>
</item>
</sources>
<targets id="3977" type="java.util.HashSet">
<item idref="3057" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3052"/>
</item>
<item idref="3972" type="com.j2fe.workflow.definition.Transition"/>
<item idref="3557" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="3978" type="java.util.HashSet">
<item idref="3050" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3036"/>
</item>
</sources>
<targets id="3979" type="java.util.HashSet">
<item idref="3034" type="com.j2fe.workflow.definition.Transition"/>
<item id="3980" type="com.j2fe.workflow.definition.Transition">
<name id="3981">true</name>
<source idref="3036"/>
<target id="3982">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="3983">PBDP Message Preparation</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="3984">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="3985" type="java.util.HashSet">
<item id="3986" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3987">statements</name>
<stringValue id="3988">if( !filePerEntity )
{
	OutputMessage = arrayPBDPMessage;
}</stringValue>
<type>CONSTANT</type>
</item>
<item id="3989" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3990">variables["OutputMessage"]</name>
<stringValue id="3991">OutputMessage</stringValue>
<type>VARIABLE</type>
</item>
<item id="3992" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="3993">variables["OutputMessage"]</name>
<stringValue id="3994">OutputMessage</stringValue>
<type>VARIABLE</type>
</item>
<item id="3995" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="3996">variables["arrayPBDPMessage"]</name>
<stringValue id="3997">arrayPBDPMessage</stringValue>
<type>VARIABLE</type>
</item>
<item id="3998" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="3999">["filePerEntity"]@java/lang/Boolean@</UITypeHint>
<input>true</input>
<name id="4000">variables["filePerEntity"]</name>
<stringValue id="4001">FilePerEntity</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="4002" type="java.util.HashSet">
<item idref="3980" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="4003" type="java.util.HashSet">
<item id="4004" type="com.j2fe.workflow.definition.Transition">
<name id="4005">goto-next</name>
<source idref="3982"/>
<target id="4006">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="4007">Raise Event</name>
<nodeHandler>com.j2fe.event.RaiseEvent</nodeHandler>
<nodeHandlerClass id="4008">com.j2fe.event.RaiseEvent</nodeHandlerClass>
<parameters id="4009" type="java.util.HashSet">
<item id="4010" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="4011">eventName</name>
<stringValue id="4012">RaiseStorePbdpEventAsynchronously</stringValue>
<type>CONSTANT</type>
</item>
<item id="4013" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="4014">["auditId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="4015">parameters["auditId"]</name>
<stringValue id="4016">auditIdentifier</stringValue>
<type>VARIABLE</type>
</item>
<item id="4017" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="4018">["downStreamDestinationId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="4019">parameters["downStreamDestinationId"]</name>
<stringValue id="4020">downStreamDestinationId</stringValue>
<type>VARIABLE</type>
</item>
<item id="4021" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="4022">parameters["entitySequenceNumbers"]</name>
<stringValue id="4023">EntitySequenceNumbers</stringValue>
<type>VARIABLE</type>
</item>
<item id="4024" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="4025">parameters["publishedMessageList"]</name>
<stringValue id="4026">OutputMessage</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="4027" type="java.util.HashSet">
<item idref="4004" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="4028" type="java.util.HashSet">
<item id="4029" type="com.j2fe.workflow.definition.Transition">
<name id="4030">goto-next</name>
<source idref="4006"/>
<target id="4031">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="4032">Destination Loop Ends</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="4033">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="4034" type="java.util.HashSet">
<item idref="4029" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="4035" type="java.util.HashSet">
<item id="4036" type="com.j2fe.workflow.definition.Transition">
<name id="4037">goto-next</name>
<source idref="4031"/>
<target idref="3030"/>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="3030"/>
</item>
<item idref="4036" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="4038" type="java.util.HashSet">
<item idref="3028" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="1161"/>
</item>
</sources>
<targets id="4039" type="java.util.HashSet">
<item idref="1159" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="1137"/>
</item>
</sources>
<targets id="4040" type="java.util.HashSet">
<item idref="1135" type="com.j2fe.workflow.definition.Transition"/>
<item idref="3402" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="1131"/>
</item>
<item idref="3026" type="com.j2fe.workflow.definition.Transition"/>
<item idref="2908" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="4041" type="java.util.HashSet">
<item idref="1129" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="299"/>
</item>
</sources>
<targets id="4042" type="java.util.HashSet">
<item idref="297" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="293"/>
</item>
</sources>
<targets id="4043" type="java.util.HashSet">
<item idref="291" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="287"/>
</item>
</sources>
<targets id="4044" type="java.util.HashSet">
<item idref="285" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="261"/>
</item>
</sources>
<targets id="4045" type="java.util.HashSet">
<item idref="259" type="com.j2fe.workflow.definition.Transition"/>
<item idref="1511" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="255"/>
</item>
</sources>
<targets id="4046" type="java.util.HashSet">
<item idref="253" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="249"/>
</item>
<item idref="1577" type="com.j2fe.workflow.definition.Transition"/>
<item idref="1123" type="com.j2fe.workflow.definition.Transition"/>
<item idref="1070" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="4047" type="java.util.HashSet">
<item idref="247" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ANDJOIN</type>
</source>
<target idref="243"/>
</item>
</sources>
<targets id="4048" type="java.util.HashSet">
<item idref="241" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="234"/>
</item>
<item idref="1062" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="4049" type="java.util.HashSet">
<item idref="589" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</target>
</item>
<item id="4050" type="com.j2fe.workflow.definition.Transition">
<name id="4051">not found</name>
<source idref="173"/>
<target idref="3"/>
</item>
</targets>
<type>XORSPLIT</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
<item idref="167" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</target>
</item>
<item idref="53" type="com.j2fe.workflow.definition.Transition"/>
<item id="4052" type="com.j2fe.workflow.definition.Transition">
<name id="4053">REALTIME</name>
<source idref="55"/>
<target idref="48"/>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="48"/>
</item>
<item idref="4052" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="4054" type="java.util.HashSet">
<item idref="46" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="9"/>
</item>
</sources>
<targets id="4055" type="java.util.HashSet">
<item idref="135" type="com.j2fe.workflow.definition.Transition"/>
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="3"/>
</item>
<item idref="1059" type="com.j2fe.workflow.definition.Transition"/>
<item idref="4050" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="4056" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="4057">Custom/Publishing</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="4058">user1</lastChangeUser>
<lastUpdate id="4059">2022-03-17T18:25:40.000+0530</lastUpdate>
<name id="4060">P72_WF_StandardSubscriptionPublishing</name>
<optimize>true</optimize>
<parameter id="4061" type="java.util.HashMap">
<entry>
<key id="4062" type="java.lang.String">AOIToleranceWindow</key>
<value id="4063" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4064">java.lang.Long</className>
<clazz>java.lang.Long</clazz>
<description id="4065">Tolerance defined in milliseconds will be used in the query for identifying the universe. Entities that have been modified post the last successful run of this workflow are picked up for processing. This tolerance value will be subtracted from the last processing time in order to pick up even those entities that were modified before the last execution of the AOI Processing Workflow. Try to use a smaller tolerance window in order to avoid performance overhead.	</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4066" type="java.lang.String">CreateSingleFile</key>
<value id="4067" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4068">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="4069">When this parameter is set to true, only single file is created for publishing. 
If it is set to false, multiple files are created based on the bulk size and file per entity parameter settings.
The default value is set to false to avoid any impact on existing settings.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4070" type="java.lang.String">Database</key>
<value id="4071" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4072">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="4073">Database</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="4074" type="java.lang.String">DateFormat</key>
<value id="4075" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4076">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="4077">DateFormat to be appended to the file name.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4078" type="java.lang.String">DateFormatForPublishedData</key>
<value id="4079" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4080">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="4081">Date Format provided to Convert Busienss entity such as XML/CSV/JSON for publishing the dates in a specific format.
This format is applied to only those fields that are of type Date in schema.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4082" type="java.lang.String">DateTimeFormatForPublishedData</key>
<value id="4083" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4084">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="4085">Date Time Format provided to Convert Busienss entity such as XML/CSV/JSON for publishing the dates in a specific format.
This format is applied to only those fields that are of type TimeStamp in the schema.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4086" type="java.lang.String">Delta with ADEL</key>
<value id="4087" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4088">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="4089">In BATCH publishing, true will derive delta from ADEL-SBEX else from MSGP-SBEX.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4090" type="java.lang.String">Email Session</key>
<value id="4091" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4092">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="4093">Email Session	</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4094" type="java.lang.String">Email Subject</key>
<value id="4095" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4096">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="4097">Email Subject to be provided</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4098" type="java.lang.String">Email Text</key>
<value id="4099" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4100">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="4101">Sample Email message to be sent.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4102" type="java.lang.String">FilePerEntity</key>
<value id="4103" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4104">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4105" type="java.lang.String">FilterQueryMultiOccurringDataGroup</key>
<value id="4106" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4107">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="4108">Query to filter multi occurring records based on an attributes from the DG.
Only EQL is supported. An example of a filter query on multi occurring data group as follows - Bonds.MarketListing(TradingCurrency='EUR')
The attributes used in this filter query are required to be part of the GSO/Template being used for Publishing.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4109" type="java.lang.String">Group MultiOccurring Fields</key>
<value id="4110" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4111">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="4112">This flag if set to true will group multi-occurring fields under one tag</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4113" type="java.lang.String">IsFlattened?</key>
<value id="4114" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4115">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4116" type="java.lang.String">JMSBulkSize</key>
<value id="4117" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4118">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="4119">JMSBulkSize</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4120" type="java.lang.String">KafkaKeyPath</key>
<value id="4121" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4122">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4123" type="java.lang.String">On Demand VSH</key>
<value id="4124" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4125">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="4126">Flag to enable dynamic GC calculation. When set to true, golden copy entity will be derived dynamically based on VSH defined for a downstream.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4127" type="java.lang.String">Output</key>
<value id="4128" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4129">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>false</input>
<output>true</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4130" type="java.lang.String">PublishDataOldCSVFormat</key>
<value id="4131" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4132">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="4133">This flag is used to publish data in old csv format. The old CSV format repeated data for single occurring fields for every record of multi occurring data group.
By default, this flag is set to false to indicate that the published data will use new format unless specified.
The new format is designed based on the bulk format used by BB.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4134" type="java.lang.String">PublishDataWithFailedRulesValidation</key>
<value id="4135" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4136">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="4137">This parameter decides whether to publish the data which failed drools rule validation. By default, it is set to false. If it is set to true, all the entities will be published irrespective of the status of the drools rules.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4138" type="java.lang.String">PublishedFile</key>
<value id="4139" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4140">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>false</input>
<output>true</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4141" type="java.lang.String">PublishingBulkSize</key>
<value id="4142" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4143">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4144" type="java.lang.String">PublishingPriorityNumber</key>
<value id="4145" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4146">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="4147">Publish only those records having the given priority number in AOIL. This parameter is introduced to handle SOI based publishing when using AOI</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4148" type="java.lang.String">PublishingQueryBindVariables</key>
<value id="4149" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4150">java.lang.Object</className>
<clazz>java.lang.Object</clazz>
<description id="4151">Start and Last record sequence numbers used in the Publishing Query when running NEAR REALTIME mode.</description>
<input>false</input>
<output>true</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4152" type="java.lang.String">QueryParameter</key>
<value id="4153" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4154">java.lang.Object</className>
<clazz>java.lang.Object</clazz>
<description id="4155">If EQL is used in the publishing profile, it can accept bind variables.
This map is a key-alue pair of bind variable name and its value to be replaced in the EQL</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4156" type="java.lang.String">RestCall</key>
<value id="4157" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4158">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4159" type="java.lang.String">Result</key>
<value id="4160" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4161">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="4162">	</description>
<input>false</input>
<output>true</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4163" type="java.lang.String">Senders Email</key>
<value id="4164" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4165">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="4166">Sender's Email .This will be used only when PUBLISHING DESTINATION  is EMAIL.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4167" type="java.lang.String">Separator</key>
<value id="4168" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4169">com.thegoldensource.publishing.activity.ConvertBusinessEntity$Separator</className>
<clazz>com.thegoldensource.publishing.activity.ConvertBusinessEntity$Separator</clazz>
<description id="4170">Separator to be used when reading the CSV file for populating table used as Downstream Destination.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4171" type="java.lang.String">StorePublishedMessageToPBDP</key>
<value id="4172" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4173">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="4174">Boolean Parameter to store Published Message to PBDP</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4175" type="java.lang.String">SubscriptionInstanceID</key>
<value id="4176" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4177">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="4178">SubscriptionInstanceID</description>
<input>false</input>
<output>true</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4179" type="java.lang.String">SubscriptionName</key>
<value id="4180" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4181">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4182" type="java.lang.String">UICall</key>
<value id="4183" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4184">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4185" type="java.lang.String">XMLCoveringHeaderTag</key>
<value id="4186" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4187">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="4188">XML header and Footer Tag to be added to the final published XML when CreateSingleFile parameter is set to true.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4189" type="java.lang.String">addCorrelationHeader</key>
<value id="4190" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4191">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="4192">Add Correlation header to XML message. If this flag is true then correlation header will be added to XML message. Default value is false.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4193" type="java.lang.String">addCoveringXMLHeader</key>
<value id="4194" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4195">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="4196">Add header at the start of the XML and footer at the end of the message.
This flag is set to false by default. When it is set to false, existing structure of the XML is preserved. When it is set to true, a header tag and a footer tag is added at the start and end of the XML message. In case of a CSV file, when this flag is set to true, only one header is added at the beginning of the file instead of adding the header for every record.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4197" type="java.lang.String">addFirstDataGroupNameJSON</key>
<value id="4198" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4199">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="4200">This flag is set to true by default. When set to false, the first Data Group Name is not added to the JSON Output.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4201" type="java.lang.String">addGSONameJSONRoot</key>
<value id="4202" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4203">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="4204">Add the name of the GSO or Entity at the beginning of the JSON string getting published. By default its value is true. If it is set to false, the GSO name is not added as root element.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4205" type="java.lang.String">appendEOFLine</key>
<value id="4206" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4207">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4208" type="java.lang.String">bulkSize</key>
<value id="4209" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4210">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4211" type="java.lang.String">checkPublishingTimeAOIL</key>
<value id="4212" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4213">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="4214">Check Publishing TimeStamp of AOIL table when identifying the entities to be picked up for publishing</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4215" type="java.lang.String">dataPath</key>
<value id="4216" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4217">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="4218">Path of the node to be used for splitting published JSON.
An example of dataPath is - FULLINSTRUMENT/FullInstrument/ListingDetails</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4219" type="java.lang.String">enableValueTagJSON</key>
<value id="4220" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4221">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="4222">Add Value Tag in the JSON fields
This flag is set to true by default. When set to false, the value tag is not added to the JSON fields.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4223" type="java.lang.String">entityMode</key>
<value id="4224" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4225">com.thegoldensource.publishing.util.EntityMode</className>
<clazz>com.thegoldensource.publishing.util.EntityMode</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4226" type="java.lang.String">headerFieldProperty</key>
<value id="4227" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4228">com.thegoldensource.publishing.activity.ConvertBusinessEntity$HeaderFieldProperty</className>
<clazz>com.thegoldensource.publishing.activity.ConvertBusinessEntity$HeaderFieldProperty</clazz>
<description id="4229">In case of CSV type of publishing, the header of the CSV file can include the fully qualified name of the field, the label as displayed on the UI or the name of the field defined in the GSO.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4230" type="java.lang.String">headerString</key>
<value id="4231" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4232">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="4233">This parameter will hold the comma separated header columns to be populated in the final file to be published.
This parameter is required since the transformation happens in multi threaded environment (in parallel).</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4234" type="java.lang.String">inlineAOIProcessing</key>
<value id="4235" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4236">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="4237">This flag indicates if AOI Processing is required to be run</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4238" type="java.lang.String">jobId</key>
<value id="4239" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4240">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4241" type="java.lang.String">messageType</key>
<value id="4242" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4243">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4244" type="java.lang.String">modelName</key>
<value id="4245" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4246">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4247" type="java.lang.String">persistDQRulesExceptionsInTable</key>
<value id="4248" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4249">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="4250">If any DQ rules are attached to the publishing profile, exceptions raised by these rules are stored in NTEL table. User is provided with an option to avoid storing exceptions to reduce performance overhead. The default value of this flag is false to avoid storing exceptions.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4251" type="java.lang.String">processedEntityInfo</key>
<value id="4252" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4253">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="4254">Details of the entities processed by Standard File Load such as entity oid, entity type etc.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4255" type="java.lang.String">publishRelationName</key>
<value id="4256" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4257">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="4258">Publish name of the relation as displayed in the GSO Designer or publish only name of the datagroup. 
When this flag is set to true, the published data will include the name of the relation as displayed in the GSO Designer along with data group name.
When this flag is set to false, only the data group name of the related entity will be published.
By default, this flag is set to false to avoid any impact on the existing implementtions.	</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4259" type="java.lang.String">publishingMode</key>
<value id="4260" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4261">com.thegoldensource.subscription.PublishingMode</className>
<clazz>com.thegoldensource.subscription.PublishingMode</clazz>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="4262" type="java.lang.String">startRecordSequence</key>
<value id="4263" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4264">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4265" type="java.lang.String">subscriptionId</key>
<value id="4266" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4267">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="4268" type="java.lang.String">transactionId</key>
<value id="4269" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="4270">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="4271" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="107"/>
<status>RELEASED</status>
<variables id="4272" type="java.util.HashMap">
<entry>
<key id="4273" type="java.lang.String">AOIToleranceWindow</key>
<value id="4274" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4275">java.lang.Long</className>
<clazz>java.lang.Long</clazz>
<description id="4276">Tolerance defined in milliseconds will be used in the query for identifying the universe. Entities that have been modified post the last successful run of this workflow are picked up for processing. This tolerance value will be subtracted from the last processing time in order to pick up even those entities that were modified before the last execution of the AOI Processing Workflow. Try to use a smaller tolerance window in order to avoid performance overhead.	</description>
<persistent>false</persistent>
<value id="4277" type="java.lang.Long">0</value>
</value>
</entry>
<entry>
<key id="4278" type="java.lang.String">CreateSingleFile</key>
<value id="4279" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4280">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="4281">When this parameter is set to true, only single file is created for publishing. 
If it is set to false, multiple files are created based on the bulk size and file per entity parameter settings.
The default value is set to false to avoid any impact on existing settings.</description>
<persistent>false</persistent>
<value idref="353"/>
</value>
</entry>
<entry>
<key id="4282" type="java.lang.String">Database</key>
<value id="4283" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4284">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="4285">Database</description>
<persistent>false</persistent>
<value id="4286" type="java.lang.String">jdbc/GSDM-1</value>
</value>
</entry>
<entry>
<key id="4287" type="java.lang.String">DateFormat</key>
<value id="4288" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4289">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="4290">DateFormat to be appended to the file name.</description>
<persistent>false</persistent>
<value id="4291" type="java.lang.String">yyyyMMddHHmmssSSSSSSS</value>
</value>
</entry>
<entry>
<key id="4292" type="java.lang.String">DateFormatForPublishedData</key>
<value id="4293" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4294">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="4295">Date Format provided to Convert Busienss entity such as XML/CSV/JSON for publishing the dates in a specific format.
This format is applied to only those fields that are of type Date in schema.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="4296" type="java.lang.String">DateTimeFormatForPublishedData</key>
<value id="4297" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4298">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="4299">Date Time Format provided to Convert Busienss entity such as XML/CSV/JSON for publishing the dates in a specific format.
This format is applied to only those fields that are of type TimeStamp in the schema.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="4300" type="java.lang.String">Delta with ADEL</key>
<value id="4301" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4302">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="4303">In BATCH publishing, true will derive delta from ADEL-SBEX else from MSGP-SBEX.</description>
<persistent>false</persistent>
<value idref="353"/>
</value>
</entry>
<entry>
<key id="4304" type="java.lang.String">Email Session</key>
<value id="4305" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4306">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="4307">Email Session	</description>
<persistent>false</persistent>
<value id="4308" type="java.lang.String">java/Mail</value>
</value>
</entry>
<entry>
<key id="4309" type="java.lang.String">Email Subject</key>
<value id="4310" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4311">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="4312">Email Subject to be provided</description>
<persistent>false</persistent>
<value id="4313" type="java.lang.String">Sample Message</value>
</value>
</entry>
<entry>
<key id="4314" type="java.lang.String">Email Text</key>
<value id="4315" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4316">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="4317">Sample Email message to be sent.</description>
<persistent>false</persistent>
<value id="4318" type="java.lang.String">Sample Message</value>
</value>
</entry>
<entry>
<key id="4319" type="java.lang.String">FilePerEntity</key>
<value id="4320" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4321">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<persistent>false</persistent>
<value idref="353"/>
</value>
</entry>
<entry>
<key id="4322" type="java.lang.String">FilterQueryMultiOccurringDataGroup</key>
<value id="4323" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4324">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="4325">Query to filter multi occurring records based on an attributes from the DG.
Only EQL is supported. An example of a filter query on multi occurring data group as follows - Bonds.MarketListing(TradingCurrency='EUR')
The attributes used in this filter query are required to be part of the GSO/Template being used for Publishing.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="4326" type="java.lang.String">Group MultiOccurring Fields</key>
<value id="4327" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4328">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="4329">This flag if set to true will group multi-occurring fields under one tag</description>
<persistent>false</persistent>
<value idref="353"/>
</value>
</entry>
<entry>
<key id="4330" type="java.lang.String">IsFlattened?</key>
<value id="4331" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4332">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value idref="353"/>
</value>
</entry>
<entry>
<key id="4333" type="java.lang.String">JMSBulkSize</key>
<value id="4334" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4335">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="4336">JMSBulkSize</description>
<persistent>false</persistent>
<value id="4337" type="java.lang.Integer">500</value>
</value>
</entry>
<entry>
<key id="4338" type="java.lang.String">KafkaKeyPath</key>
<value id="4339" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4340">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="4341" type="java.lang.String">On Demand VSH</key>
<value id="4342" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4343">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="4344">Flag to enable dynamic GC calculation. When set to true, golden copy entity will be derived dynamically based on VSH defined for a downstream.</description>
<persistent>false</persistent>
<value idref="353"/>
</value>
</entry>
<entry>
<key id="4345" type="java.lang.String">Output</key>
<value id="4346" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4347">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="4348" type="java.lang.String">PublishDataOldCSVFormat</key>
<value id="4349" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4350">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="4351">This flag is used to publish data in old csv format. The old CSV format repeated data for single occurring fields for every record of multi occurring data group.
By default, this flag is set to false to indicate that the published data will use new format unless specified.
The new format is designed based on the bulk format used by BB.</description>
<persistent>false</persistent>
<value idref="353"/>
</value>
</entry>
<entry>
<key id="4352" type="java.lang.String">PublishDataWithFailedRulesValidation</key>
<value id="4353" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4354">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="4355">This parameter decides whether to publish the data which failed drools rule validation. By default, it is set to false. If it is set to true, all the entities will be published irrespective of the status of the drools rules.</description>
<persistent>false</persistent>
<value idref="353"/>
</value>
</entry>
<entry>
<key id="4356" type="java.lang.String">PublishedFile</key>
<value id="4357" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4358">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="4359" type="java.lang.String">PublishingBulkSize</key>
<value id="4360" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4361">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<persistent>false</persistent>
<value id="4362" type="java.lang.Integer">500</value>
</value>
</entry>
<entry>
<key id="4363" type="java.lang.String">PublishingPriorityNumber</key>
<value id="4364" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4365">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="4366">Publish only those records having the given priority number in AOIL. This parameter is introduced to handle SOI based publishing when using AOI</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="4367" type="java.lang.String">PublishingQueryBindVariables</key>
<value id="4368" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4369">java.lang.Object</className>
<clazz>java.lang.Object</clazz>
<description id="4370">Start and Last record sequence numbers used in the Publishing Query when running NEAR REALTIME mode.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="4371" type="java.lang.String">QueryParameter</key>
<value id="4372" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4373">java.lang.Object</className>
<clazz>java.lang.Object</clazz>
<description id="4374">If EQL is used in the publishing profile, it can accept bind variables.
This map is a key-alue pair of bind variable name and its value to be replaced in the EQL</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="4375" type="java.lang.String">RestCall</key>
<value id="4376" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4377">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<persistent>false</persistent>
<value idref="353"/>
</value>
</entry>
<entry>
<key id="4378" type="java.lang.String">Result</key>
<value id="4379" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4380">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="4381">	</description>
<persistent>false</persistent>
<value id="4382" type="java.lang.String">Message Published successfully.</value>
</value>
</entry>
<entry>
<key id="4383" type="java.lang.String">Senders Email</key>
<value id="4384" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4385">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="4386">Sender's Email .This will be used only when PUBLISHING DESTINATION  is EMAIL.</description>
<persistent>false</persistent>
<value id="4387" type="java.lang.String">no-reply@thegoldensource.com</value>
</value>
</entry>
<entry>
<key id="4388" type="java.lang.String">Separator</key>
<value id="4389" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4390">com.thegoldensource.publishing.activity.ConvertBusinessEntity$Separator</className>
<clazz>com.thegoldensource.publishing.activity.ConvertBusinessEntity$Separator</clazz>
<description id="4391">Separator to be used when reading the CSV file for populating table used as Downstream Destination.</description>
<persistent>false</persistent>
<value id="4392" type="com.thegoldensource.publishing.activity.ConvertBusinessEntity$Separator">COMMA</value>
</value>
</entry>
<entry>
<key id="4393" type="java.lang.String">StorePublishedMessageToPBDP</key>
<value id="4394" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4395">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="4396">Boolean Parameter to store Published Message to PBDP</description>
<persistent>false</persistent>
<value idref="353"/>
</value>
</entry>
<entry>
<key id="4397" type="java.lang.String">SubscriptionInstanceID</key>
<value id="4398" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4399">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="4400">SubscriptionInstanceID</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="4401" type="java.lang.String">SubscriptionName</key>
<value id="4402" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4403">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>true</persistent>
</value>
</entry>
<entry>
<key id="4404" type="java.lang.String">UICall</key>
<value id="4405" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4406">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<persistent>false</persistent>
<value idref="353"/>
</value>
</entry>
<entry>
<key id="4407" type="java.lang.String">XMLCoveringHeaderTag</key>
<value id="4408" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4409">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="4410">XML header and Footer Tag to be added to the final published XML when CreateSingleFile parameter is set to true.</description>
<persistent>false</persistent>
<value id="4411" type="java.lang.String">ROOT</value>
</value>
</entry>
<entry>
<key id="4412" type="java.lang.String">addCorrelationHeader</key>
<value id="4413" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4414">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="4415">Add Correlation header to XML message. If this flag is true then correlation header will be added to XML message. Default value is false.</description>
<persistent>false</persistent>
<value idref="283"/>
</value>
</entry>
<entry>
<key id="4416" type="java.lang.String">addCoveringXMLHeader</key>
<value id="4417" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4418">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="4419">Add header at the start of the XML and footer at the end of the message.
This flag is set to false by default. When it is set to false, existing structure of the XML is preserved. When it is set to true, a header tag and a footer tag is added at the start and end of the XML message. In case of a CSV file, when this flag is set to true, only one header is added at the beginning of the file instead of adding the header for every record.</description>
<persistent>false</persistent>
<value idref="283"/>
</value>
</entry>
<entry>
<key id="4420" type="java.lang.String">addFirstDataGroupNameJSON</key>
<value id="4421" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4422">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="4423">This flag is set to true by default. When set to false, the first Data Group Name is not added to the JSON Output.</description>
<persistent>false</persistent>
<value idref="283"/>
</value>
</entry>
<entry>
<key id="4424" type="java.lang.String">addGSONameJSONRoot</key>
<value id="4425" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4426">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="4427">Add the name of the GSO or Entity at the beginning of the JSON string getting published. By default its value is true. If it is set to false, the GSO name is not added as root element.</description>
<persistent>false</persistent>
<value idref="283"/>
</value>
</entry>
<entry>
<key id="4428" type="java.lang.String">appendEOFLine</key>
<value id="4429" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4430">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<persistent>false</persistent>
<value idref="283"/>
</value>
</entry>
<entry>
<key id="4431" type="java.lang.String">auditIdentifier</key>
<value id="4432" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4433">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="4434">auditIdentifier</description>
<persistent>true</persistent>
</value>
</entry>
<entry>
<key id="4435" type="java.lang.String">bulkSize</key>
<value id="4436" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4437">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="4438" type="java.lang.String">checkPublishingTimeAOIL</key>
<value id="4439" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4440">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="4441">Check Publishing TimeStamp of AOIL table when identifying the entities to be picked up for publishing</description>
<persistent>false</persistent>
<value idref="353"/>
</value>
</entry>
<entry>
<key id="4442" type="java.lang.String">dataPath</key>
<value id="4443" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4444">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="4445">Path of the node to be used for splitting published JSON.
An example of dataPath is - FULLINSTRUMENT/FullInstrument/ListingDetails</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="4446" type="java.lang.String">enableValueTagJSON</key>
<value id="4447" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4448">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="4449">Add Value Tag in the JSON fields
This flag is set to true by default. When set to false, the value tag is not added to the JSON fields.</description>
<persistent>false</persistent>
<value idref="353"/>
</value>
</entry>
<entry>
<key id="4450" type="java.lang.String">entityMode</key>
<value id="4451" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4452">com.thegoldensource.publishing.util.EntityMode</className>
<clazz>com.thegoldensource.publishing.util.EntityMode</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="4453" type="java.lang.String">headerFieldProperty</key>
<value id="4454" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4455">com.thegoldensource.publishing.activity.ConvertBusinessEntity$HeaderFieldProperty</className>
<clazz>com.thegoldensource.publishing.activity.ConvertBusinessEntity$HeaderFieldProperty</clazz>
<description id="4456">In case of CSV type of publishing, the header of the CSV file can include the fully qualified name of the field, the label as displayed on the UI or the name of the field defined in the GSO.</description>
<persistent>false</persistent>
<value id="4457" type="com.thegoldensource.publishing.activity.ConvertBusinessEntity$HeaderFieldProperty">LABEL</value>
</value>
</entry>
<entry>
<key id="4458" type="java.lang.String">headerString</key>
<value id="4459" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4460">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="4461">This parameter will hold the comma separated header columns to be populated in the final file to be published.
This parameter is required since the transformation happens in multi threaded environment (in parallel).</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="4462" type="java.lang.String">inlineAOIProcessing</key>
<value id="4463" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4464">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="4465">This flag indicates if AOI Processing is required to be run</description>
<persistent>false</persistent>
<value idref="353"/>
</value>
</entry>
<entry>
<key id="4466" type="java.lang.String">jobId</key>
<value id="4467" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4468">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="4469" type="java.lang.String">messageType</key>
<value id="4470" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4471">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>true</persistent>
</value>
</entry>
<entry>
<key id="4472" type="java.lang.String">modelName</key>
<value id="4473" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4474">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="4475" type="java.lang.String">persistDQRulesExceptionsInTable</key>
<value id="4476" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4477">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="4478">If any DQ rules are attached to the publishing profile, exceptions raised by these rules are stored in NTEL table. User is provided with an option to avoid storing exceptions to reduce performance overhead. The default value of this flag is false to avoid storing exceptions.</description>
<persistent>false</persistent>
<value idref="353"/>
</value>
</entry>
<entry>
<key id="4479" type="java.lang.String">processedEntityInfo</key>
<value id="4480" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4481">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description id="4482">Details of the entities processed by Standard File Load such as entity oid, entity type etc.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="4483" type="java.lang.String">publishRelationName</key>
<value id="4484" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4485">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="4486">Publish name of the relation as displayed in the GSO Designer or publish only name of the datagroup. 
When this flag is set to true, the published data will include the name of the relation as displayed in the GSO Designer along with data group name.
When this flag is set to false, only the data group name of the related entity will be published.
By default, this flag is set to false to avoid any impact on the existing implementtions.	</description>
<persistent>false</persistent>
<value idref="353"/>
</value>
</entry>
<entry>
<key id="4487" type="java.lang.String">publishingDefCounter</key>
<value id="4488" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4489">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="4490">publishingDefCounter</description>
<persistent>false</persistent>
<value id="4491" type="java.lang.Integer">0</value>
</value>
</entry>
<entry>
<key id="4492" type="java.lang.String">publishingDefs</key>
<value id="4493" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4494">[Lcom.thegoldensource.publishing.util.PublishingDefinition;</className>
<clazz>[Lcom.thegoldensource.publishing.util.PublishingDefinition;</clazz>
<description id="4495">Publishing Definitions</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="4496" type="java.lang.String">publishingMode</key>
<value id="4497" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4498">com.thegoldensource.subscription.PublishingMode</className>
<clazz>com.thegoldensource.subscription.PublishingMode</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="4499" type="java.lang.String">startRecordSequence</key>
<value id="4500" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4501">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="4502" type="java.lang.String">subscriptionId</key>
<value id="4503" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4504">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>true</persistent>
</value>
</entry>
<entry>
<key id="4505" type="java.lang.String">threadId</key>
<value id="4506" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4507">java.lang.Long</className>
<clazz>java.lang.Long</clazz>
<description id="4508">Thread Id to be used for creating temporary files when CreateSingleFile parameter is true. Thread is used to avoid same Temp file being overwritten by multiple publishing workflows running at the same time.</description>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="4509" type="java.lang.String">transactionId</key>
<value id="4510" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="4511">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
</variables>
<version>9</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>

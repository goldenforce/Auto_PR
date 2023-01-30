<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.22">
<package-comment/>
<businessobject displayString="4 - 05062022-PersistChanges" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">05062022-PersistChanges</comment>
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
<name id="8">empty</name>
<source id="9">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="10">List Files</name>
<nodeHandler>com.j2fe.feeds.activities.ListFiles</nodeHandler>
<nodeHandlerClass id="11">com.j2fe.feeds.activities.ListFiles</nodeHandlerClass>
<parameters id="12" type="java.util.HashSet">
<item id="13" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="14">directory</name>
<stringValue id="15">Directory</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="16" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="17">fileSystem</name>
<stringValue id="18">filesystem/sftp/swapsmonitor</stringValue>
<type>REFERENCE</type>
</item>
<item id="19" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="20">includeBoth</name>
<objectValue id="21" type="java.lang.Boolean">false</objectValue>
<type>CONSTANT</type>
</item>
<item id="22" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="23">list</name>
<stringValue id="24">FileList</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="25" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="26">pattern[0]</name>
<stringValue id="27">ZIPFilePatterns</stringValue>
<type>VARIABLE</type>
</item>
<item id="28" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="29">sort</name>
<stringValue id="30">SortOrder</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="31" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="32">sortAscending</name>
<stringValue id="33">SortAscending</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="34" type="java.util.HashSet">
<item id="35" type="com.j2fe.workflow.definition.Transition">
<name id="36">goto-next</name>
<source id="37">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="38">NOP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="39">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="40" type="java.util.HashSet">
<item id="41" type="com.j2fe.workflow.definition.Transition">
<name id="42">goto-next</name>
<source id="43">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="44">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="45">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="46" type="java.util.HashSet"/>
<targets id="47" type="java.util.HashSet">
<item idref="41" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="37"/>
</item>
</sources>
<targets id="48" type="java.util.HashSet">
<item idref="35" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="9"/>
</item>
</sources>
<targets id="49" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
<item id="50" type="com.j2fe.workflow.definition.Transition">
<name id="51">not-empty</name>
<source idref="9"/>
<target id="52">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="53">Automatically generated</description>
<directJoin>false</directJoin>
<name id="54">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="55">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="56" type="java.util.HashSet">
<item id="57" type="com.j2fe.workflow.definition.Transition">
<name id="58">goto-next</name>
<source id="59">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="60">NOP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="61">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="62" type="java.util.HashSet">
<item id="63" type="com.j2fe.workflow.definition.Transition">
<name id="64">error</name>
<source id="65">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="66">Open File</name>
<nodeHandler>com.j2fe.feeds.activities.ReadFile</nodeHandler>
<nodeHandlerClass id="67">com.j2fe.feeds.activities.ReadFile</nodeHandlerClass>
<parameters id="68" type="java.util.HashSet">
<item id="69" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="70">businessFeed</name>
<stringValue id="71">BusinessFeed</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="72" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="73">businessFeed</name>
<stringValue id="74">BusinessFeed</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="75" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="76">exception</name>
<stringValue id="77">Exception</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="78" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="79">file</name>
<stringValue id="80">File</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="81" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="82">fileConnection</name>
<stringValue id="83">FileConnection</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="84" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="85">grouping</name>
<stringValue id="86">grouping</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="87" type="java.util.HashSet">
<item id="88" type="com.j2fe.workflow.definition.Transition">
<name id="89">goto-next</name>
<source id="90">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="91">Bean Shell Script (Standard)</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="92">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="93" type="java.util.HashSet">
<item id="94" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="95">statements</name>
<stringValue id="96">import java.lang.String;&#13;
&#13;
String[] fileSplit=fullName.split("/");&#13;
String fileName=fileSplit[fileSplit.length-1];&#13;
&#13;
String zipCmd="unzip -j "+fileName+ " CHANGES.CSV";&#13;
String moveZipCmd = "mv "+fileName+ " ./done/"+fileName;&#13;
String renameCmd = "mv CHANGES.CSV CHANGES"+fileName.substring(fileName.indexOf("_"),fileName.indexOf(".ZIP"))+".CSV";&#13;
&#13;
&#13;
&#13;
&#13;
&#13;
</stringValue>
<type>CONSTANT</type>
</item>
<item id="97" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="98">variables["counter"]</name>
<stringValue id="99">Counter</stringValue>
<type>VARIABLE</type>
</item>
<item id="100" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="101">variables["fileName"]</name>
<stringValue id="102">fileName</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="103" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="104">variables["fullName"]</name>
<stringValue id="105">Filename</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="106" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="107">variables["moveZipCmd"]</name>
<stringValue id="108">moveZipCmd </stringValue>
<type>VARIABLE</type>
</item>
<item id="109" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="110">variables["renameCmd"]</name>
<stringValue id="111">renameCmd</stringValue>
<type>VARIABLE</type>
</item>
<item id="112" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="113">variables["zipCmd"]</name>
<stringValue id="114">unzipCmd</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="115" type="java.util.HashSet">
<item id="116" type="com.j2fe.workflow.definition.Transition">
<name id="117">goto-next</name>
<source id="118">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="119">Automatically generated</description>
<directJoin>false</directJoin>
<name id="120">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="121">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="122" type="java.util.HashSet">
<item id="123" type="com.j2fe.workflow.definition.Transition">
<name id="124">true</name>
<source id="125">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="126">Is New File?</name>
<nodeHandler>com.j2fe.feeds.activities.CheckRestart</nodeHandler>
<nodeHandlerClass id="127">com.j2fe.feeds.activities.CheckRestart</nodeHandlerClass>
<parameters id="128" type="java.util.HashSet">
<item id="129" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="130">file</name>
<stringValue id="131">File</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="132" type="java.util.HashSet">
<item id="133" type="com.j2fe.workflow.definition.Transition">
<name id="134">loop</name>
<source id="135">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="136">For Loop </name>
<nodeHandler>com.j2fe.workflow.handler.impl.ForEach</nodeHandler>
<nodeHandlerClass id="137">com.j2fe.workflow.handler.impl.ForEach</nodeHandlerClass>
<parameters id="138" type="java.util.HashSet">
<item id="139" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="140">counter</name>
<stringValue id="141">Counter</stringValue>
<type>VARIABLE</type>
</item>
<item id="142" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="143">counter</name>
<stringValue id="144">Counter</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="145" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="146">input</name>
<stringValue id="147">FileList</stringValue>
<type>VARIABLE</type>
</item>
<item id="148" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="149">output</name>
<stringValue id="150">File</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="151" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="152">@java/io/File@.name</UITypeHint>
<input>false</input>
<name id="153">output.name</name>
<stringValue id="154">Filename</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="155" type="java.util.HashSet">
<item id="156" type="com.j2fe.workflow.definition.Transition">
<name id="157">ToSplit</name>
<source idref="52"/>
<target idref="135"/>
</item>
</sources>
<targets id="158" type="java.util.HashSet">
<item id="159" type="com.j2fe.workflow.definition.Transition">
<name id="160">end-loop</name>
<source idref="135"/>
<target idref="3"/>
</item>
<item idref="133" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="125"/>
</item>
</sources>
<targets id="161" type="java.util.HashSet">
<item id="162" type="com.j2fe.workflow.definition.Transition">
<name id="163">false</name>
<source idref="125"/>
<target id="164">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="165">ReDownloadfiles ?</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="166">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="167" type="java.util.HashSet">
<item id="168" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="169">caseItem</name>
<stringValue id="170">ReDownloadfiles</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="171" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="172">defaultItem</name>
<stringValue id="173">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="174" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="175">nullTransition</name>
<stringValue id="176">false</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="177" type="java.util.HashSet">
<item idref="162" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="178" type="java.util.HashSet">
<item id="179" type="com.j2fe.workflow.definition.Transition">
<name id="180">false</name>
<source idref="164"/>
<target idref="59"/>
</item>
<item id="181" type="com.j2fe.workflow.definition.Transition">
<name id="182">true</name>
<source idref="164"/>
<target idref="118"/>
</item>
</targets>
<type>XORSPLIT</type>
</target>
</item>
<item idref="123" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="118"/>
</item>
<item idref="181" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="183" type="java.util.HashSet">
<item idref="116" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="90"/>
</item>
</sources>
<targets id="184" type="java.util.HashSet">
<item idref="88" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="65"/>
</item>
</sources>
<targets id="185" type="java.util.HashSet">
<item idref="63" type="com.j2fe.workflow.definition.Transition"/>
<item id="186" type="com.j2fe.workflow.definition.Transition">
<name id="187">success</name>
<source idref="65"/>
<target id="188">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="189">Unzip file</name>
<nodeHandler>com.j2fe.general.activities.CommandLine</nodeHandler>
<nodeHandlerClass id="190">com.j2fe.general.activities.CommandLine</nodeHandlerClass>
<parameters id="191" type="java.util.HashSet">
<item id="192" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="193">commandLine</name>
<stringValue id="194">unzipCmd</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="195" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="196">directory</name>
<stringValue id="197">DownloadDirectory</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="198" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="199">waitForEnd</name>
<stringValue id="200">true</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="201" type="java.util.HashSet">
<item idref="186" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="202" type="java.util.HashSet">
<item id="203" type="com.j2fe.workflow.definition.Transition">
<name id="204">goto-next</name>
<source idref="188"/>
<target id="205">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="206">Rename CSV file</name>
<nodeHandler>com.j2fe.general.activities.CommandLine</nodeHandler>
<nodeHandlerClass id="207">com.j2fe.general.activities.CommandLine</nodeHandlerClass>
<parameters id="208" type="java.util.HashSet">
<item id="209" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="210">commandLine</name>
<stringValue id="211">renameCmd</stringValue>
<type>VARIABLE</type>
</item>
<item id="212" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="213">directory</name>
<stringValue id="214">DownloadDirectory</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="215" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="216">waitForEnd</name>
<stringValue id="217">true</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="218" type="java.util.HashSet">
<item idref="203" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="219" type="java.util.HashSet">
<item id="220" type="com.j2fe.workflow.definition.Transition">
<name id="221">goto-next</name>
<source idref="205"/>
<target id="222">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="223">Move ZIP file</name>
<nodeHandler>com.j2fe.general.activities.CommandLine</nodeHandler>
<nodeHandlerClass id="224">com.j2fe.general.activities.CommandLine</nodeHandlerClass>
<parameters id="225" type="java.util.HashSet">
<item id="226" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="227">commandLine</name>
<stringValue id="228">moveZipCmd </stringValue>
<type>VARIABLE</type>
</item>
<item id="229" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="230">directory</name>
<stringValue id="231">DownloadDirectory</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="232" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="233">waitForEnd</name>
<stringValue id="234">true</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="235" type="java.util.HashSet">
<item idref="220" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="236" type="java.util.HashSet">
<item id="237" type="com.j2fe.workflow.definition.Transition">
<name id="238">goto-next</name>
<source idref="222"/>
<target idref="59"/>
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
<target idref="59"/>
</item>
<item idref="179" type="com.j2fe.workflow.definition.Transition"/>
<item idref="237" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="239" type="java.util.HashSet">
<item idref="57" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="52"/>
</item>
<item idref="50" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="240" type="java.util.HashSet">
<item idref="156" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="3"/>
</item>
<item idref="159" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="241" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="242">Custom/SMFinancialFeedProcessing</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="243">user1</lastChangeUser>
<lastUpdate id="244">2022-06-05T18:33:33.000+0530</lastUpdate>
<name id="245">P72_WF_DownloadSMFinancialFiles</name>
<optimize>true</optimize>
<parameter id="246" type="java.util.HashMap">
<entry>
<key id="247" type="java.lang.String">BusinessFeed</key>
<value id="248" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="249">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="250" type="java.lang.String">Directory</key>
<value id="251" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="252">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="253" type="java.lang.String">DownloadDirectory</key>
<value id="254" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="255">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="256" type="java.lang.String">ReDownloadfiles</key>
<value id="257" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="258">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="259" type="java.lang.String">SortAscending</key>
<value id="260" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="261">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="262" type="java.lang.String">SortOrder</key>
<value id="263" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="264">com.j2fe.feeds.activities.ListFiles$Sort</className>
<clazz>com.j2fe.feeds.activities.ListFiles$Sort</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="265" type="java.lang.String">ZIPFilePatterns</key>
<value id="266" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="267">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="268">Comma seperated file patterns</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="269" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="43"/>
<status>RELEASED</status>
<variables id="270" type="java.util.HashMap">
<entry>
<key id="271" type="java.lang.String">BusinessFeed</key>
<value id="272" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="273">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="274" type="java.lang.String">SMChanges</value>
</value>
</entry>
<entry>
<key id="275" type="java.lang.String">Counter</key>
<value id="276" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="277">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="278" type="java.lang.Integer">0</value>
</value>
</entry>
<entry>
<key id="279" type="java.lang.String">Directory</key>
<value id="280" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="281">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="282" type="java.lang.String">/</value>
</value>
</entry>
<entry>
<key id="283" type="java.lang.String">DownloadDirectory</key>
<value id="284" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="285">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="286" type="java.lang.String">/devgs/InputFiles/SwapsMonitor</value>
</value>
</entry>
<entry>
<key id="287" type="java.lang.String">ReDownloadfiles</key>
<value id="288" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="289">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value idref="21"/>
</value>
</entry>
<entry>
<key id="290" type="java.lang.String">SortAscending</key>
<value id="291" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="292">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="293" type="java.lang.Boolean">true</value>
</value>
</entry>
<entry>
<key id="294" type="java.lang.String">SortOrder</key>
<value id="295" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="296">com.j2fe.feeds.activities.ListFiles$Sort</className>
<clazz>com.j2fe.feeds.activities.ListFiles$Sort</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="297" type="com.j2fe.feeds.activities.ListFiles$Sort">TIME</value>
</value>
</entry>
<entry>
<key id="298" type="java.lang.String">ZIPFilePatterns</key>
<value id="299" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="300">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="301">Comma seperated file patterns</description>
<persistent>false</persistent>
<value id="302" type="java.lang.String">P72GS_*.ZIP</value>
</value>
</entry>
</variables>
<version>4</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>

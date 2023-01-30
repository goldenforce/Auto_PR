<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.22">
<package-comment/>
<businessobject displayString="7 - ChangesToHandleFull&amp;Delta" type="com.j2fe.workflow.definition.Workflow">
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
<name id="8">empty</name>
<source id="9">
<activation>ASYNCHRONOUS</activation>
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
<stringValue id="18">filesystem/sftp/worldscope</stringValue>
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
<stringValue id="27">datefilepatterns</stringValue>
<type>VARIABLE</type>
</item>
<item id="28" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="29">pattern[1]</name>
<stringValue id="30">prevdatefilepatterns</stringValue>
<type>VARIABLE</type>
</item>
<item id="31" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="32">sort</name>
<stringValue id="33">SortOrder</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="34" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="35">sortAscending</name>
<stringValue id="36">SortAscending</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="37" type="java.util.HashSet">
<item id="38" type="com.j2fe.workflow.definition.Transition">
<name id="39">goto-next</name>
<source id="40">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="41">NOP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="42">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="43" type="java.util.HashSet">
<item id="44" type="com.j2fe.workflow.definition.Transition">
<name id="45">goto-next</name>
<source id="46">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="47">Bean Shell Script (Standard) #2</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="48">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="49" type="java.util.HashSet">
<item id="50" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="51">statements</name>
<stringValue id="52">import java.util.Date;&#13;
import java.text.DateFormat;&#13;
import java.text.SimpleDateFormat;&#13;
import java.lang.String;&#13;
&#13;
&#13;
private static final long MILLIS_IN_A_DAY = 1000 * 60 * 60 * 24;&#13;
DateFormat dateFormat = new SimpleDateFormat("yyyyMMdd");&#13;
Date today = new Date();&#13;
String fname = filepatterns + "_" + dateFormat.format(today)+".ZIP";&#13;
String fname1 = filepatterns + "_" + dateFormat.format(today.getTime() - MILLIS_IN_A_DAY)+".ZIP";&#13;
</stringValue>
<type>CONSTANT</type>
</item>
<item id="53" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="54">variables["filepatterns"]</name>
<stringValue id="55">FilePatterns</stringValue>
<type>VARIABLE</type>
</item>
<item id="56" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="57">variables["fname"]</name>
<stringValue id="58">datefilepatterns</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="59" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="60">variables["fname1"]</name>
<stringValue id="61">prevdatefilepatterns</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="62" type="java.util.HashSet">
<item id="63" type="com.j2fe.workflow.definition.Transition">
<name id="64">goto-next</name>
<source id="65">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="66">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="67">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="68" type="java.util.HashSet"/>
<targets id="69" type="java.util.HashSet">
<item idref="63" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="46"/>
</item>
</sources>
<targets id="70" type="java.util.HashSet">
<item idref="44" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="40"/>
</item>
</sources>
<targets id="71" type="java.util.HashSet">
<item idref="38" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="9"/>
</item>
</sources>
<targets id="72" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
<item id="73" type="com.j2fe.workflow.definition.Transition">
<name id="74">not-empty</name>
<source idref="9"/>
<target id="75">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="76">Automatically generated</description>
<directJoin>false</directJoin>
<name id="77">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="78">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="79" type="java.util.HashSet">
<item id="80" type="com.j2fe.workflow.definition.Transition">
<name id="81">goto-next</name>
<source id="82">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="83">NOP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="84">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="85" type="java.util.HashSet">
<item id="86" type="com.j2fe.workflow.definition.Transition">
<name id="87">error</name>
<source id="88">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="89">Open File</name>
<nodeHandler>com.j2fe.feeds.activities.ReadFile</nodeHandler>
<nodeHandlerClass id="90">com.j2fe.feeds.activities.ReadFile</nodeHandlerClass>
<parameters id="91" type="java.util.HashSet">
<item id="92" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="93">businessFeed</name>
<stringValue id="94">BusinessFeed</stringValue>
<type>VARIABLE</type>
</item>
<item id="95" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="96">businessFeed</name>
<stringValue id="97">BusinessFeed</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="98" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="99">exception</name>
<stringValue id="100">Exception</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="101" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="102">file</name>
<stringValue id="103">File</stringValue>
<type>VARIABLE</type>
</item>
<item id="104" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="105">fileConnection</name>
<stringValue id="106">FileConnection</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="107" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="108">grouping</name>
<stringValue id="109">grouping</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="110" type="java.util.HashSet">
<item id="111" type="com.j2fe.workflow.definition.Transition">
<name id="112">goto-next</name>
<source id="113">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="114">Bean Shell Script (Standard)</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="115">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="116" type="java.util.HashSet">
<item id="117" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="118">statements</name>
<stringValue id="119">String[] fileSplit=fullName.split("/");&#13;
String fileName=fileSplit[fileSplit.length-1];&#13;
&#13;
//String zipCmd="unzip "+fileName;&#13;
String zipCmd="./" +scriptName+ " " +fileName+ " " +fileName.substring(0,fileName.lastIndexOf(".ZIP"))+ ".txt" ;</stringValue>
<type>CONSTANT</type>
</item>
<item id="120" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="121">variables["fileName"]</name>
<stringValue id="122">fileName</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="123" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="124">variables["fullName"]</name>
<stringValue id="125">Filename</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="126" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="127">variables["scriptName"]</name>
<stringValue id="128">ShellScriptName</stringValue>
<type>VARIABLE</type>
</item>
<item id="129" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="130">variables["zipCmd"]</name>
<stringValue id="131">unzipCmd</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="132" type="java.util.HashSet">
<item id="133" type="com.j2fe.workflow.definition.Transition">
<name id="134">goto-next</name>
<source id="135">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="136">Automatically generated</description>
<directJoin>false</directJoin>
<name id="137">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="138">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="139" type="java.util.HashSet">
<item id="140" type="com.j2fe.workflow.definition.Transition">
<name id="141">true</name>
<source id="142">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="143">Is New File?</name>
<nodeHandler>com.j2fe.feeds.activities.CheckRestart</nodeHandler>
<nodeHandlerClass id="144">com.j2fe.feeds.activities.CheckRestart</nodeHandlerClass>
<parameters id="145" type="java.util.HashSet">
<item id="146" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="147">file</name>
<stringValue id="148">File</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="149" type="java.util.HashSet">
<item id="150" type="com.j2fe.workflow.definition.Transition">
<name id="151">loop</name>
<source id="152">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="153">For Loop </name>
<nodeHandler>com.j2fe.workflow.handler.impl.ForEach</nodeHandler>
<nodeHandlerClass id="154">com.j2fe.workflow.handler.impl.ForEach</nodeHandlerClass>
<parameters id="155" type="java.util.HashSet">
<item id="156" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="157">counter</name>
<stringValue id="158">Counter</stringValue>
<type>VARIABLE</type>
</item>
<item id="159" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="160">counter</name>
<stringValue id="161">Counter</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="162" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="163">input</name>
<stringValue id="164">FileList</stringValue>
<type>VARIABLE</type>
</item>
<item id="165" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="166">output</name>
<stringValue id="167">File</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="168" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="169">@java/io/File@.name</UITypeHint>
<input>false</input>
<name id="170">output.name</name>
<stringValue id="171">Filename</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="172" type="java.util.HashSet">
<item id="173" type="com.j2fe.workflow.definition.Transition">
<name id="174">ToSplit</name>
<source idref="75"/>
<target idref="152"/>
</item>
</sources>
<targets id="175" type="java.util.HashSet">
<item id="176" type="com.j2fe.workflow.definition.Transition">
<name id="177">end-loop</name>
<source idref="152"/>
<target idref="3"/>
</item>
<item idref="150" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="142"/>
</item>
</sources>
<targets id="178" type="java.util.HashSet">
<item id="179" type="com.j2fe.workflow.definition.Transition">
<name id="180">false</name>
<source idref="142"/>
<target id="181">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="182">ReDownloadfiles ?</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="183">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="184" type="java.util.HashSet">
<item id="185" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="186">caseItem</name>
<stringValue id="187">ReDownloadfiles</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="188" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="189">defaultItem</name>
<stringValue id="190">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="191" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="192">nullTransition</name>
<stringValue id="193">false</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="194" type="java.util.HashSet">
<item idref="179" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="195" type="java.util.HashSet">
<item id="196" type="com.j2fe.workflow.definition.Transition">
<name id="197">false</name>
<source idref="181"/>
<target idref="82"/>
</item>
<item id="198" type="com.j2fe.workflow.definition.Transition">
<name id="199">true</name>
<source idref="181"/>
<target idref="135"/>
</item>
</targets>
<type>XORSPLIT</type>
</target>
</item>
<item idref="140" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="135"/>
</item>
<item idref="198" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="200" type="java.util.HashSet">
<item idref="133" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="113"/>
</item>
</sources>
<targets id="201" type="java.util.HashSet">
<item idref="111" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="88"/>
</item>
</sources>
<targets id="202" type="java.util.HashSet">
<item idref="86" type="com.j2fe.workflow.definition.Transition"/>
<item id="203" type="com.j2fe.workflow.definition.Transition">
<name id="204">success</name>
<source idref="88"/>
<target id="205">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="206">Command Line </name>
<nodeHandler>com.j2fe.general.activities.CommandLine</nodeHandler>
<nodeHandlerClass id="207">com.j2fe.general.activities.CommandLine</nodeHandlerClass>
<parameters id="208" type="java.util.HashSet">
<item id="209" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="210">commandLine</name>
<stringValue id="211">unzipCmd</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="212" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="213">directory</name>
<stringValue id="214">DownloadDirectory</stringValue>
<type>VARIABLE</type>
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
<target idref="82"/>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="82"/>
</item>
<item idref="196" type="com.j2fe.workflow.definition.Transition"/>
<item idref="220" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="222" type="java.util.HashSet">
<item idref="80" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="75"/>
</item>
<item idref="73" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="223" type="java.util.HashSet">
<item idref="173" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="3"/>
</item>
<item idref="176" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="224" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="225">Custom/WorldScopeFeedProcessing</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="226">user1</lastChangeUser>
<lastUpdate id="227">2022-05-12T15:21:48.000+0530</lastUpdate>
<name id="228">P72_WF_DownloadWorldScopeFiles</name>
<optimize>true</optimize>
<parameter id="229" type="java.util.HashMap">
<entry>
<key id="230" type="java.lang.String">BusinessFeed</key>
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
<key id="233" type="java.lang.String">Directory</key>
<value id="234" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="235">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="236" type="java.lang.String">DownloadDirectory</key>
<value id="237" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="238">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="239">Directory where the file will be downloaded and store locally.&#13;
This should be same as tmpDir from assembly file for the sftp</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="240" type="java.lang.String">FilePatterns</key>
<value id="241" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="242">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="243">Comma seperated file patterns&#13;
Full FIle: WSCURRENT_F&#13;
Delta FIle: WSCURRENT_I</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="244" type="java.lang.String">ReDownloadfiles</key>
<value id="245" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="246">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="247" type="java.lang.String">ShellScriptName</key>
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
<key id="250" type="java.lang.String">SortAscending</key>
<value id="251" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="252">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="253" type="java.lang.String">SortOrder</key>
<value id="254" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="255">com.j2fe.feeds.activities.ListFiles$Sort</className>
<clazz>com.j2fe.feeds.activities.ListFiles$Sort</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="256" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="65"/>
<status>RELEASED</status>
<variables id="257" type="java.util.HashMap">
<entry>
<key id="258" type="java.lang.String">BusinessFeed</key>
<value id="259" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="260">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="261" type="java.lang.String">P72_Custom_PreProc_noHead</value>
</value>
</entry>
<entry>
<key id="262" type="java.lang.String">Counter</key>
<value id="263" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="264">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="265" type="java.lang.Integer">0</value>
</value>
</entry>
<entry>
<key id="266" type="java.lang.String">Directory</key>
<value id="267" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="268">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="269" type="java.lang.String">/Daily/PointInTime</value>
</value>
</entry>
<entry>
<key id="270" type="java.lang.String">DownloadDirectory</key>
<value id="271" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="272">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="273">Directory where the file will be downloaded and store locally.&#13;
This should be same as tmpDir from assembly file for the sftp</description>
<persistent>false</persistent>
<value id="274" type="java.lang.String">/devgs/InputFiles/WorldScope</value>
</value>
</entry>
<entry>
<key id="275" type="java.lang.String">FilePatterns</key>
<value id="276" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="277">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="278">Comma seperated file patterns&#13;
Full FIle: WSCURRENT_F&#13;
Delta FIle: WSCURRENT_I</description>
<persistent>false</persistent>
<value id="279" type="java.lang.String">WSCURRENT_I</value>
</value>
</entry>
<entry>
<key id="280" type="java.lang.String">ReDownloadfiles</key>
<value id="281" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="282">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value idref="21"/>
</value>
</entry>
<entry>
<key id="283" type="java.lang.String">ShellScriptName</key>
<value id="284" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="285">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="286" type="java.lang.String">zgrepfiles.sh</value>
</value>
</entry>
<entry>
<key id="287" type="java.lang.String">SortAscending</key>
<value id="288" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="289">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="290" type="java.lang.Boolean">true</value>
</value>
</entry>
<entry>
<key id="291" type="java.lang.String">SortOrder</key>
<value id="292" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="293">com.j2fe.feeds.activities.ListFiles$Sort</className>
<clazz>com.j2fe.feeds.activities.ListFiles$Sort</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="294" type="com.j2fe.feeds.activities.ListFiles$Sort">TIME</value>
</value>
</entry>
</variables>
<version>7</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>

<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.19">
<package-comment/>
<businessobject displayString="18 - Unzip&amp;Rename" type="com.j2fe.workflow.definition.Workflow">
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
<stringValue id="18">filesystem/sftp/barra</stringValue>
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
DateFormat dateFormat = new SimpleDateFormat("yyMMdd");&#13;
Date today = new Date();&#13;
String fname = filepatterns + "_" + dateFormat.format(today)+".zip";&#13;
String fname1 = filepatterns + "_" + dateFormat.format(today.getTime() - MILLIS_IN_A_DAY)+".zip";&#13;
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
<name id="87">false</name>
<source id="88">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="89">ReDownloadfiles ?</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="90">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="91" type="java.util.HashSet">
<item id="92" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="93">caseItem</name>
<stringValue id="94">ReDownloadfiles</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="95" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="96">defaultItem</name>
<stringValue id="97">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="98" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="99">nullTransition</name>
<stringValue id="100">false</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="101" type="java.util.HashSet">
<item id="102" type="com.j2fe.workflow.definition.Transition">
<name id="103">false</name>
<source id="104">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="105">Is New File?</name>
<nodeHandler>com.j2fe.feeds.activities.CheckRestart</nodeHandler>
<nodeHandlerClass id="106">com.j2fe.feeds.activities.CheckRestart</nodeHandlerClass>
<parameters id="107" type="java.util.HashSet">
<item id="108" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="109">file</name>
<stringValue id="110">File</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="111" type="java.util.HashSet">
<item id="112" type="com.j2fe.workflow.definition.Transition">
<name id="113">loop</name>
<source id="114">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="115">For Loop </name>
<nodeHandler>com.j2fe.workflow.handler.impl.ForEach</nodeHandler>
<nodeHandlerClass id="116">com.j2fe.workflow.handler.impl.ForEach</nodeHandlerClass>
<parameters id="117" type="java.util.HashSet">
<item id="118" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="119">counter</name>
<stringValue id="120">Counter</stringValue>
<type>VARIABLE</type>
</item>
<item id="121" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="122">counter</name>
<stringValue id="123">Counter</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="124" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="125">input</name>
<stringValue id="126">FileList</stringValue>
<type>VARIABLE</type>
</item>
<item id="127" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="128">output</name>
<stringValue id="129">File</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="130" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="131">@java/io/File@.name</UITypeHint>
<input>false</input>
<name id="132">output.name</name>
<stringValue id="133">Filename</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="134" type="java.util.HashSet">
<item id="135" type="com.j2fe.workflow.definition.Transition">
<name id="136">ToSplit</name>
<source idref="75"/>
<target idref="114"/>
</item>
</sources>
<targets id="137" type="java.util.HashSet">
<item id="138" type="com.j2fe.workflow.definition.Transition">
<name id="139">end-loop</name>
<source idref="114"/>
<target idref="3"/>
</item>
<item idref="112" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="104"/>
</item>
</sources>
<targets id="140" type="java.util.HashSet">
<item idref="102" type="com.j2fe.workflow.definition.Transition"/>
<item id="141" type="com.j2fe.workflow.definition.Transition">
<name id="142">true</name>
<source idref="104"/>
<target id="143">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="144">Automatically generated</description>
<directJoin>false</directJoin>
<name id="145">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="146">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="147" type="java.util.HashSet">
<item idref="141" type="com.j2fe.workflow.definition.Transition"/>
<item id="148" type="com.j2fe.workflow.definition.Transition">
<name id="149">true</name>
<source idref="88"/>
<target idref="143"/>
</item>
</sources>
<targets id="150" type="java.util.HashSet">
<item id="151" type="com.j2fe.workflow.definition.Transition">
<name id="152">goto-next</name>
<source idref="143"/>
<target id="153">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="154">Bean Shell Script (Standard)</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="155">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="156" type="java.util.HashSet">
<item id="157" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="158">statements</name>
<stringValue id="159">String[] fileSplit=fullName.split("/");&#13;
String fileName=fileSplit[fileSplit.length-1];&#13;
&#13;
String zipCmd="unzip -j "+fileName+" *Asset_ID*";</stringValue>
<type>CONSTANT</type>
</item>
<item id="160" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="161">variables["fileName"]</name>
<stringValue id="162">fileName</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="163" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="164">variables["fullName"]</name>
<stringValue id="165">Filename</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="166" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="167">variables["zipCmd"]</name>
<stringValue id="168">unzipCmd</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="169" type="java.util.HashSet">
<item idref="151" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="170" type="java.util.HashSet">
<item id="171" type="com.j2fe.workflow.definition.Transition">
<name id="172">goto-next</name>
<source idref="153"/>
<target id="173">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="174">Download File</name>
<nodeHandler>com.j2fe.general.activities.FileOperator</nodeHandler>
<nodeHandlerClass id="175">com.j2fe.general.activities.FileOperator</nodeHandlerClass>
<parameters id="176" type="java.util.HashSet">
<item id="177" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="178">operationToPerform</name>
<stringValue id="179">Copy</stringValue>
<type>CONSTANT</type>
</item>
<item id="180" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="181">sourceDirectory</name>
<stringValue id="182">Directory</stringValue>
<type>VARIABLE</type>
</item>
<item id="183" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="184">sourceFileName</name>
<stringValue id="185">fileName</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="186" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="187">sourceFileSystem</name>
<stringValue id="188">filesystem/sftp/barra</stringValue>
<type>REFERENCE</type>
</item>
<item id="189" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="190">targetDirectory</name>
<stringValue id="191">DownloadDIrectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="192" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="193">targetFileName</name>
<stringValue id="194">fileName</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="195" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="196">targetFileSystem</name>
<stringValue id="197">filesystem/local</stringValue>
<type>REFERENCE</type>
</item>
</parameters>
<sources id="198" type="java.util.HashSet">
<item idref="171" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="199" type="java.util.HashSet">
<item id="200" type="com.j2fe.workflow.definition.Transition">
<name id="201">goto-next</name>
<source idref="173"/>
<target id="202">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="203">Unzip file</name>
<nodeHandler>com.j2fe.general.activities.CommandLine</nodeHandler>
<nodeHandlerClass id="204">com.j2fe.general.activities.CommandLine</nodeHandlerClass>
<parameters id="205" type="java.util.HashSet">
<item id="206" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="207">commandLine</name>
<stringValue id="208">unzipCmd</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="209" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="210">directory</name>
<stringValue id="211">DownloadDIrectory</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="212" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="213">waitForEnd</name>
<stringValue id="214">true</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="215" type="java.util.HashSet">
<item idref="200" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="216" type="java.util.HashSet">
<item id="217" type="com.j2fe.workflow.definition.Transition">
<name id="218">goto-next</name>
<source idref="202"/>
<target id="219">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="220">Rename &amp; Move</name>
<nodeHandler>com.j2fe.general.activities.CommandLine</nodeHandler>
<nodeHandlerClass id="221">com.j2fe.general.activities.CommandLine</nodeHandlerClass>
<parameters id="222" type="java.util.HashSet">
<item id="223" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="224">commandLine</name>
<stringValue id="225">./barra.sh</stringValue>
<type>CONSTANT</type>
</item>
<item id="226" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="227">directory</name>
<stringValue id="228">DownloadDIrectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="229" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="230">waitForEnd</name>
<objectValue id="231" type="java.lang.Boolean">true</objectValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="232" type="java.util.HashSet">
<item idref="217" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="233" type="java.util.HashSet">
<item id="234" type="com.j2fe.workflow.definition.Transition">
<name id="235">goto-next</name>
<source idref="219"/>
<target idref="82"/>
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
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="88"/>
</item>
</sources>
<targets id="236" type="java.util.HashSet">
<item idref="86" type="com.j2fe.workflow.definition.Transition"/>
<item idref="148" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="82"/>
</item>
<item idref="234" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="237" type="java.util.HashSet">
<item idref="80" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="75"/>
</item>
<item idref="73" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="238" type="java.util.HashSet">
<item idref="135" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="3"/>
</item>
<item idref="138" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="239" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="240">Custom/BarraFeedProcessing</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="241">user1</lastChangeUser>
<lastUpdate id="242">2022-03-15T17:53:22.000+0530</lastUpdate>
<name id="243">P72_WF_DownloadBarraFiles</name>
<optimize>true</optimize>
<parameter id="244" type="java.util.HashMap">
<entry>
<key id="245" type="java.lang.String">Directory</key>
<value id="246" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="247">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="248" type="java.lang.String">DownloadDIrectory</key>
<value id="249" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="250">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="251" type="java.lang.String">FilePatterns</key>
<value id="252" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="253">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="254">Comma seperated file patterns</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="255" type="java.lang.String">ReDownloadfiles</key>
<value id="256" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="257">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="258" type="java.lang.String">SortAscending</key>
<value id="259" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="260">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="261" type="java.lang.String">SortOrder</key>
<value id="262" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="263">com.j2fe.feeds.activities.ListFiles$Sort</className>
<clazz>com.j2fe.feeds.activities.ListFiles$Sort</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="264" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="65"/>
<status>RELEASED</status>
<variables id="265" type="java.util.HashMap">
<entry>
<key id="266" type="java.lang.String">Counter</key>
<value id="267" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="268">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="269" type="java.lang.Integer">0</value>
</value>
</entry>
<entry>
<key id="270" type="java.lang.String">Directory</key>
<value id="271" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="272">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="273" type="java.lang.String">/bime</value>
</value>
</entry>
<entry>
<key id="274" type="java.lang.String">DownloadDIrectory</key>
<value id="275" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="276">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="277" type="java.lang.String">/devgs/InputFiles/Barra/zipdir</value>
</value>
</entry>
<entry>
<key id="278" type="java.lang.String">FilePatterns</key>
<value id="279" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="280">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="281">Comma seperated file patterns</description>
<persistent>false</persistent>
<value id="282" type="java.lang.String">*_ID</value>
</value>
</entry>
<entry>
<key id="283" type="java.lang.String">ReDownloadfiles</key>
<value id="284" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="285">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value idref="21"/>
</value>
</entry>
<entry>
<key id="286" type="java.lang.String">SortAscending</key>
<value id="287" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="288">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value idref="231"/>
</value>
</entry>
<entry>
<key id="289" type="java.lang.String">SortOrder</key>
<value id="290" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="291">com.j2fe.feeds.activities.ListFiles$Sort</className>
<clazz>com.j2fe.feeds.activities.ListFiles$Sort</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="292" type="com.j2fe.feeds.activities.ListFiles$Sort">TIME</value>
</value>
</entry>
</variables>
<version>18</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>

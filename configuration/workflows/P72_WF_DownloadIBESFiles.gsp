<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.22">
<package-comment/>
<businessobject displayString="4 - 23052022-Persists" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">23052022-Persists</comment>
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
<stringValue id="18">filesystem/sftp/ibes</stringValue>
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
<stringValue id="27">datefilepatterns1</stringValue>
<type>VARIABLE</type>
</item>
<item id="28" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="29">pattern[1]</name>
<stringValue id="30">datefilepatterns2</stringValue>
<type>VARIABLE</type>
</item>
<item id="31" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="32">pattern[2]</name>
<stringValue id="33">prevdatefilepatterns1</stringValue>
<type>VARIABLE</type>
</item>
<item id="34" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="35">pattern[3]</name>
<stringValue id="36">prevdatefilepatterns2</stringValue>
<type>VARIABLE</type>
</item>
<item id="37" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="38">sort</name>
<stringValue id="39">SortOrder</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="40" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="41">sortAscending</name>
<stringValue id="42">SortAscending</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<persistentVariables id="43" type="java.util.HashSet">
<item id="44" type="java.lang.String">FileList
1000</item>
</persistentVariables>
<sources id="45" type="java.util.HashSet">
<item id="46" type="com.j2fe.workflow.definition.Transition">
<name id="47">goto-next</name>
<source id="48">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="49">NOP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="50">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="51" type="java.util.HashSet">
<item id="52" type="com.j2fe.workflow.definition.Transition">
<name id="53">goto-next</name>
<source id="54">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="55">Bean Shell Script (Standard) #2</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="56">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="57" type="java.util.HashSet">
<item id="58" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="59">statements</name>
<stringValue id="60">import java.util.Date;&#13;
import java.text.DateFormat;&#13;
import java.text.SimpleDateFormat;&#13;
import java.lang.String;&#13;
&#13;
&#13;
private static final long MILLIS_IN_A_DAY = 1000 * 60 * 60 * 24;&#13;
DateFormat dateFormat = new SimpleDateFormat("MMddyy");&#13;
Date today = new Date();&#13;
String fname1 = "kp*_" + dateFormat.format(today)+"*.zip";&#13;
String fname2 =  "qf*_"+ dateFormat.format(today)+"*.zip";&#13;
String fname3 = "kp*_" + dateFormat.format(today.getTime() - MILLIS_IN_A_DAY)+"*.zip";&#13;
String fname4 =  "qf*_"+ dateFormat.format(today.getTime() - MILLIS_IN_A_DAY)+"*.zip";&#13;
&#13;
//String nextfname = filepatterns + dateFormat.format(today.getTime() + MILLIS_IN_A_DAY)+"*.zip";&#13;
</stringValue>
<type>CONSTANT</type>
</item>
<item id="61" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="62">variables["fname1"]</name>
<stringValue id="63">datefilepatterns1</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="64" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="65">variables["fname2"]</name>
<stringValue id="66">datefilepatterns2</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="67" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="68">variables["fname3"]</name>
<stringValue id="69">prevdatefilepatterns1</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="70" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="71">variables["fname4"]</name>
<stringValue id="72">prevdatefilepatterns2</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="73" type="java.util.HashSet">
<item id="74" type="com.j2fe.workflow.definition.Transition">
<name id="75">goto-next</name>
<source id="76">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="77">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="78">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="79" type="java.util.HashSet"/>
<targets id="80" type="java.util.HashSet">
<item idref="74" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="54"/>
</item>
</sources>
<targets id="81" type="java.util.HashSet">
<item idref="52" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="48"/>
</item>
</sources>
<targets id="82" type="java.util.HashSet">
<item idref="46" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="9"/>
</item>
</sources>
<targets id="83" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
<item id="84" type="com.j2fe.workflow.definition.Transition">
<name id="85">not-empty</name>
<source idref="9"/>
<target id="86">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="87">Automatically generated</description>
<directJoin>false</directJoin>
<name id="88">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="89">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="90" type="java.util.HashSet">
<item id="91" type="com.j2fe.workflow.definition.Transition">
<name id="92">goto-next</name>
<source id="93">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="94">NOP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="95">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="96" type="java.util.HashSet">
<item id="97" type="com.j2fe.workflow.definition.Transition">
<name id="98">error</name>
<source id="99">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="100">Open File</name>
<nodeHandler>com.j2fe.feeds.activities.ReadFile</nodeHandler>
<nodeHandlerClass id="101">com.j2fe.feeds.activities.ReadFile</nodeHandlerClass>
<parameters id="102" type="java.util.HashSet">
<item id="103" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="104">businessFeed</name>
<stringValue id="105">BusinessFeed</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="106" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="107">businessFeed</name>
<stringValue id="108">BusinessFeed</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="109" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="110">exception</name>
<stringValue id="111">Exception</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="112" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="113">file</name>
<stringValue id="114">File</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="115" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="116">fileConnection</name>
<stringValue id="117">FileConnection</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="118" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="119">grouping</name>
<stringValue id="120">grouping</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="121" type="java.util.HashSet">
<item id="122" type="com.j2fe.workflow.definition.Transition">
<name id="123">goto-next</name>
<source id="124">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="125">Bean Shell Script (Standard)</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="126">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="127" type="java.util.HashSet">
<item id="128" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="129">statements</name>
<stringValue id="130">import java.lang.String;&#13;
&#13;
String[] fileSplit=fullName.split("/");&#13;
String fileName=fileSplit[fileSplit.length-1];&#13;
&#13;
String zipCmd="./ibesunzip.sh "+fileName;&#13;
&#13;
String moveZipCmd = "mv "+fileName+ " ./done/"+fileName;&#13;
&#13;
&#13;
&#13;
</stringValue>
<type>CONSTANT</type>
</item>
<item id="131" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="132">variables["fileName"]</name>
<stringValue id="133">fileName</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="134" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="135">variables["fullName"]</name>
<stringValue id="136">Filename</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="137" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="138">variables["moveZipCmd"]</name>
<stringValue id="139">moveZipCmd </stringValue>
<type>VARIABLE</type>
</item>
<item id="140" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="141">variables["zipCmd"]</name>
<stringValue id="142">unzipCmd</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="143" type="java.util.HashSet">
<item id="144" type="com.j2fe.workflow.definition.Transition">
<name id="145">goto-next</name>
<source id="146">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="147">Automatically generated</description>
<directJoin>false</directJoin>
<name id="148">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="149">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="150" type="java.util.HashSet">
<item id="151" type="com.j2fe.workflow.definition.Transition">
<name id="152">true</name>
<source id="153">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="154">Is New File?</name>
<nodeHandler>com.j2fe.feeds.activities.CheckRestart</nodeHandler>
<nodeHandlerClass id="155">com.j2fe.feeds.activities.CheckRestart</nodeHandlerClass>
<parameters id="156" type="java.util.HashSet">
<item id="157" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="158">file</name>
<stringValue id="159">File</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="160" type="java.util.HashSet">
<item id="161" type="com.j2fe.workflow.definition.Transition">
<name id="162">loop</name>
<source id="163">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="164">For Loop </name>
<nodeHandler>com.j2fe.workflow.handler.impl.ForEach</nodeHandler>
<nodeHandlerClass id="165">com.j2fe.workflow.handler.impl.ForEach</nodeHandlerClass>
<parameters id="166" type="java.util.HashSet">
<item id="167" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="168">counter</name>
<stringValue id="169">Counter</stringValue>
<type>VARIABLE</type>
</item>
<item id="170" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="171">counter</name>
<stringValue id="172">Counter</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="173" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="174">input</name>
<stringValue id="175">FileList</stringValue>
<type>VARIABLE</type>
</item>
<item id="176" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="177">output</name>
<stringValue id="178">File</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="179" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="180">@java/io/File@.name</UITypeHint>
<input>false</input>
<name id="181">output.name</name>
<stringValue id="182">Filename</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="183" type="java.util.HashSet">
<item id="184" type="com.j2fe.workflow.definition.Transition">
<name id="185">ToSplit</name>
<source idref="86"/>
<target idref="163"/>
</item>
</sources>
<targets id="186" type="java.util.HashSet">
<item id="187" type="com.j2fe.workflow.definition.Transition">
<name id="188">end-loop</name>
<source idref="163"/>
<target idref="3"/>
</item>
<item idref="161" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="153"/>
</item>
</sources>
<targets id="189" type="java.util.HashSet">
<item id="190" type="com.j2fe.workflow.definition.Transition">
<name id="191">false</name>
<source idref="153"/>
<target id="192">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="193">ReDownloadfiles ?</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="194">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="195" type="java.util.HashSet">
<item id="196" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="197">caseItem</name>
<stringValue id="198">ReDownloadfiles</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="199" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="200">defaultItem</name>
<stringValue id="201">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="202" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="203">nullTransition</name>
<stringValue id="204">false</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="205" type="java.util.HashSet">
<item idref="190" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="206" type="java.util.HashSet">
<item id="207" type="com.j2fe.workflow.definition.Transition">
<name id="208">false</name>
<source idref="192"/>
<target idref="93"/>
</item>
<item id="209" type="com.j2fe.workflow.definition.Transition">
<name id="210">true</name>
<source idref="192"/>
<target idref="146"/>
</item>
</targets>
<type>XORSPLIT</type>
</target>
</item>
<item idref="151" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="146"/>
</item>
<item idref="209" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="211" type="java.util.HashSet">
<item idref="144" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="124"/>
</item>
</sources>
<targets id="212" type="java.util.HashSet">
<item idref="122" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="99"/>
</item>
</sources>
<targets id="213" type="java.util.HashSet">
<item idref="97" type="com.j2fe.workflow.definition.Transition"/>
<item id="214" type="com.j2fe.workflow.definition.Transition">
<name id="215">success</name>
<source idref="99"/>
<target id="216">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="217">Unzip and Rename file</name>
<nodeHandler>com.j2fe.general.activities.CommandLine</nodeHandler>
<nodeHandlerClass id="218">com.j2fe.general.activities.CommandLine</nodeHandlerClass>
<parameters id="219" type="java.util.HashSet">
<item id="220" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="221">commandLine</name>
<stringValue id="222">unzipCmd</stringValue>
<type>VARIABLE</type>
</item>
<item id="223" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="224">directory</name>
<stringValue id="225">DownloadDirectory</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="226" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="227">waitForEnd</name>
<stringValue id="228">true</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="229" type="java.util.HashSet">
<item idref="214" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="230" type="java.util.HashSet">
<item id="231" type="com.j2fe.workflow.definition.Transition">
<name id="232">goto-next</name>
<source idref="216"/>
<target id="233">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="234">Move ZIP file</name>
<nodeHandler>com.j2fe.general.activities.CommandLine</nodeHandler>
<nodeHandlerClass id="235">com.j2fe.general.activities.CommandLine</nodeHandlerClass>
<parameters id="236" type="java.util.HashSet">
<item id="237" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="238">commandLine</name>
<stringValue id="239">moveZipCmd </stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="240" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="241">directory</name>
<stringValue id="242">DownloadDirectory</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="243" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="244">waitForEnd</name>
<stringValue id="245">true</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="246" type="java.util.HashSet">
<item idref="231" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="247" type="java.util.HashSet">
<item id="248" type="com.j2fe.workflow.definition.Transition">
<name id="249">goto-next</name>
<source idref="233"/>
<target idref="93"/>
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
<target idref="93"/>
</item>
<item idref="207" type="com.j2fe.workflow.definition.Transition"/>
<item idref="248" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="250" type="java.util.HashSet">
<item idref="91" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="86"/>
</item>
<item idref="84" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="251" type="java.util.HashSet">
<item idref="184" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="3"/>
</item>
<item idref="187" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="252" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="253">Custom/IBESFeedProcesessing</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="254">user1</lastChangeUser>
<lastUpdate id="255">2022-05-23T17:58:06.000+0530</lastUpdate>
<name id="256">P72_WF_DownloadIBESFiles</name>
<optimize>true</optimize>
<parameter id="257" type="java.util.HashMap">
<entry>
<key id="258" type="java.lang.String">BusinessFeed</key>
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
<key id="261" type="java.lang.String">Directory</key>
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
<key id="264" type="java.lang.String">DownloadDirectory</key>
<value id="265" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="266">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="267" type="java.lang.String">ReDownloadfiles</key>
<value id="268" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="269">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="270" type="java.lang.String">SortAscending</key>
<value id="271" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="272">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="273" type="java.lang.String">SortOrder</key>
<value id="274" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="275">com.j2fe.feeds.activities.ListFiles$Sort</className>
<clazz>com.j2fe.feeds.activities.ListFiles$Sort</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="276" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="76"/>
<status>RELEASED</status>
<variables id="277" type="java.util.HashMap">
<entry>
<key id="278" type="java.lang.String">BusinessFeed</key>
<value id="279" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="280">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="281" type="java.lang.String">IBES</value>
</value>
</entry>
<entry>
<key id="282" type="java.lang.String">Counter</key>
<value id="283" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="284">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="285" type="java.lang.Integer">0</value>
</value>
</entry>
<entry>
<key id="286" type="java.lang.String">Directory</key>
<value id="287" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="288">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="289" type="java.lang.String">/QFS</value>
</value>
</entry>
<entry>
<key id="290" type="java.lang.String">DownloadDirectory</key>
<value id="291" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="292">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="293" type="java.lang.String">/devgs/InputFiles/IBES</value>
</value>
</entry>
<entry>
<key id="294" type="java.lang.String">ReDownloadfiles</key>
<value id="295" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="296">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value idref="21"/>
</value>
</entry>
<entry>
<key id="297" type="java.lang.String">SortAscending</key>
<value id="298" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="299">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="300" type="java.lang.Boolean">true</value>
</value>
</entry>
<entry>
<key id="301" type="java.lang.String">SortOrder</key>
<value id="302" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="303">com.j2fe.feeds.activities.ListFiles$Sort</className>
<clazz>com.j2fe.feeds.activities.ListFiles$Sort</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="304" type="com.j2fe.feeds.activities.ListFiles$Sort">TIME</value>
</value>
</entry>
</variables>
<version>4</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>

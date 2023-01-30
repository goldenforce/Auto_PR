<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.15">
<package-comment/>
<businessobject displayString="10 - DatePatternChange" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">DatePatternChange</comment>
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
<stringValue id="18">filesystem/sftp/compustat</stringValue>
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
<stringValue id="30">datefilepatterns1</stringValue>
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
String fname = filepatterns + dateFormat.format(today)+"*.zip";&#13;
String fname1 =  filepatterns + dateFormat.format(today.getTime() - MILLIS_IN_A_DAY) +"*.zip";&#13;
if (filepatterns.contains("SEDOL"))&#13;
{&#13;
	fname1 =  filepatterns + dateFormat.format(today.getTime() + MILLIS_IN_A_DAY) +"*.zip";&#13;
}&#13;
//String fname = filepatterns + dateFormat.format(today.getTime() + MILLIS_IN_A_DAY)+"*.zip";&#13;
//String nextfname = filepatterns + dateFormat.format(today.getTime() + MILLIS_IN_A_DAY)+"*.zip";&#13;
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
<stringValue id="61">datefilepatterns1</stringValue>
<type>VARIABLE</type>
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
<variablePart idref="2"/>
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
<variablePart idref="2"/>
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
<stringValue id="119">&#13;
import java.util.Date;&#13;
import java.text.DateFormat;&#13;
import java.text.SimpleDateFormat;&#13;
import java.lang.String;&#13;
&#13;
&#13;
DateFormat dateFormat = new SimpleDateFormat("yyyyMMddhhmmssSSS");&#13;
Date today = new Date();&#13;
&#13;
String[] fileSplit=fullName.split("/");&#13;
String fileName=fileSplit[fileSplit.length-1];&#13;
&#13;
String zipCmd="unzip "+fileName;&#13;
String moveZipCmd = "mv "+fileName+ " ./done/"+fileName;&#13;
String renameCmd = "";&#13;
&#13;
if (fileName.contains("SEDOLGvkey"))&#13;
{&#13;
	renameCmd = "mv  SEDOLGvkey.txt SEDOLGvkey_" + dateFormat.format(today)+".txt";&#13;
	zipCmd="unzip -j "+fileName+ " 'SEDOLGvkey.txt'" ;&#13;
}&#13;
else &#13;
{&#13;
	renameCmd = "mv  t_securityv2.txt t_securityv2_" + dateFormat.format(today)+".txt";&#13;
	zipCmd="unzip -j "+fileName+ " 't_securityv2.txt'" ;&#13;
}&#13;
&#13;
</stringValue>
<type>CONSTANT</type>
</item>
<item id="120" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="121">variables["counter"]</name>
<stringValue id="122">Counter</stringValue>
<type>VARIABLE</type>
</item>
<item id="123" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="124">variables["fileName"]</name>
<stringValue id="125">fileName</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="126" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="127">variables["fullName"]</name>
<stringValue id="128">Filename</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="129" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="130">variables["moveZipCmd"]</name>
<stringValue id="131">moveZipCmd </stringValue>
<type>VARIABLE</type>
</item>
<item id="132" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="133">variables["renameCmd"]</name>
<stringValue id="134">renameCmd</stringValue>
<type>VARIABLE</type>
</item>
<item id="135" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="136">variables["zipCmd"]</name>
<stringValue id="137">unzipCmd</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="138" type="java.util.HashSet">
<item id="139" type="com.j2fe.workflow.definition.Transition">
<name id="140">goto-next</name>
<source id="141">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="142">Automatically generated</description>
<directJoin>false</directJoin>
<name id="143">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="144">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="145" type="java.util.HashSet">
<item id="146" type="com.j2fe.workflow.definition.Transition">
<name id="147">true</name>
<source id="148">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="149">Is New File?</name>
<nodeHandler>com.j2fe.feeds.activities.CheckRestart</nodeHandler>
<nodeHandlerClass id="150">com.j2fe.feeds.activities.CheckRestart</nodeHandlerClass>
<parameters id="151" type="java.util.HashSet">
<item id="152" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="153">file</name>
<stringValue id="154">File</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="155" type="java.util.HashSet">
<item id="156" type="com.j2fe.workflow.definition.Transition">
<name id="157">loop</name>
<source id="158">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="159">For Loop </name>
<nodeHandler>com.j2fe.workflow.handler.impl.ForEach</nodeHandler>
<nodeHandlerClass id="160">com.j2fe.workflow.handler.impl.ForEach</nodeHandlerClass>
<parameters id="161" type="java.util.HashSet">
<item id="162" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="163">counter</name>
<stringValue id="164">Counter</stringValue>
<type>VARIABLE</type>
</item>
<item id="165" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="166">counter</name>
<stringValue id="167">Counter</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="168" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="169">input</name>
<stringValue id="170">FileList</stringValue>
<type>VARIABLE</type>
</item>
<item id="171" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="172">output</name>
<stringValue id="173">File</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="174" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="175">@java/io/File@.name</UITypeHint>
<input>false</input>
<name id="176">output.name</name>
<stringValue id="177">Filename</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="178" type="java.util.HashSet">
<item id="179" type="com.j2fe.workflow.definition.Transition">
<name id="180">ToSplit</name>
<source idref="75"/>
<target idref="158"/>
</item>
</sources>
<targets id="181" type="java.util.HashSet">
<item id="182" type="com.j2fe.workflow.definition.Transition">
<name id="183">end-loop</name>
<source idref="158"/>
<target idref="3"/>
</item>
<item idref="156" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="148"/>
</item>
</sources>
<targets id="184" type="java.util.HashSet">
<item id="185" type="com.j2fe.workflow.definition.Transition">
<name id="186">false</name>
<source idref="148"/>
<target id="187">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="188">ReDownloadfiles ?</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="189">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="190" type="java.util.HashSet">
<item id="191" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="192">caseItem</name>
<stringValue id="193">ReDownloadfiles</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="194" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="195">defaultItem</name>
<stringValue id="196">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="197" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="198">nullTransition</name>
<stringValue id="199">false</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="200" type="java.util.HashSet">
<item idref="185" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="201" type="java.util.HashSet">
<item id="202" type="com.j2fe.workflow.definition.Transition">
<name id="203">false</name>
<source idref="187"/>
<target idref="82"/>
</item>
<item id="204" type="com.j2fe.workflow.definition.Transition">
<name id="205">true</name>
<source idref="187"/>
<target idref="141"/>
</item>
</targets>
<type>XORSPLIT</type>
</target>
</item>
<item idref="146" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="141"/>
</item>
<item idref="204" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="206" type="java.util.HashSet">
<item idref="139" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="113"/>
</item>
</sources>
<targets id="207" type="java.util.HashSet">
<item idref="111" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="88"/>
</item>
</sources>
<targets id="208" type="java.util.HashSet">
<item idref="86" type="com.j2fe.workflow.definition.Transition"/>
<item id="209" type="com.j2fe.workflow.definition.Transition">
<name id="210">success</name>
<source idref="88"/>
<target id="211">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="212">Unzip file</name>
<nodeHandler>com.j2fe.general.activities.CommandLine</nodeHandler>
<nodeHandlerClass id="213">com.j2fe.general.activities.CommandLine</nodeHandlerClass>
<parameters id="214" type="java.util.HashSet">
<item id="215" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="216">commandLine</name>
<stringValue id="217">unzipCmd</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="218" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="219">directory</name>
<stringValue id="220">DownloadDirectory</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="221" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="222">waitForEnd</name>
<stringValue id="223">true</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="224" type="java.util.HashSet">
<item idref="209" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="225" type="java.util.HashSet">
<item id="226" type="com.j2fe.workflow.definition.Transition">
<name id="227">goto-next</name>
<source idref="211"/>
<target id="228">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="229">Rename FIle</name>
<nodeHandler>com.j2fe.general.activities.CommandLine</nodeHandler>
<nodeHandlerClass id="230">com.j2fe.general.activities.CommandLine</nodeHandlerClass>
<parameters id="231" type="java.util.HashSet">
<item id="232" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="233">commandLine</name>
<stringValue id="234">renameCmd</stringValue>
<type>VARIABLE</type>
</item>
<item id="235" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="236">directory</name>
<stringValue id="237">DownloadDirectory</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="238" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="239">waitForEnd</name>
<stringValue id="240">true</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="241" type="java.util.HashSet">
<item idref="226" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="242" type="java.util.HashSet">
<item id="243" type="com.j2fe.workflow.definition.Transition">
<name id="244">goto-next</name>
<source idref="228"/>
<target id="245">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="246">Move ZIP file</name>
<nodeHandler>com.j2fe.general.activities.CommandLine</nodeHandler>
<nodeHandlerClass id="247">com.j2fe.general.activities.CommandLine</nodeHandlerClass>
<parameters id="248" type="java.util.HashSet">
<item id="249" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="250">commandLine</name>
<stringValue id="251">moveZipCmd </stringValue>
<type>VARIABLE</type>
</item>
<item id="252" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="253">directory</name>
<stringValue id="254">DownloadDirectory</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="255" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="256">waitForEnd</name>
<stringValue id="257">true</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="258" type="java.util.HashSet">
<item idref="243" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="259" type="java.util.HashSet">
<item id="260" type="com.j2fe.workflow.definition.Transition">
<name id="261">goto-next</name>
<source idref="245"/>
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
<type>XORSPLIT</type>
</source>
<target idref="82"/>
</item>
<item idref="202" type="com.j2fe.workflow.definition.Transition"/>
<item idref="260" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="262" type="java.util.HashSet">
<item idref="80" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="75"/>
</item>
<item idref="73" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="263" type="java.util.HashSet">
<item idref="179" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="3"/>
</item>
<item idref="182" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="264" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="265">Custom/CompuStatFeedProcessing</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="266">user1</lastChangeUser>
<lastUpdate id="267">2021-12-23T20:11:47.000+0530</lastUpdate>
<name id="268">P72_WF_DownloadCompuStatFiles</name>
<optimize>true</optimize>
<parameter id="269" type="java.util.HashMap">
<entry>
<key id="270" type="java.lang.String">BusinessFeed</key>
<value id="271" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="272">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="273" type="java.lang.String">Directory</key>
<value id="274" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="275">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="276" type="java.lang.String">DownloadDirectory</key>
<value id="277" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="278">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="279" type="java.lang.String">FilePatterns</key>
<value id="280" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="281">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="282">Comma seperated file patterns</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="283" type="java.lang.String">ReDownloadfiles</key>
<value id="284" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="285">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="286" type="java.lang.String">SortAscending</key>
<value id="287" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="288">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="289" type="java.lang.String">SortOrder</key>
<value id="290" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="291">com.j2fe.feeds.activities.ListFiles$Sort</className>
<clazz>com.j2fe.feeds.activities.ListFiles$Sort</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="292" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="65"/>
<status>RELEASED</status>
<variables id="293" type="java.util.HashMap">
<entry>
<key id="294" type="java.lang.String">BusinessFeed</key>
<value id="295" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="296">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="297" type="java.lang.String">Compustat_Gvkey</value>
</value>
</entry>
<entry>
<key id="298" type="java.lang.String">Counter</key>
<value id="299" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="300">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="301" type="java.lang.Integer">0</value>
</value>
</entry>
<entry>
<key id="302" type="java.lang.String">Directory</key>
<value id="303" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="304">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="305" type="java.lang.String">/Products/SEDOLGvkeySpan</value>
</value>
</entry>
<entry>
<key id="306" type="java.lang.String">DownloadDirectory</key>
<value id="307" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="308">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="309" type="java.lang.String">/devgs/InputFiles/CompuStat</value>
</value>
</entry>
<entry>
<key id="310" type="java.lang.String">FilePatterns</key>
<value id="311" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="312">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="313">Comma seperated file patterns</description>
<persistent>false</persistent>
<value id="314" type="java.lang.String">SEDOLGvkeySpanChange</value>
</value>
</entry>
<entry>
<key id="315" type="java.lang.String">ReDownloadfiles</key>
<value id="316" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="317">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value idref="21"/>
</value>
</entry>
<entry>
<key id="318" type="java.lang.String">SortAscending</key>
<value id="319" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="320">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="321" type="java.lang.Boolean">true</value>
</value>
</entry>
<entry>
<key id="322" type="java.lang.String">SortOrder</key>
<value id="323" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="324">com.j2fe.feeds.activities.ListFiles$Sort</className>
<clazz>com.j2fe.feeds.activities.ListFiles$Sort</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="325" type="com.j2fe.feeds.activities.ListFiles$Sort">TIME</value>
</value>
</entry>
</variables>
<version>10</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>

<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.22">
<package-comment/>
<businessobject displayString="25 - 03062022-CreateDir" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">03062022-CreateDir</comment>
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
<name id="10">Move Diff File</name>
<nodeHandler>com.j2fe.general.activities.CommandLine</nodeHandler>
<nodeHandlerClass id="11">com.j2fe.general.activities.CommandLine</nodeHandlerClass>
<parameters id="12" type="java.util.HashSet">
<item id="13" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="14">commandLine</name>
<stringValue id="15">moveDiffCmd</stringValue>
<type>VARIABLE</type>
</item>
<item id="16" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="17">directory</name>
<stringValue id="18">DownloadDirectory</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="19" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="20">waitForEnd</name>
<objectValue id="21" type="java.lang.Boolean">true</objectValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="22" type="java.util.HashSet">
<item id="23" type="com.j2fe.workflow.definition.Transition">
<name id="24">end-loop</name>
<source id="25">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="26">For Loop </name>
<nodeHandler>com.j2fe.workflow.handler.impl.ForEach</nodeHandler>
<nodeHandlerClass id="27">com.j2fe.workflow.handler.impl.ForEach</nodeHandlerClass>
<parameters id="28" type="java.util.HashSet">
<item id="29" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="30">counter</name>
<stringValue id="31">Counter</stringValue>
<type>VARIABLE</type>
</item>
<item id="32" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="33">counter</name>
<stringValue id="34">Counter</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="35" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="36">incrementValue</name>
<stringValue id="37">BulkSize</stringValue>
<type>VARIABLE</type>
</item>
<item id="38" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="39">input</name>
<stringValue id="40">datefilepatterns</stringValue>
<type>VARIABLE</type>
</item>
<item id="41" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="42">output</name>
<stringValue id="43">BulkedItems</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="44" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="45">outputObjects</name>
<stringValue id="46">IncrementedObjects</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<persistentVariables id="47" type="java.util.HashSet">
<item id="48" type="java.lang.String">IncrementedObjects
1000</item>
</persistentVariables>
<sources id="49" type="java.util.HashSet">
<item id="50" type="com.j2fe.workflow.definition.Transition">
<name id="51">ToSplit</name>
<source id="52">
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
<name id="60">NOP </name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="61">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="62" type="java.util.HashSet">
<item id="63" type="com.j2fe.workflow.definition.Transition">
<name id="64">goto-next</name>
<source id="65">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>true</directJoin>
<name id="66">Synchronize </name>
<nodeHandler>com.j2fe.workflow.handler.impl.StandardAndJoinHandler</nodeHandler>
<nodeHandlerClass id="67">com.j2fe.workflow.handler.impl.StandardAndJoinHandler</nodeHandlerClass>
<sources id="68" type="java.util.HashSet">
<item id="69" type="com.j2fe.workflow.definition.Transition">
<name id="70">goto-next</name>
<source id="71">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="72">File Operations</name>
<nodeHandler>com.j2fe.general.activities.FileOperator</nodeHandler>
<nodeHandlerClass id="73">com.j2fe.general.activities.FileOperator</nodeHandlerClass>
<parameters id="74" type="java.util.HashSet">
<item id="75" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="76">copyDirect</name>
<stringValue id="77">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="78" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="79">operationToPerform</name>
<stringValue id="80">Copy</stringValue>
<type>CONSTANT</type>
</item>
<item id="81" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="82">sourceDirectory</name>
<stringValue id="83">/</stringValue>
<type>CONSTANT</type>
</item>
<item id="84" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="85">sourceFileName</name>
<stringValue id="86">Output</stringValue>
<type>VARIABLE</type>
</item>
<item id="87" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="88">sourceFileSystem</name>
<stringValue id="89">filesystem/sftp/capco</stringValue>
<type>REFERENCE</type>
</item>
<item id="90" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="91">targetDirectory</name>
<stringValue id="92">DateDownloadDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="93" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="94">targetFileSystem</name>
<stringValue id="95">filesystem/local</stringValue>
<type>REFERENCE</type>
</item>
</parameters>
<sources id="96" type="java.util.HashSet">
<item id="97" type="com.j2fe.workflow.definition.Transition">
<name id="98">goto-next</name>
<source id="99">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>true</directJoin>
<name id="100">For Each Split </name>
<nodeHandler>com.j2fe.workflow.handler.impl.GenericSplit</nodeHandler>
<nodeHandlerClass id="101">com.j2fe.workflow.handler.impl.GenericSplit</nodeHandlerClass>
<parameters id="102" type="java.util.HashSet">
<item id="103" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="104">input</name>
<stringValue id="105">IncrementedObjects</stringValue>
<type>VARIABLE</type>
</item>
<item id="106" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="107">output</name>
<stringValue id="108">Output</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<persistentVariables id="109" type="java.util.HashSet">
<item id="110" type="java.lang.String">Output
1000</item>
</persistentVariables>
<sources id="111" type="java.util.HashSet">
<item id="112" type="com.j2fe.workflow.definition.Transition">
<name id="113">goto-next</name>
<source id="114">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="115">NOP </name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="116">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="117" type="java.util.HashSet">
<item id="118" type="com.j2fe.workflow.definition.Transition">
<name id="119">loop</name>
<source idref="25"/>
<target idref="114"/>
</item>
</sources>
<targets id="120" type="java.util.HashSet">
<item idref="112" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="99"/>
</item>
</sources>
<targets id="121" type="java.util.HashSet">
<item idref="97" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ANDSPLIT</type>
</source>
<target idref="71"/>
</item>
</sources>
<targets id="122" type="java.util.HashSet">
<item idref="69" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="65"/>
</item>
</sources>
<targets id="123" type="java.util.HashSet">
<item idref="63" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ANDJOIN</type>
</source>
<target idref="59"/>
</item>
</sources>
<targets id="124" type="java.util.HashSet">
<item idref="57" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="52"/>
</item>
<item id="125" type="com.j2fe.workflow.definition.Transition">
<name id="126">goto-next</name>
<source id="127">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="128">create date dir</name>
<nodeHandler>com.j2fe.general.activities.CommandLine</nodeHandler>
<nodeHandlerClass id="129">com.j2fe.general.activities.CommandLine</nodeHandlerClass>
<parameters id="130" type="java.util.HashSet">
<item id="131" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="132">commandLine</name>
<stringValue id="133">mkDirCmd</stringValue>
<type>VARIABLE</type>
</item>
<item id="134" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="135">directory</name>
<stringValue id="136">DownloadDirectory</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="137" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="138">waitForEnd</name>
<stringValue id="139">true</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="140" type="java.util.HashSet">
<item id="141" type="com.j2fe.workflow.definition.Transition">
<name id="142">false</name>
<source id="143">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="144">Is Null </name>
<nodeHandler>com.j2fe.general.activities.IsNull</nodeHandler>
<nodeHandlerClass id="145">com.j2fe.general.activities.IsNull</nodeHandlerClass>
<parameters id="146" type="java.util.HashSet">
<item id="147" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="148">input</name>
<stringValue id="149">datefilepatterns</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="150" type="java.util.HashSet">
<item id="151" type="com.j2fe.workflow.definition.Transition">
<name id="152">goto-next</name>
<source id="153">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="154">Bean Shell Script (Standard) #2</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="155">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="156" type="java.util.HashSet">
<item id="157" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="158">statements</name>
<stringValue id="159">import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.lang.String;

 String filepath=filedir+"/"+filename;
           
  
            FileInputStream fstream1 = new FileInputStream(filepath);

           
            DataInputStream in1 = new DataInputStream(fstream1);
            BufferedReader inputReader = new BufferedReader(new InputStreamReader(in1));
                    
            String line1=null;
            List recordList = new ArrayList();
                     
            while ((line1 = inputReader.readLine()) != null)
            {
               // recordList.add(line1);
		if(line1.contains("ETF") &amp;&amp; line1.contains(".txt"))	
		{
		  String op=line1.substring(line1.indexOf("ETF"), line1.indexOf(".txt")+4);	
		 recordList.add(op);
		}

               
            }        
            
            inputReader.close();
</stringValue>
<type>CONSTANT</type>
</item>
<item id="160" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="161">variables["filedir"]</name>
<stringValue id="162">DownloadDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="163" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="164">variables["filename"]</name>
<stringValue id="165">diffFile</stringValue>
<type>VARIABLE</type>
</item>
<item id="166" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="167">variables["recordList"]</name>
<stringValue id="168">datefilepatterns</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<persistentVariables id="169" type="java.util.HashSet">
<item id="170" type="java.lang.String">datefilepatterns
1000</item>
</persistentVariables>
<sources id="171" type="java.util.HashSet">
<item id="172" type="com.j2fe.workflow.definition.Transition">
<name id="173">goto-next</name>
<source id="174">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="175">move delta file to done</name>
<nodeHandler>com.j2fe.general.activities.CommandLine</nodeHandler>
<nodeHandlerClass id="176">com.j2fe.general.activities.CommandLine</nodeHandlerClass>
<parameters id="177" type="java.util.HashSet">
<item id="178" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="179">commandLine</name>
<stringValue id="180">moveDeltaCmd</stringValue>
<type>VARIABLE</type>
</item>
<item id="181" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="182">directory</name>
<stringValue id="183">DownloadDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="184" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="185">waitForEnd</name>
<objectValue idref="21"/>
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
<name id="190">diff files</name>
<nodeHandler>com.j2fe.general.activities.CommandLine</nodeHandler>
<nodeHandlerClass id="191">com.j2fe.general.activities.CommandLine</nodeHandlerClass>
<parameters id="192" type="java.util.HashSet">
<item id="193" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="194">commandLine</name>
<stringValue id="195">diffCmd</stringValue>
<type>VARIABLE</type>
</item>
<item id="196" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="197">directory</name>
<stringValue id="198">DownloadDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="199" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="200">waitForEnd</name>
<stringValue id="201">true</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="202" type="java.util.HashSet">
<item id="203" type="com.j2fe.workflow.definition.Transition">
<name id="204">goto-next</name>
<source id="205">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="206">File Operations</name>
<nodeHandler>com.j2fe.general.activities.FileOperator</nodeHandler>
<nodeHandlerClass id="207">com.j2fe.general.activities.FileOperator</nodeHandlerClass>
<parameters id="208" type="java.util.HashSet">
<item id="209" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="210">copyDirect</name>
<stringValue id="211">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="212" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="213">operationToPerform</name>
<stringValue id="214">Copy</stringValue>
<type>CONSTANT</type>
</item>
<item id="215" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="216">sourceDirectory</name>
<stringValue id="217">/</stringValue>
<type>CONSTANT</type>
</item>
<item id="218" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="219">sourceFileName</name>
<stringValue id="220">Deltafilename</stringValue>
<type>VARIABLE</type>
</item>
<item id="221" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="222">sourceFileSystem</name>
<stringValue id="223">filesystem/sftp/capco</stringValue>
<type>REFERENCE</type>
</item>
<item id="224" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="225">targetDirectory</name>
<stringValue id="226">DownloadDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="227" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="228">targetFileName</name>
<stringValue id="229">deltafilename</stringValue>
<type>VARIABLE</type>
</item>
<item id="230" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="231">targetFileSystem</name>
<stringValue id="232">filesystem/local</stringValue>
<type>REFERENCE</type>
</item>
</parameters>
<sources id="233" type="java.util.HashSet">
<item id="234" type="com.j2fe.workflow.definition.Transition">
<name id="235">goto-next</name>
<source id="236">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="237">Bean Shell Script (Standard) #2</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="238">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="239" type="java.util.HashSet">
<item id="240" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="241">statements</name>
<stringValue id="242">import java.util.Date;&#13;
import java.text.DateFormat;&#13;
import java.text.SimpleDateFormat;&#13;
import java.lang.String;&#13;
&#13;
&#13;
private static final long MILLIS_IN_A_DAY = 1000 * 60 * 60 * 24;&#13;
DateFormat dateFormat = new SimpleDateFormat("yyyyMMddhhmmss");&#13;
Date today = new Date();&#13;
&#13;
String fname = filepatterns.substring(0,filepatterns.indexOf(".txt")) + "_" + dateFormat.format(today)+".txt";&#13;
String diffFile ="diffOutput_" + dateFormat.format(today)+".txt";&#13;
String diffCmd = "./capco.sh "+diffFile+ " "+fname ;&#13;
String mvdiffCmd ="mv " +diffFile+ " ../done/.";&#13;
String mvdeltaCmd ="mv " +fname+ " ../done/.";&#13;
String mkDirCmd = "mkdir "+dateFormat.format(today);&#13;
String downloadDir = dir+ "/" +dateFormat.format(today);</stringValue>
<type>CONSTANT</type>
</item>
<item id="243" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="244">variables["diffCmd"]</name>
<stringValue id="245">diffCmd</stringValue>
<type>VARIABLE</type>
</item>
<item id="246" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="247">variables["diffFile"]</name>
<stringValue id="248">diffFile</stringValue>
<type>VARIABLE</type>
</item>
<item id="249" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="250">variables["dir"]</name>
<stringValue id="251">DownloadDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="252" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="253">variables["downloadDir"]</name>
<stringValue id="254">DateDownloadDirectory</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="255" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="256">variables["filepatterns"]</name>
<stringValue id="257">Deltafilename</stringValue>
<type>VARIABLE</type>
</item>
<item id="258" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="259">variables["fname"]</name>
<stringValue id="260">deltafilename</stringValue>
<type>VARIABLE</type>
</item>
<item id="261" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="262">variables["mkDirCmd"]</name>
<stringValue id="263">mkDirCmd</stringValue>
<type>VARIABLE</type>
</item>
<item id="264" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="265">variables["mvdeltaCmd"]</name>
<stringValue id="266">moveDeltaCmd</stringValue>
<type>VARIABLE</type>
</item>
<item id="267" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="268">variables["mvdiffCmd"]</name>
<stringValue id="269">moveDiffCmd</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<persistentVariables id="270" type="java.util.HashSet">
<item id="271" type="java.lang.String">moveDiffCmd
1000</item>
</persistentVariables>
<sources id="272" type="java.util.HashSet">
<item id="273" type="com.j2fe.workflow.definition.Transition">
<name id="274">goto-next</name>
<source id="275">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="276">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="277">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="278" type="java.util.HashSet"/>
<targets id="279" type="java.util.HashSet">
<item idref="273" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="236"/>
</item>
</sources>
<targets id="280" type="java.util.HashSet">
<item idref="234" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="205"/>
</item>
</sources>
<targets id="281" type="java.util.HashSet">
<item idref="203" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="189"/>
</item>
</sources>
<targets id="282" type="java.util.HashSet">
<item idref="187" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="174"/>
</item>
</sources>
<targets id="283" type="java.util.HashSet">
<item idref="172" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="153"/>
</item>
</sources>
<targets id="284" type="java.util.HashSet">
<item idref="151" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="143"/>
</item>
</sources>
<targets id="285" type="java.util.HashSet">
<item idref="141" type="com.j2fe.workflow.definition.Transition"/>
<item id="286" type="com.j2fe.workflow.definition.Transition">
<name id="287">true</name>
<source idref="143"/>
<target idref="9"/>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="127"/>
</item>
</sources>
<targets id="288" type="java.util.HashSet">
<item idref="125" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="52"/>
</item>
</sources>
<targets id="289" type="java.util.HashSet">
<item idref="50" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="25"/>
</item>
</sources>
<targets id="290" type="java.util.HashSet">
<item idref="23" type="com.j2fe.workflow.definition.Transition"/>
<item idref="118" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="9"/>
</item>
<item idref="286" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="291" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3"/>
</item>
</sources>
<targets id="292" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="293">Custom/CapcoFeedProcessing</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="294">user1</lastChangeUser>
<lastUpdate id="295">2022-06-03T19:14:53.000+0530</lastUpdate>
<name id="296">P72_WF_DownloadCapcoFiles</name>
<optimize>true</optimize>
<parameter id="297" type="java.util.HashMap">
<entry>
<key id="298" type="java.lang.String">BulkSize</key>
<value id="299" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="300">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="301" type="java.lang.String">BusinessFeed</key>
<value id="302" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="303">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="304" type="java.lang.String">DateDownloadDirectory</key>
<value id="305" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="306">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>false</input>
<output>true</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="307" type="java.lang.String">Deltafilename</key>
<value id="308" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="309">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="310" type="java.lang.String">Directory</key>
<value id="311" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="312">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="313" type="java.lang.String">DoneDirectory</key>
<value id="314" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="315">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="316" type="java.lang.String">DownloadDirectory</key>
<value id="317" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="318">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="319" type="java.lang.String">FilePatterns</key>
<value id="320" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="321">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="322">Comma seperated file patterns</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="323" type="java.lang.String">ReDownloadfiles</key>
<value id="324" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="325">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="326" type="java.lang.String">SortAscending</key>
<value id="327" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="328">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="329" type="java.lang.String">SortOrder</key>
<value id="330" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="331">com.j2fe.feeds.activities.ListFiles$Sort</className>
<clazz>com.j2fe.feeds.activities.ListFiles$Sort</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="332" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="275"/>
<status>RELEASED</status>
<variables id="333" type="java.util.HashMap">
<entry>
<key id="334" type="java.lang.String">BulkSize</key>
<value id="335" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="336">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="337" type="java.lang.Integer">10</value>
</value>
</entry>
<entry>
<key id="338" type="java.lang.String">BusinessFeed</key>
<value id="339" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="340">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="341" type="java.lang.String">CAPCO</value>
</value>
</entry>
<entry>
<key id="342" type="java.lang.String">Counter</key>
<value id="343" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="344">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="345" type="java.lang.Integer">0</value>
</value>
</entry>
<entry>
<key id="346" type="java.lang.String">DateDownloadDirectory</key>
<value id="347" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="348">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="349" type="java.lang.String">Deltafilename</key>
<value id="350" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="351">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="352" type="java.lang.String">delta.txt</value>
</value>
</entry>
<entry>
<key id="353" type="java.lang.String">Directory</key>
<value id="354" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="355">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="356" type="java.lang.String">/</value>
</value>
</entry>
<entry>
<key id="357" type="java.lang.String">DoneDirectory</key>
<value id="358" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="359">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="360" type="java.lang.String">/devgs/InputFiles/CAPCO/done</value>
</value>
</entry>
<entry>
<key id="361" type="java.lang.String">DownloadDirectory</key>
<value id="362" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="363">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="364" type="java.lang.String">/devgs/InputFiles/CAPCO/input</value>
</value>
</entry>
<entry>
<key id="365" type="java.lang.String">FilePatterns</key>
<value id="366" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="367">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="368">Comma seperated file patterns</description>
<persistent>false</persistent>
<value id="369" type="java.lang.String">ETF_</value>
</value>
</entry>
<entry>
<key id="370" type="java.lang.String">JOBID</key>
<value id="371" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="372">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="373" type="java.lang.String">ReDownloadfiles</key>
<value id="374" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="375">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="376" type="java.lang.Boolean">false</value>
</value>
</entry>
<entry>
<key id="377" type="java.lang.String">SortAscending</key>
<value id="378" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="379">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value idref="21"/>
</value>
</entry>
<entry>
<key id="380" type="java.lang.String">SortOrder</key>
<value id="381" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="382">com.j2fe.feeds.activities.ListFiles$Sort</className>
<clazz>com.j2fe.feeds.activities.ListFiles$Sort</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="383" type="com.j2fe.feeds.activities.ListFiles$Sort">TIME</value>
</value>
</entry>
</variables>
<version>25</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>

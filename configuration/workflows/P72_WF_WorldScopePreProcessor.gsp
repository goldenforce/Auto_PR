<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.22">
<package-comment/>
<businessobject displayString="13 - 05062022-Final" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">05062022-Final</comment>
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
<name id="10">Close Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.CloseJob</nodeHandler>
<nodeHandlerClass id="11">com.j2fe.streetlamp.activities.CloseJob</nodeHandlerClass>
<parameters id="12" type="java.util.HashSet">
<item id="13" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="14">jobId</name>
<stringValue id="15">JobID</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
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
<name id="20">Consolidate Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.ConsolidateJob</nodeHandler>
<nodeHandlerClass id="21">com.j2fe.streetlamp.activities.ConsolidateJob</nodeHandlerClass>
<parameters id="22" type="java.util.HashSet">
<item id="23" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="24">jobId</name>
<stringValue id="25">JobID</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="26" type="java.util.HashSet">
<item id="27" type="com.j2fe.workflow.definition.Transition">
<name id="28">NULL</name>
<source id="29">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="30">CHECK Counter is NULL</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="31">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="32" type="java.util.HashSet">
<item id="33" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="34">caseItem</name>
<stringValue id="35">Count</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="36" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="37">defaultItem</name>
<stringValue id="38">goto-next</stringValue>
<type>CONSTANT</type>
</item>
<item id="39" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="40">nullTransition</name>
<stringValue id="41">NULL</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="42" type="java.util.HashSet">
<item id="43" type="com.j2fe.workflow.definition.Transition">
<name id="44">rows-found</name>
<source id="45">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="46">Fetch Maximum SEQ_NOFetch Maximum SEQ_NO</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="47">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="48" type="java.util.HashSet">
<item id="49" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="50">database</name>
<stringValue id="51">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="52" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="53">indexedParameters[0]</name>
<stringValue id="54">BulkSize</stringValue>
<type>VARIABLE</type>
</item>
<item id="55" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="56">indexedParameters[1]</name>
<stringValue id="57">NoOfThread</stringValue>
<type>VARIABLE</type>
</item>
<item id="58" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="59">indexedParameters[2]</name>
<stringValue id="60">BulkSize</stringValue>
<type>VARIABLE</type>
</item>
<item id="61" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="62">indexedParameters[3]</name>
<stringValue id="63">NoOfThread</stringValue>
<type>VARIABLE</type>
</item>
<item id="64" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="65">indexedResult[0][0]</name>
<stringValue id="66">Count</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="67" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="68">indexedResult[0][1]</name>
<stringValue id="69">MaxSeqNoResultList</stringValue>
<type>VARIABLE</type>
</item>
<item id="70" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="71">indexedResult[0][2]</name>
<stringValue id="72">CalcBulkSize</stringValue>
<type>VARIABLE</type>
</item>
<item id="73" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="74">indexedResult[0][3]</name>
<stringValue id="75">MaxBulkPerThread</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="76" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="77">querySQL</name>
<stringValue id="78">SequenceQuery</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<persistentVariables id="79" type="java.util.HashSet">
<item id="80" type="java.lang.String">MaxBulkPerThread
1000</item>
<item id="81" type="java.lang.String">CalcBulkSize
1000</item>
</persistentVariables>
<sources id="82" type="java.util.HashSet">
<item id="83" type="com.j2fe.workflow.definition.Transition">
<name id="84">goto-next</name>
<source id="85">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="86">Create Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="87">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="88" type="java.util.HashSet">
<item id="89" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="90">configInfo</name>
<stringValue id="91">JobName</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="92" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="93">file</name>
<stringValue id="94">FilePath</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="95" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="96">jobId</name>
<stringValue id="97">JobID</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="98" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="99">parentJobId</name>
<stringValue id="100">ParentJobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="101" type="java.util.HashSet">
<item id="102" type="com.j2fe.workflow.definition.Transition">
<name id="103">goto-next</name>
<source id="104">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="105">Get FileName and Query</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="106">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="107" type="java.util.HashSet">
<item id="108" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="109">statements</name>
<stringValue id="110">import java.util.Date;&#13;
import java.text.DateFormat;&#13;
import java.text.SimpleDateFormat;&#13;
import java.lang.String;&#13;
&#13;
&#13;
DateFormat dateFormat = new SimpleDateFormat("yyyyMMddhhmmssSSS");&#13;
String fname = filename + "_" + dateFormat.format(new Date())+".txt";&#13;
String dirtmp = dir+"/tmp";&#13;
String filepath = dir+"/"+fname ;&#13;
&#13;
&#13;
String moveCmd = "mv " +fname+ " " +dir;&#13;
&#13;
&#13;
String maxsql  = "SELECT CASE WHEN cnt &gt; 0 THEN 1 ELSE NULL END flg, cnt max_seq, CASE WHEN (cnt &lt; ?) THEN CEIL (cnt::float / ?) ELSE ? END blk_size, CEIL (cnt::float / ?) recperthreads FROM   ( select count ( * ) cnt from (" + pSeqSql + "  ) as a1)  as a2";&#13;
&#13;
String getdatasql = "SELECT op FROM  " + pViewName  +  " c, (SELECT   * FROM   (SELECT  a.* , ROW_NUMBER() OVER() seq_no FROM   ( " + pSeqSql + "   ORDER BY 1 ) a ) a1 WHERE   seq_no &gt; ? AND seq_no &lt;= ?) b  WHERE   c.custom_id = b.custom_id" ;&#13;
&#13;
</stringValue>
<type>CONSTANT</type>
</item>
<item id="111" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="112">variables["dir"]</name>
<stringValue id="113">PreProcessedDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="114" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="115">variables["dirtmp"]</name>
<stringValue id="116">tmpDir</stringValue>
<type>VARIABLE</type>
</item>
<item id="117" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="118">variables["filename"]</name>
<stringValue id="119">PreProcessedFileName</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="120" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="121">variables["filepath"]</name>
<stringValue id="122">FilePath</stringValue>
<type>VARIABLE</type>
</item>
<item id="123" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="124">variables["fname"]</name>
<stringValue id="125">datefilename</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="126" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="127">variables["getdatasql"]</name>
<stringValue id="128">GetDataQuery</stringValue>
<type>VARIABLE</type>
</item>
<item id="129" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="130">variables["maxsql"]</name>
<stringValue id="131">SequenceQuery</stringValue>
<type>VARIABLE</type>
</item>
<item id="132" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="133">variables["moveCmd"]</name>
<stringValue id="134">mvCmd</stringValue>
<type>VARIABLE</type>
</item>
<item id="135" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="136">variables["pSeqSql"]</name>
<stringValue id="137">SequenceQuery</stringValue>
<type>VARIABLE</type>
</item>
<item id="138" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="139">variables["pViewName"]</name>
<stringValue id="140">Viewname</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<persistentVariables id="141" type="java.util.HashSet">
<item id="142" type="java.lang.String">GetDataQuery
1000</item>
<item id="143" type="java.lang.String">FilePath
1000</item>
<item id="144" type="java.lang.String">datefilename
1000</item>
<item id="145" type="java.lang.String">mvCmd
1000</item>
</persistentVariables>
<sources id="146" type="java.util.HashSet">
<item id="147" type="com.j2fe.workflow.definition.Transition">
<name id="148">goto-next</name>
<source id="149">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="150">Call PFD</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="151">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="152" type="java.util.HashSet">
<item id="153" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="154">["BusinessFeed"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="155">input["BusinessFeed"]</name>
<stringValue id="156">PreProcessorBusinessFeed</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="157" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="158">["Directory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="159">input["Directory"]</name>
<stringValue id="160">InputDirectory</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="161" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="162">["MessageType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="163">input["MessageType"]</name>
<stringValue id="164">PreProcessMessageType</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="165" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="166">["OutputDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="167">input["OutputDirectory"]</name>
<stringValue id="168">OutputDirectory</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="169" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="170">["ParentJobID"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="171">input["ParentJobID"]</name>
<stringValue id="172">ParentJobID</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="173" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="174">["SuccessAction"]@com/j2fe/feeds/SuccessAction@</UITypeHint>
<input>true</input>
<name id="175">input["SuccessAction"]</name>
<stringValue id="176">MOVE</stringValue>
<type>CONSTANT</type>
</item>
<item id="177" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="178">name</name>
<stringValue id="179">Process Files in Directory</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="180" type="java.util.HashSet">
<item id="181" type="com.j2fe.workflow.definition.Transition">
<name id="182">goto-next</name>
<source id="183">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="184">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="185">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="186" type="java.util.HashSet"/>
<targets id="187" type="java.util.HashSet">
<item idref="181" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="149"/>
</item>
</sources>
<targets id="188" type="java.util.HashSet">
<item idref="147" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="104"/>
</item>
</sources>
<targets id="189" type="java.util.HashSet">
<item idref="102" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="85"/>
</item>
</sources>
<targets id="190" type="java.util.HashSet">
<item idref="83" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="45"/>
</item>
</sources>
<targets id="191" type="java.util.HashSet">
<item id="192" type="com.j2fe.workflow.definition.Transition">
<name id="193">nothing-found</name>
<source idref="45"/>
<target idref="19"/>
</item>
<item idref="43" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="29"/>
</item>
</sources>
<targets id="194" type="java.util.HashSet">
<item idref="27" type="com.j2fe.workflow.definition.Transition"/>
<item id="195" type="com.j2fe.workflow.definition.Transition">
<name id="196">goto-next</name>
<source idref="29"/>
<target id="197">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="198">Creating Array for Bulk</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="199">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="200" type="java.util.HashSet">
<item id="201" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="202">database</name>
<stringValue id="203">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="204" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="205">firstColumnsResult</name>
<stringValue id="206">BulkArray</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="207" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="208">indexedParameters[0]</name>
<stringValue id="209">NoOfThread</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="210" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="211">querySQL</name>
<stringValue id="212">select * from generate_series(1, ?)</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="213" type="java.util.HashSet">
<item idref="195" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="214" type="java.util.HashSet">
<item id="215" type="com.j2fe.workflow.definition.Transition">
<name id="216">nothing-found</name>
<source idref="197"/>
<target id="217">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="218">NOP  #2</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="219">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="220" type="java.util.HashSet">
<item idref="215" type="com.j2fe.workflow.definition.Transition"/>
<item id="221" type="com.j2fe.workflow.definition.Transition">
<name id="222">rows-found</name>
<source idref="197"/>
<target idref="217"/>
</item>
</sources>
<targets id="223" type="java.util.HashSet">
<item id="224" type="com.j2fe.workflow.definition.Transition">
<name id="225">goto-next</name>
<source idref="217"/>
<target id="226">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>true</directJoin>
<name id="227">Bulk Items </name>
<nodeHandler>com.j2fe.general.activities.BulkItems</nodeHandler>
<nodeHandlerClass id="228">com.j2fe.general.activities.BulkItems</nodeHandlerClass>
<parameters id="229" type="java.util.HashSet">
<item id="230" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="231">bulk</name>
<objectValue id="232" type="java.lang.Integer">1</objectValue>
<type>CONSTANT</type>
</item>
<item id="233" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="234">input</name>
<stringValue id="235">BulkArray</stringValue>
<type>VARIABLE</type>
</item>
<item id="236" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="237">output</name>
<stringValue id="238">BulkedItems</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<persistentVariables id="239" type="java.util.HashSet">
<item id="240" type="java.lang.String">BulkedItems
1000</item>
</persistentVariables>
<sources id="241" type="java.util.HashSet">
<item idref="224" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="242" type="java.util.HashSet">
<item id="243" type="com.j2fe.workflow.definition.Transition">
<name id="244">goto-next</name>
<source idref="226"/>
<target id="245">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="246"> Bulk Calculate upper and lower bound for Bulk Calculate upper and lower bound for</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="247">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="248" type="java.util.HashSet">
<item id="249" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="250">statements</name>
<stringValue id="251">int x=(int)maxbulk;
int  y=(int)SingleBulk[0];

int startSeqNo=(y-1)*x ;
int lastRecordSeqNum=y*x;
int counter = startSeqNo;
bulkfilename = filename +"_"+startSeqNo+"_"+lastRecordSeqNum;</stringValue>
<type>CONSTANT</type>
</item>
<item id="252" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="253">variables["SingleBulk"]</name>
<stringValue id="254">BulkedItems</stringValue>
<type>VARIABLE</type>
</item>
<item id="255" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="256">variables["bulkfilename"]</name>
<stringValue id="257">BulkFileName</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="258" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="259">variables["counter"]</name>
<stringValue id="260">Counter</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="261" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="262">variables["filename"]</name>
<stringValue id="263">datefilename</stringValue>
<type>VARIABLE</type>
</item>
<item id="264" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="265">variables["lastRecordSeqNum"]</name>
<stringValue id="266">BulklastSeqNo</stringValue>
<type>VARIABLE</type>
</item>
<item id="267" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="268">variables["maxbulk"]</name>
<stringValue id="269">MaxBulkPerThread</stringValue>
<type>VARIABLE</type>
</item>
<item id="270" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="271">variables["startSeqNo"]</name>
<stringValue id="272">BulkstartSeqNo</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<persistentVariables id="273" type="java.util.HashSet">
<item id="274" type="java.lang.String">datefilename
1000</item>
</persistentVariables>
<sources id="275" type="java.util.HashSet">
<item idref="243" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="276" type="java.util.HashSet">
<item id="277" type="com.j2fe.workflow.definition.Transition">
<name id="278">goto-next</name>
<source idref="245"/>
<target id="279">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="280">Automatically generated</description>
<directJoin>false</directJoin>
<name id="281">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="282">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="283" type="java.util.HashSet">
<item idref="277" type="com.j2fe.workflow.definition.Transition"/>
<item id="284" type="com.j2fe.workflow.definition.Transition">
<name id="285">goto-next</name>
<source id="286">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="287">Automatically generated</description>
<directJoin>false</directJoin>
<name id="288">NOP</name>
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
<name id="294">Write File</name>
<nodeHandler>com.j2fe.general.activities.File</nodeHandler>
<nodeHandlerClass id="295">com.j2fe.general.activities.File</nodeHandlerClass>
<parameters id="296" type="java.util.HashSet">
<item id="297" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="298">append</name>
<stringValue id="299">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="300" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="301">appendEOFLine</name>
<objectValue id="302" type="java.lang.Boolean">true</objectValue>
<type>CONSTANT</type>
</item>
<item id="303" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="304">directory</name>
<stringValue id="305">tmpDir</stringValue>
<type>VARIABLE</type>
</item>
<item id="306" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="307">fileName</name>
<stringValue id="308">BulkFileName</stringValue>
<type>VARIABLE</type>
</item>
<item id="309" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="310">listOfText</name>
<stringValue id="311">OutputArray</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="312" type="java.util.HashSet">
<item id="313" type="com.j2fe.workflow.definition.Transition">
<name id="314">rows-found</name>
<source id="315">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="316">Database Select (Xor Split)</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="317">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="318" type="java.util.HashSet">
<item id="319" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="320">database</name>
<stringValue id="321">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="322" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="323">firstColumnsResult</name>
<stringValue id="324">OutputArray</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="325" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="326">indexedParameters[0]</name>
<stringValue id="327">startSeqNo</stringValue>
<type>VARIABLE</type>
</item>
<item id="328" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="329">indexedParameters[1]</name>
<stringValue id="330">lastRecordSeqNum</stringValue>
<type>VARIABLE</type>
</item>
<item id="331" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="332">querySQL</name>
<stringValue id="333">GetDataQuery</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="334" type="java.util.HashSet">
<item id="335" type="com.j2fe.workflow.definition.Transition">
<name id="336">goto-next</name>
<source id="337">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="338">Calculate upper and lower bounds</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="339">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="340" type="java.util.HashSet">
<item id="341" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="342">statements</name>
<stringValue id="343">int x=(int)counter;&#13;
int z=(int)maxbulk;&#13;
int  y=(int)piumbulksize;&#13;
&#13;
int startSeqNo=x-y;&#13;
int lastRecordSeqNum=0;&#13;
&#13;
if (x &gt;z)&#13;
 {&#13;
  lastRecordSeqNum=z;&#13;
 }&#13;
 else &#13;
  {&#13;
  lastRecordSeqNum=x;&#13;
 }</stringValue>
<type>CONSTANT</type>
</item>
<item id="344" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="345">variables["counter"]</name>
<stringValue id="346">Counter</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="347" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="348">variables["lastRecordSeqNum"]</name>
<stringValue id="349">lastRecordSeqNum</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="350" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="351">variables["maxbulk"]</name>
<stringValue id="352">BulklastSeqNo</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="353" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="354">variables["piumbulksize"]</name>
<stringValue id="355">CalcBulkSize</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="356" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="357">variables["startSeqNo"]</name>
<stringValue id="358">startSeqNo</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="359" type="java.util.HashSet">
<item id="360" type="com.j2fe.workflow.definition.Transition">
<name id="361">loop</name>
<source id="362">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="363">Simple For Loop </name>
<nodeHandler>com.j2fe.workflow.handler.impl.SimpleForEach</nodeHandler>
<nodeHandlerClass id="364">com.j2fe.workflow.handler.impl.SimpleForEach</nodeHandlerClass>
<parameters id="365" type="java.util.HashSet">
<item id="366" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="367">counter</name>
<stringValue id="368">Counter</stringValue>
<type>VARIABLE</type>
</item>
<item id="369" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="370">counter</name>
<stringValue id="371">Counter</stringValue>
<type>VARIABLE</type>
</item>
<item id="372" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="373">incrementValue</name>
<stringValue id="374">CalcBulkSize</stringValue>
<type>VARIABLE</type>
</item>
<item id="375" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="376">loopLength</name>
<stringValue id="377">BulklastSeqNo</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="378" type="java.util.HashSet">
<item id="379" type="com.j2fe.workflow.definition.Transition">
<name id="380">ToSplit</name>
<source idref="279"/>
<target idref="362"/>
</item>
</sources>
<targets id="381" type="java.util.HashSet">
<item id="382" type="com.j2fe.workflow.definition.Transition">
<name id="383">end-loop</name>
<source idref="362"/>
<target id="384">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>true</directJoin>
<name id="385">Synchronize </name>
<nodeHandler>com.j2fe.workflow.handler.impl.StandardAndJoinHandler</nodeHandler>
<nodeHandlerClass id="386">com.j2fe.workflow.handler.impl.StandardAndJoinHandler</nodeHandlerClass>
<sources id="387" type="java.util.HashSet">
<item idref="382" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="388" type="java.util.HashSet">
<item id="389" type="com.j2fe.workflow.definition.Transition">
<name id="390">goto-next</name>
<source idref="384"/>
<target id="391">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="392">NOP </name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="393">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="394" type="java.util.HashSet">
<item idref="389" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="395" type="java.util.HashSet">
<item id="396" type="com.j2fe.workflow.definition.Transition">
<name id="397">goto-next</name>
<source idref="391"/>
<target id="398">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="399">Merge PUB Files</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="400">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="401" type="java.util.HashSet">
<item id="402" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="403">statements</name>
<objectValue id="404" type="java.lang.String">import java.io.BufferedReader;&#13;
import java.io.BufferedWriter;&#13;
import java.io.File;&#13;
import java.io.FileInputStream;&#13;
import java.io.FileWriter;&#13;
import java.io.FilenameFilter;&#13;
import java.io.IOException;&#13;
import java.io.InputStreamReader;&#13;
 		&#13;
		String mergedFilePath = tmpDir + "/" + FileName;&#13;
		final String FilePattern = FileName +"(.*)";&#13;
		File dir = new File(tmpDir);&#13;
		File [] files = dir.listFiles(new FilenameFilter()&#13;
		{&#13;
		    public boolean accept(File dir, String name) {&#13;
		        return name.matches(FilePattern);&#13;
		    }&#13;
		});&#13;
 &#13;
		File mergedFile = new File(mergedFilePath);&#13;
     &#13;
		FileWriter fstream = null;&#13;
		BufferedWriter out = null;&#13;
		try {&#13;
			fstream = new FileWriter(mergedFile, true);&#13;
			out = new BufferedWriter(fstream);&#13;
		} catch (IOException e1) {&#13;
			e1.printStackTrace();&#13;
		}&#13;
		//int counter =0;&#13;
		for (File f : files) {&#13;
			FileInputStream fis;&#13;
			try {&#13;
				fis = new FileInputStream(f);&#13;
				BufferedReader in = new BufferedReader(new InputStreamReader(fis));&#13;
 &#13;
				String aLine;&#13;
				while ((aLine = in.readLine()) != null) &#13;
				{&#13;
					/*if (counter==0)&#13;
					{&#13;
						out.write(header);&#13;
						out.write("\r\n");&#13;
					}	*/&#13;
					out.write(aLine);&#13;
				    out.write("\r\n");&#13;
					//counter = counter+1;&#13;
				}&#13;
 &#13;
				in.close();&#13;
				f.delete();&#13;
			} catch (IOException e) {&#13;
				e.printStackTrace();&#13;
			}&#13;
		}&#13;
 &#13;
		try {&#13;
			out.close();&#13;
		} catch (IOException e) {&#13;
			e.printStackTrace();&#13;
		}</objectValue>
<type>CONSTANT</type>
</item>
<item id="405" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="406">variables["FileName"]</name>
<stringValue id="407">datefilename</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="408" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="409">variables["tmpDir"]</name>
<stringValue id="410">tmpDir</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="411" type="java.util.HashSet">
<item idref="396" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="412" type="java.util.HashSet">
<item id="413" type="com.j2fe.workflow.definition.Transition">
<name id="414">goto-next</name>
<source idref="398"/>
<target id="415">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="416">Move Files</name>
<nodeHandler>com.j2fe.general.activities.CommandLine</nodeHandler>
<nodeHandlerClass id="417">com.j2fe.general.activities.CommandLine</nodeHandlerClass>
<parameters id="418" type="java.util.HashSet">
<item id="419" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="420">commandLine</name>
<stringValue id="421">mvCmd</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="422" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="423">directory</name>
<stringValue id="424">tmpDir</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="425" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="426">waitForEnd</name>
<stringValue id="427">true</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="428" type="java.util.HashSet">
<item idref="413" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="429" type="java.util.HashSet">
<item id="430" type="com.j2fe.workflow.definition.Transition">
<name id="431">goto-next</name>
<source idref="415"/>
<target idref="19"/>
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
<type>ANDJOIN</type>
</target>
</item>
<item idref="360" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="337"/>
</item>
</sources>
<targets id="432" type="java.util.HashSet">
<item idref="335" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="315"/>
</item>
</sources>
<targets id="433" type="java.util.HashSet">
<item id="434" type="com.j2fe.workflow.definition.Transition">
<name id="435">nothing-found</name>
<source idref="315"/>
<target idref="286"/>
</item>
<item idref="313" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="293"/>
</item>
</sources>
<targets id="436" type="java.util.HashSet">
<item idref="291" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="286"/>
</item>
<item idref="434" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="437" type="java.util.HashSet">
<item idref="284" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="279"/>
</item>
</sources>
<targets id="438" type="java.util.HashSet">
<item idref="379" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>ANDSPLIT</type>
</target>
</item>
</targets>
<type>ACTIVITY</type>
</target>
</item>
<item idref="221" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="19"/>
</item>
<item idref="430" type="com.j2fe.workflow.definition.Transition"/>
<item idref="192" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="439" type="java.util.HashSet">
<item idref="17" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="9"/>
</item>
</sources>
<targets id="440" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3"/>
</item>
</sources>
<targets id="441" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="442">Custom/WorldScopeFeedProcessing</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="443">user1</lastChangeUser>
<lastUpdate id="444">2022-06-05T18:14:07.000+0530</lastUpdate>
<name id="445">P72_WF_WorldScopePreProcessor</name>
<optimize>true</optimize>
<parameter id="446" type="java.util.HashMap">
<entry>
<key id="447" type="java.lang.String">BulkSize</key>
<value id="448" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="449">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="450" type="java.lang.String">InputDirectory</key>
<value id="451" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="452">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="453" type="java.lang.String">NoOfThread</key>
<value id="454" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="455">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="456" type="java.lang.String">OutputDirectory</key>
<value id="457" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="458">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="459" type="java.lang.String">ParentJobID</key>
<value id="460" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="461">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="462" type="java.lang.String">PreProcessMessageType</key>
<value id="463" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="464">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="465" type="java.lang.String">PreProcessedDirectory</key>
<value id="466" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="467">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="468" type="java.lang.String">PreProcessedFileName</key>
<value id="469" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="470">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="471" type="java.lang.String">PreProcessorBusinessFeed</key>
<value id="472" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="473">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="474" type="java.lang.String">SequenceQuery</key>
<value id="475" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="476">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="477" type="java.lang.String">Viewname</key>
<value id="478" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="479">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="480" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="183"/>
<status>RELEASED</status>
<variables id="481" type="java.util.HashMap">
<entry>
<key id="482" type="java.lang.String">BulkSize</key>
<value id="483" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="484">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="485" type="java.lang.Integer">1000</value>
</value>
</entry>
<entry>
<key id="486" type="java.lang.String">InputDirectory</key>
<value id="487" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="488">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="489" type="java.lang.String">/devgs/InputFiles/WorldScope</value>
</value>
</entry>
<entry>
<key id="490" type="java.lang.String">JobID</key>
<value id="491" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="492">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="493" type="java.lang.String">JobName</key>
<value id="494" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="495">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="496" type="java.lang.String">WorldScopePreProcessor</value>
</value>
</entry>
<entry>
<key id="497" type="java.lang.String">NoOfThread</key>
<value id="498" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="499">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="500" type="java.lang.Integer">5</value>
</value>
</entry>
<entry>
<key id="501" type="java.lang.String">OutputDirectory</key>
<value id="502" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="503">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="504" type="java.lang.String">/devgs/InputFiles/WorldScope/done</value>
</value>
</entry>
<entry>
<key id="505" type="java.lang.String">ParentJobID</key>
<value id="506" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="507">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="508" type="java.lang.String">PreProcessMessageType</key>
<value id="509" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="510">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="511" type="java.lang.String">PreProcessCustomID</value>
</value>
</entry>
<entry>
<key id="512" type="java.lang.String">PreProcessedDirectory</key>
<value id="513" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="514">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="515" type="java.lang.String">/devgs/InputFiles/WorldScope/preprocessed</value>
</value>
</entry>
<entry>
<key id="516" type="java.lang.String">PreProcessedFileName</key>
<value id="517" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="518">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="519" type="java.lang.String">WorldScopePreProcessed</value>
</value>
</entry>
<entry>
<key id="520" type="java.lang.String">PreProcessorBusinessFeed</key>
<value id="521" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="522">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="523" type="java.lang.String">P72_Custom_PreProc_noHead</value>
</value>
</entry>
<entry>
<key id="524" type="java.lang.String">SequenceQuery</key>
<value id="525" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="526">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="527" type="java.lang.String">select distinct custom_id custom_id from ft_t_wid1</value>
</value>
</entry>
<entry>
<key id="528" type="java.lang.String">Viewname</key>
<value id="529" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="530">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="531" type="java.lang.String">FT_V_P72_WORLDSCOPE</value>
</value>
</entry>
<entry>
<key id="532" type="java.lang.String">tmpDir</key>
<value id="533" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="534">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
</variables>
<version>13</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>

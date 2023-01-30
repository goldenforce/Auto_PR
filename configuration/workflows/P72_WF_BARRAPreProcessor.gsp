<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.19">
<package-comment/>
<businessobject displayString="28 - PersistChanges" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">PersistChanges</comment>
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
<item id="81" type="java.lang.String">Count
1000</item>
<item id="82" type="java.lang.String">MaxSeqNoResultList
1000</item>
<item id="83" type="java.lang.String">CalcBulkSize
1000</item>
</persistentVariables>
<sources id="84" type="java.util.HashSet">
<item id="85" type="com.j2fe.workflow.definition.Transition">
<name id="86">goto-next</name>
<source id="87">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="88">Create Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="89">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="90" type="java.util.HashSet">
<item id="91" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="92">configInfo</name>
<stringValue id="93">JobName</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="94" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="95">file</name>
<stringValue id="96">FilePath</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="97" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="98">jobId</name>
<stringValue id="99">JobID</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="100" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="101">parentJobId</name>
<stringValue id="102">ParentJobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<persistentVariables id="103" type="java.util.HashSet">
<item id="104" type="java.lang.String">JobID
1000</item>
</persistentVariables>
<sources id="105" type="java.util.HashSet">
<item id="106" type="com.j2fe.workflow.definition.Transition">
<name id="107">goto-next</name>
<source id="108">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="109">Get FileName and Query</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="110">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="111" type="java.util.HashSet">
<item id="112" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="113">statements</name>
<stringValue id="114">import java.util.Date;&#13;
import java.text.DateFormat;&#13;
import java.text.SimpleDateFormat;&#13;
import java.lang.String;&#13;
&#13;
&#13;
DateFormat dateFormat = new SimpleDateFormat("yyyyMMddhhmmssSSS");&#13;
String fname = filename + "_" + dateFormat.format(new Date())+".csv";&#13;
String dirtmp = dir+"/tmp";&#13;
String filepath = dir+"/"+fname ;&#13;
&#13;
String sql="";&#13;
&#13;
sql = "select barra_id from ft_v_p72_barra";&#13;
&#13;
String moveCmd = "mv " +fname+ " " +dir;&#13;
&#13;
&#13;
String maxsql  = "SELECT CASE WHEN cnt &gt; 0 THEN 1 ELSE NULL END flg, cnt max_seq, CASE WHEN (cnt &lt; ?) THEN CEIL (cnt::float / ?) ELSE ? END blk_size, CEIL (cnt::float / ?) recperthreads FROM   ( select count ( * ) cnt from (" + pSeqSql + "  ) as a1)  as a2";&#13;
&#13;
String getdatasql = "SELECT op FROM  " + pViewName  +  " c, (SELECT   * FROM   (SELECT  a.* , ROW_NUMBER() OVER() seq_no FROM   ( " + pSeqSql + "   ORDER BY 1 ) a ) a1 WHERE   seq_no &gt; ? AND seq_no &lt;= ?) b  WHERE   c.barra_id = b.barra_id" ;&#13;
&#13;
</stringValue>
<type>CONSTANT</type>
</item>
<item id="115" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="116">variables["dir"]</name>
<stringValue id="117">PreProcessedDirectory</stringValue>
<type>VARIABLE</type>
</item>
<item id="118" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="119">variables["dirtmp"]</name>
<stringValue id="120">tmpDir</stringValue>
<type>VARIABLE</type>
</item>
<item id="121" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="122">variables["filename"]</name>
<stringValue id="123">PreProcessedFileName</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="124" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="125">variables["filepath"]</name>
<stringValue id="126">FilePath</stringValue>
<type>VARIABLE</type>
</item>
<item id="127" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="128">variables["fname"]</name>
<stringValue id="129">datefilename</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="130" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="131">variables["getdatasql"]</name>
<stringValue id="132">GetDataQuery</stringValue>
<type>VARIABLE</type>
</item>
<item id="133" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="134">variables["maxsql"]</name>
<stringValue id="135">SequenceQuery</stringValue>
<type>VARIABLE</type>
</item>
<item id="136" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="137">variables["moveCmd"]</name>
<stringValue id="138">mvCmd</stringValue>
<type>VARIABLE</type>
</item>
<item id="139" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="140">variables["pSeqSql"]</name>
<stringValue id="141">SequenceQuery</stringValue>
<type>VARIABLE</type>
</item>
<item id="142" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="143">variables["pViewName"]</name>
<stringValue id="144">Viewname</stringValue>
<type>VARIABLE</type>
</item>
<item id="145" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="146">variables["sql"]</name>
<stringValue id="147">sql</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<persistentVariables id="148" type="java.util.HashSet">
<item id="149" type="java.lang.String">GetDataQuery
1000</item>
<item id="150" type="java.lang.String">FilePath
1000</item>
<item id="151" type="java.lang.String">datefilename
1000</item>
<item id="152" type="java.lang.String">sql
1000</item>
<item id="153" type="java.lang.String">mvCmd
1000</item>
</persistentVariables>
<sources id="154" type="java.util.HashSet">
<item id="155" type="com.j2fe.workflow.definition.Transition">
<name id="156">goto-next</name>
<source id="157">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="158">Call PFD</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="159">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="160" type="java.util.HashSet">
<item id="161" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="162">["BusinessFeed"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="163">input["BusinessFeed"]</name>
<stringValue id="164">PreProcessorBusinessFeed</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="165" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="166">["Directory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="167">input["Directory"]</name>
<stringValue id="168">InputDirectory</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="169" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="170">["MessageType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="171">input["MessageType"]</name>
<stringValue id="172">PreProcessMessageType</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="173" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="174">["OutputDirectory"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="175">input["OutputDirectory"]</name>
<stringValue id="176">OutputDirectory</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="177" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="178">["ParentJobID"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="179">input["ParentJobID"]</name>
<stringValue id="180">ParentJobID</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="181" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="182">["SuccessAction"]@com/j2fe/feeds/SuccessAction@</UITypeHint>
<input>true</input>
<name id="183">input["SuccessAction"]</name>
<stringValue id="184">MOVE</stringValue>
<type>CONSTANT</type>
</item>
<item id="185" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="186">name</name>
<stringValue id="187">Process Files in Directory</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="188" type="java.util.HashSet">
<item id="189" type="com.j2fe.workflow.definition.Transition">
<name id="190">goto-next</name>
<source id="191">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="192">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="193">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="194" type="java.util.HashSet"/>
<targets id="195" type="java.util.HashSet">
<item idref="189" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="157"/>
</item>
</sources>
<targets id="196" type="java.util.HashSet">
<item idref="155" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="108"/>
</item>
</sources>
<targets id="197" type="java.util.HashSet">
<item idref="106" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="87"/>
</item>
</sources>
<targets id="198" type="java.util.HashSet">
<item idref="85" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="45"/>
</item>
</sources>
<targets id="199" type="java.util.HashSet">
<item id="200" type="com.j2fe.workflow.definition.Transition">
<name id="201">nothing-found</name>
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
<targets id="202" type="java.util.HashSet">
<item idref="27" type="com.j2fe.workflow.definition.Transition"/>
<item id="203" type="com.j2fe.workflow.definition.Transition">
<name id="204">goto-next</name>
<source idref="29"/>
<target id="205">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="206">Creating Array for Bulk</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="207">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="208" type="java.util.HashSet">
<item id="209" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="210">database</name>
<stringValue id="211">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="212" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="213">firstColumnsResult</name>
<stringValue id="214">BulkArray</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="215" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="216">indexedParameters[0]</name>
<stringValue id="217">NoOfThread</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="218" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="219">querySQL</name>
<stringValue id="220">select * from generate_series(1, ?)</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="221" type="java.util.HashSet">
<item idref="203" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="222" type="java.util.HashSet">
<item id="223" type="com.j2fe.workflow.definition.Transition">
<name id="224">nothing-found</name>
<source idref="205"/>
<target id="225">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="226">NOP  #2</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="227">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="228" type="java.util.HashSet">
<item idref="223" type="com.j2fe.workflow.definition.Transition"/>
<item id="229" type="com.j2fe.workflow.definition.Transition">
<name id="230">rows-found</name>
<source idref="205"/>
<target idref="225"/>
</item>
</sources>
<targets id="231" type="java.util.HashSet">
<item id="232" type="com.j2fe.workflow.definition.Transition">
<name id="233">goto-next</name>
<source idref="225"/>
<target id="234">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>true</directJoin>
<name id="235">Bulk Items </name>
<nodeHandler>com.j2fe.general.activities.BulkItems</nodeHandler>
<nodeHandlerClass id="236">com.j2fe.general.activities.BulkItems</nodeHandlerClass>
<parameters id="237" type="java.util.HashSet">
<item id="238" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="239">bulk</name>
<objectValue id="240" type="java.lang.Integer">1</objectValue>
<type>CONSTANT</type>
</item>
<item id="241" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="242">input</name>
<stringValue id="243">BulkArray</stringValue>
<type>VARIABLE</type>
</item>
<item id="244" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="245">output</name>
<stringValue id="246">BulkedItems</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<persistentVariables id="247" type="java.util.HashSet">
<item id="248" type="java.lang.String">BulkedItems
1000</item>
</persistentVariables>
<sources id="249" type="java.util.HashSet">
<item idref="232" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="250" type="java.util.HashSet">
<item id="251" type="com.j2fe.workflow.definition.Transition">
<name id="252">goto-next</name>
<source idref="234"/>
<target id="253">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="254"> Bulk Calculate upper and lower bound for Bulk Calculate upper and lower bound for</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="255">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="256" type="java.util.HashSet">
<item id="257" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="258">statements</name>
<stringValue id="259">int x=(int)maxbulk;&#13;
int  y=(int)SingleBulk[0];&#13;
&#13;
int startSeqNo=(y-1)*x ;&#13;
int lastRecordSeqNum=y*x;&#13;
int counter = startSeqNo;&#13;
bulkfilename = filename +"_"+startSeqNo+"_"+lastRecordSeqNum;</stringValue>
<type>CONSTANT</type>
</item>
<item id="260" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="261">variables["SingleBulk"]</name>
<stringValue id="262">BulkedItems</stringValue>
<type>VARIABLE</type>
</item>
<item id="263" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="264">variables["bulkfilename"]</name>
<stringValue id="265">BulkFileName</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="266" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="267">variables["counter"]</name>
<stringValue id="268">Counter</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="269" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="270">variables["filename"]</name>
<stringValue id="271">datefilename</stringValue>
<type>VARIABLE</type>
</item>
<item id="272" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="273">variables["lastRecordSeqNum"]</name>
<stringValue id="274">BulklastSeqNo</stringValue>
<type>VARIABLE</type>
</item>
<item id="275" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="276">variables["maxbulk"]</name>
<stringValue id="277">MaxBulkPerThread</stringValue>
<type>VARIABLE</type>
</item>
<item id="278" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="279">variables["startSeqNo"]</name>
<stringValue id="280">BulkstartSeqNo</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="281" type="java.util.HashSet">
<item idref="251" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="282" type="java.util.HashSet">
<item id="283" type="com.j2fe.workflow.definition.Transition">
<name id="284">goto-next</name>
<source idref="253"/>
<target id="285">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="286">Automatically generated</description>
<directJoin>false</directJoin>
<name id="287">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="288">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="289" type="java.util.HashSet">
<item idref="283" type="com.j2fe.workflow.definition.Transition"/>
<item id="290" type="com.j2fe.workflow.definition.Transition">
<name id="291">goto-next</name>
<source id="292">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="293">Automatically generated</description>
<directJoin>false</directJoin>
<name id="294">NOP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="295">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="296" type="java.util.HashSet">
<item id="297" type="com.j2fe.workflow.definition.Transition">
<name id="298">goto-next</name>
<source id="299">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="300">Write File</name>
<nodeHandler>com.j2fe.general.activities.File</nodeHandler>
<nodeHandlerClass id="301">com.j2fe.general.activities.File</nodeHandlerClass>
<parameters id="302" type="java.util.HashSet">
<item id="303" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="304">append</name>
<stringValue id="305">true</stringValue>
<type>CONSTANT</type>
</item>
<item id="306" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="307">appendEOFLine</name>
<objectValue id="308" type="java.lang.Boolean">true</objectValue>
<type>CONSTANT</type>
</item>
<item id="309" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="310">directory</name>
<stringValue id="311">tmpDir</stringValue>
<type>VARIABLE</type>
</item>
<item id="312" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="313">fileName</name>
<stringValue id="314">BulkFileName</stringValue>
<type>VARIABLE</type>
</item>
<item id="315" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="316">listOfText</name>
<stringValue id="317">OutputArray</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="318" type="java.util.HashSet">
<item id="319" type="com.j2fe.workflow.definition.Transition">
<name id="320">rows-found</name>
<source id="321">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="322">Database Select (Xor Split)</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="323">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="324" type="java.util.HashSet">
<item id="325" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="326">database</name>
<stringValue id="327">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="328" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="329">firstColumnsResult</name>
<stringValue id="330">OutputArray</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="331" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="332">indexedParameters[0]</name>
<stringValue id="333">startSeqNo</stringValue>
<type>VARIABLE</type>
</item>
<item id="334" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="335">indexedParameters[1]</name>
<stringValue id="336">lastRecordSeqNum</stringValue>
<type>VARIABLE</type>
</item>
<item id="337" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="338">querySQL</name>
<stringValue id="339">GetDataQuery</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="340" type="java.util.HashSet">
<item id="341" type="com.j2fe.workflow.definition.Transition">
<name id="342">goto-next</name>
<source id="343">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="344">Calculate upper and lower bounds</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="345">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="346" type="java.util.HashSet">
<item id="347" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="348">statements</name>
<stringValue id="349">int x=(int)counter;&#13;
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
<item id="350" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="351">variables["counter"]</name>
<stringValue id="352">Counter</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="353" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="354">variables["lastRecordSeqNum"]</name>
<stringValue id="355">lastRecordSeqNum</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="356" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="357">variables["maxbulk"]</name>
<stringValue id="358">BulklastSeqNo</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="359" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="360">variables["piumbulksize"]</name>
<stringValue id="361">CalcBulkSize</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="362" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="363">variables["startSeqNo"]</name>
<stringValue id="364">startSeqNo</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="365" type="java.util.HashSet">
<item id="366" type="com.j2fe.workflow.definition.Transition">
<name id="367">loop</name>
<source id="368">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="369">Simple For Loop </name>
<nodeHandler>com.j2fe.workflow.handler.impl.SimpleForEach</nodeHandler>
<nodeHandlerClass id="370">com.j2fe.workflow.handler.impl.SimpleForEach</nodeHandlerClass>
<parameters id="371" type="java.util.HashSet">
<item id="372" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="373">counter</name>
<stringValue id="374">Counter</stringValue>
<type>VARIABLE</type>
</item>
<item id="375" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="376">counter</name>
<stringValue id="377">Counter</stringValue>
<type>VARIABLE</type>
</item>
<item id="378" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="379">incrementValue</name>
<stringValue id="380">CalcBulkSize</stringValue>
<type>VARIABLE</type>
</item>
<item id="381" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="382">loopLength</name>
<stringValue id="383">BulklastSeqNo</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="384" type="java.util.HashSet">
<item id="385" type="com.j2fe.workflow.definition.Transition">
<name id="386">ToSplit</name>
<source idref="285"/>
<target idref="368"/>
</item>
</sources>
<targets id="387" type="java.util.HashSet">
<item id="388" type="com.j2fe.workflow.definition.Transition">
<name id="389">end-loop</name>
<source idref="368"/>
<target id="390">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>true</directJoin>
<name id="391">Synchronize </name>
<nodeHandler>com.j2fe.workflow.handler.impl.StandardAndJoinHandler</nodeHandler>
<nodeHandlerClass id="392">com.j2fe.workflow.handler.impl.StandardAndJoinHandler</nodeHandlerClass>
<sources id="393" type="java.util.HashSet">
<item idref="388" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="394" type="java.util.HashSet">
<item id="395" type="com.j2fe.workflow.definition.Transition">
<name id="396">goto-next</name>
<source idref="390"/>
<target id="397">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="398">NOP </name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="399">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="400" type="java.util.HashSet">
<item idref="395" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="401" type="java.util.HashSet">
<item id="402" type="com.j2fe.workflow.definition.Transition">
<name id="403">goto-next</name>
<source idref="397"/>
<target id="404">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="405">Merge PUB Files</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="406">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="407" type="java.util.HashSet">
<item id="408" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="409">statements</name>
<objectValue id="410" type="java.lang.String">import java.io.BufferedReader;&#13;
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
		int counter =0;&#13;
		for (File f : files) {&#13;
			FileInputStream fis;&#13;
			try {&#13;
				fis = new FileInputStream(f);&#13;
				BufferedReader in = new BufferedReader(new InputStreamReader(fis));&#13;
 &#13;
				String aLine;&#13;
				while ((aLine = in.readLine()) != null) &#13;
				{&#13;
					if (counter==0)&#13;
					{&#13;
						out.write(header);&#13;
						out.write("\r\n");&#13;
					}	&#13;
					out.write(aLine);&#13;
				    out.write("\r\n");&#13;
					counter = counter+1;&#13;
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
<item id="411" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="412">variables["FileName"]</name>
<stringValue id="413">datefilename</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="414" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="415">variables["header"]</name>
<stringValue id="416">FileHeader</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="417" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="418">variables["tmpDir"]</name>
<stringValue id="419">tmpDir</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
</parameters>
<sources id="420" type="java.util.HashSet">
<item idref="402" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="421" type="java.util.HashSet">
<item id="422" type="com.j2fe.workflow.definition.Transition">
<name id="423">goto-next</name>
<source idref="404"/>
<target id="424">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="425">Move Files</name>
<nodeHandler>com.j2fe.general.activities.CommandLine</nodeHandler>
<nodeHandlerClass id="426">com.j2fe.general.activities.CommandLine</nodeHandlerClass>
<parameters id="427" type="java.util.HashSet">
<item id="428" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="429">commandLine</name>
<stringValue id="430">mvCmd</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="431" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="432">directory</name>
<stringValue id="433">tmpDir</stringValue>
<type>VARIABLE</type>
<variablePart idref="2"/>
</item>
<item id="434" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="435">waitForEnd</name>
<stringValue id="436">true</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="437" type="java.util.HashSet">
<item idref="422" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="438" type="java.util.HashSet">
<item id="439" type="com.j2fe.workflow.definition.Transition">
<name id="440">goto-next</name>
<source idref="424"/>
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
<item idref="366" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="343"/>
</item>
</sources>
<targets id="441" type="java.util.HashSet">
<item idref="341" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="321"/>
</item>
</sources>
<targets id="442" type="java.util.HashSet">
<item id="443" type="com.j2fe.workflow.definition.Transition">
<name id="444">nothing-found</name>
<source idref="321"/>
<target idref="292"/>
</item>
<item idref="319" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="299"/>
</item>
</sources>
<targets id="445" type="java.util.HashSet">
<item idref="297" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="292"/>
</item>
<item idref="443" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="446" type="java.util.HashSet">
<item idref="290" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="285"/>
</item>
</sources>
<targets id="447" type="java.util.HashSet">
<item idref="385" type="com.j2fe.workflow.definition.Transition"/>
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
<item idref="229" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="19"/>
</item>
<item idref="439" type="com.j2fe.workflow.definition.Transition"/>
<item idref="200" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="448" type="java.util.HashSet">
<item idref="17" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="9"/>
</item>
</sources>
<targets id="449" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3"/>
</item>
</sources>
<targets id="450" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="451">Custom/BarraFeedProcessing</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="452">user1</lastChangeUser>
<lastUpdate id="453">2022-01-11T12:21:48.000+0530</lastUpdate>
<name id="454">P72_WF_BARRAPreProcessor</name>
<optimize>true</optimize>
<parameter id="455" type="java.util.HashMap">
<entry>
<key id="456" type="java.lang.String">BulkSize</key>
<value id="457" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="458">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="459" type="java.lang.String">FileHeader</key>
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
<key id="462" type="java.lang.String">InputDirectory</key>
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
<key id="465" type="java.lang.String">NoOfThread</key>
<value id="466" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="467">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="468" type="java.lang.String">OutputDirectory</key>
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
<key id="471" type="java.lang.String">ParentJobID</key>
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
<key id="474" type="java.lang.String">PreProcessMessageType</key>
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
<key id="477" type="java.lang.String">PreProcessedDirectory</key>
<value id="478" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="479">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="480" type="java.lang.String">PreProcessedFileName</key>
<value id="481" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="482">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="483" type="java.lang.String">PreProcessorBusinessFeed</key>
<value id="484" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="485">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="486" type="java.lang.String">SequenceQuery</key>
<value id="487" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="488">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="489" type="java.lang.String">Viewname</key>
<value id="490" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="491">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="492" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="191"/>
<status>RELEASED</status>
<variables id="493" type="java.util.HashMap">
<entry>
<key id="494" type="java.lang.String">BulkSize</key>
<value id="495" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="496">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="497" type="java.lang.Integer">1000</value>
</value>
</entry>
<entry>
<key id="498" type="java.lang.String">FileHeader</key>
<value id="499" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="500">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="501" type="java.lang.String">BarraId|SEDOL|CINS|CUSIP|ISIN|StartDate|EndDate</value>
</value>
</entry>
<entry>
<key id="502" type="java.lang.String">InputDirectory</key>
<value id="503" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="504">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="505" type="java.lang.String">/devgs/InputFiles/LocalInputFiles/Barra/</value>
</value>
</entry>
<entry>
<key id="506" type="java.lang.String">JobName</key>
<value id="507" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="508">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="509" type="java.lang.String">BarraPreProcessor</value>
</value>
</entry>
<entry>
<key id="510" type="java.lang.String">NoOfThread</key>
<value id="511" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="512">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="513" type="java.lang.Integer">10</value>
</value>
</entry>
<entry>
<key id="514" type="java.lang.String">OutputDirectory</key>
<value id="515" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="516">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="517" type="java.lang.String">/devgs/InputFiles/LocalInputFiles/Barra/done</value>
</value>
</entry>
<entry>
<key id="518" type="java.lang.String">ParentJobID</key>
<value id="519" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="520">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="521" type="java.lang.String">PreProcessMessageType</key>
<value id="522" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="523">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="524" type="java.lang.String">PreProcessBarraId</value>
</value>
</entry>
<entry>
<key id="525" type="java.lang.String">PreProcessedDirectory</key>
<value id="526" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="527">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="528" type="java.lang.String">/devgs/InputFiles/LocalInputFiles/Barra/preprocessed</value>
</value>
</entry>
<entry>
<key id="529" type="java.lang.String">PreProcessedFileName</key>
<value id="530" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="531">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="532" type="java.lang.String">BarraPreProcessed</value>
</value>
</entry>
<entry>
<key id="533" type="java.lang.String">PreProcessorBusinessFeed</key>
<value id="534" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="535">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="536" type="java.lang.String">P72_Custom_PreProcess</value>
</value>
</entry>
<entry>
<key id="537" type="java.lang.String">SequenceQuery</key>
<value id="538" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="539">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="540" type="java.lang.String">select distinct barra_id barra_id from ft_t_bar1</value>
</value>
</entry>
<entry>
<key id="541" type="java.lang.String">Viewname</key>
<value id="542" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="543">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
<value id="544" type="java.lang.String">ft_v_p72_barra</value>
</value>
</entry>
<entry>
<key id="545" type="java.lang.String">tmpDir</key>
<value id="546" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="547">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
</variables>
<version>28</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>

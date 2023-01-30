<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.22">
<package-comment/>
<businessobject displayString="4 - 05062022-PersistChanges" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">05062022-PersistChanges</comment>
<endNode id="2">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="3"/>
<directJoin>false</directJoin>
<name id="4">Stop</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="5">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="6" type="java.util.HashSet">
<item id="7" type="com.j2fe.workflow.definition.Transition">
<name id="8">false</name>
<source id="9">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="10">sql Found ?</name>
<nodeHandler>com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandler>
<nodeHandlerClass id="11">com.j2fe.workflow.handler.impl.SwitchCaseSplit</nodeHandlerClass>
<parameters id="12" type="java.util.HashSet">
<item id="13" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="14">caseItem</name>
<stringValue id="15">sqlFound</stringValue>
<type>VARIABLE</type>
</item>
<item id="16" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="17">defaultItem</name>
<stringValue id="18">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="19" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="20">nullTransition</name>
<stringValue id="21">false</stringValue>
<type>CONSTANT</type>
</item>
<item id="22" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="23">trimSpaces</name>
<objectValue id="24" type="java.lang.Boolean">true</objectValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="25" type="java.util.HashSet">
<item id="26" type="com.j2fe.workflow.definition.Transition">
<name id="27">goto-next</name>
<source id="28">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="29">Bean Shell Script (Standard)</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="30">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="31" type="java.util.HashSet">
<item id="32" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="33">statements</name>
<stringValue id="34">String sql="";&#13;
boolean flag=false;&#13;
&#13;
if (fullclean)&#13;
{&#13;
  sql =  "SELECT NTEL_OID FROM FT_T_NTEL WHERE NOTFCN_STAT_TYP = 'CLOSED' ";&#13;
  flag=true;&#13;
}&#13;
&#13;
else if (days != null &amp;&amp; days &gt; 0)&#13;
{&#13;
  sql =  "SELECT NTEL_OID FROM FT_T_NTEL WHERE NOTFCN_STAT_TYP = 'CLOSED' AND DATE(LAST_CHG_TMS) &lt; DATE(SYSDATE()) - " + days;&#13;
  flag=true;&#13;
}&#13;
</stringValue>
<type>CONSTANT</type>
</item>
<item id="35" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="36">variables["days"]</name>
<stringValue id="37">Days</stringValue>
<type>VARIABLE</type>
</item>
<item id="38" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="39">variables["flag"]</name>
<stringValue id="40">sqlFound</stringValue>
<type>VARIABLE</type>
</item>
<item id="41" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="42">variables["fullclean"]</name>
<stringValue id="43">FullClean</stringValue>
<type>VARIABLE</type>
</item>
<item id="44" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="45">variables["sql"]</name>
<stringValue id="46">sql</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="47" type="java.util.HashSet">
<item id="48" type="com.j2fe.workflow.definition.Transition">
<name id="49">goto-next</name>
<source id="50">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="51">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="52">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="53" type="java.util.HashSet"/>
<targets id="54" type="java.util.HashSet">
<item idref="48" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="28"/>
</item>
</sources>
<targets id="55" type="java.util.HashSet">
<item idref="26" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="9"/>
</item>
</sources>
<targets id="56" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
<item id="57" type="com.j2fe.workflow.definition.Transition">
<name id="58">true</name>
<source idref="9"/>
<target id="59">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="60">Get Entities</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="61">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="62" type="java.util.HashSet">
<item id="63" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="64">database</name>
<stringValue id="65">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="66" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="67">firstColumnsResult</name>
<stringValue id="68">NtelOidList</stringValue>
<type>VARIABLE</type>
<variablePart idref="3"/>
</item>
<item id="69" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="70">querySQL</name>
<stringValue id="71">sql</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="72" type="java.util.HashSet">
<item idref="57" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="73" type="java.util.HashSet">
<item id="74" type="com.j2fe.workflow.definition.Transition">
<name id="75">nothing-found</name>
<source idref="59"/>
<target idref="2"/>
</item>
<item id="76" type="com.j2fe.workflow.definition.Transition">
<name id="77">rows-found</name>
<source idref="59"/>
<target id="78">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="79">Create Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateJob</nodeHandler>
<nodeHandlerClass id="80">com.j2fe.streetlamp.activities.CreateJob</nodeHandlerClass>
<parameters id="81" type="java.util.HashSet">
<item id="82" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="83">configInfo</name>
<stringValue id="84">CLOSED NTEL Cleanup</stringValue>
<type>CONSTANT</type>
</item>
<item id="85" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="86">jobId</name>
<stringValue id="87">JobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="88" type="java.util.HashSet">
<item idref="76" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="89" type="java.util.HashSet">
<item id="90" type="com.j2fe.workflow.definition.Transition">
<name id="91">goto-next</name>
<source idref="78"/>
<target id="92">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="93">Calculate BulkSize</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="94">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="95" type="java.util.HashSet">
<item id="96" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="97">statements</name>
<stringValue id="98">int sizeOfInstrArray= instrIdArray.length;
int bulkSize;

if (sizeOfInstrArray &lt; noOfBranches)
bulkSize=1;
else
bulkSize = Math.round(sizeOfInstrArray/noOfBranches);</stringValue>
<type>CONSTANT</type>
</item>
<item id="99" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="100">variables["bulkSize"]</name>
<stringValue id="101">BulkSize</stringValue>
<type>VARIABLE</type>
</item>
<item id="102" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="103">variables["instrIdArray"]</name>
<stringValue id="104">NtelOidList</stringValue>
<type>VARIABLE</type>
</item>
<item id="105" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="106">["noOfBranches"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="107">variables["noOfBranches"]</name>
<stringValue id="108">NoOfBranches</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="109" type="java.util.HashSet">
<item idref="90" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="110" type="java.util.HashSet">
<item id="111" type="com.j2fe.workflow.definition.Transition">
<name id="112">goto-next</name>
<source idref="92"/>
<target id="113">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>true</directJoin>
<name id="114">Bulk Items</name>
<nodeHandler>com.j2fe.general.activities.BulkItems</nodeHandler>
<nodeHandlerClass id="115">com.j2fe.general.activities.BulkItems</nodeHandlerClass>
<parameters id="116" type="java.util.HashSet">
<item id="117" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="118">bulk</name>
<stringValue id="119">BulkSize</stringValue>
<type>VARIABLE</type>
</item>
<item id="120" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="121">input</name>
<stringValue id="122">NtelOidList</stringValue>
<type>VARIABLE</type>
</item>
<item id="123" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="124">output</name>
<stringValue id="125">NtelOidBulks</stringValue>
<type>VARIABLE</type>
<variablePart idref="3"/>
</item>
</parameters>
<persistentVariables id="126" type="java.util.HashSet">
<item id="127" type="java.lang.String">NtelOidBulks
1000</item>
</persistentVariables>
<sources id="128" type="java.util.HashSet">
<item idref="111" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="129" type="java.util.HashSet">
<item id="130" type="com.j2fe.workflow.definition.Transition">
<name id="131">goto-next</name>
<source idref="113"/>
<target id="132">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="133">Initialize loop counter</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="134">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="135" type="java.util.HashSet">
<item id="136" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="137">statements</name>
<stringValue id="138">int counter = 0;</stringValue>
<type>CONSTANT</type>
</item>
<item id="139" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="140">variables["counter"]</name>
<stringValue id="141">Counter</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="142" type="java.util.HashSet">
<item idref="130" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="143" type="java.util.HashSet">
<item id="144" type="com.j2fe.workflow.definition.Transition">
<name id="145">goto-next</name>
<source idref="132"/>
<target id="146">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="147">Automatically generated</description>
<directJoin>false</directJoin>
<name id="148">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="149">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="150" type="java.util.HashSet">
<item idref="144" type="com.j2fe.workflow.definition.Transition"/>
<item id="151" type="com.j2fe.workflow.definition.Transition">
<name id="152">goto-next</name>
<source id="153">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="154">NOP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="155">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="156" type="java.util.HashSet">
<item id="157" type="com.j2fe.workflow.definition.Transition">
<name id="158">goto-next</name>
<source id="159">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="160">Database Statement (Standard) #2</name>
<nodeHandler>com.j2fe.general.activities.database.DBStatement</nodeHandler>
<nodeHandlerClass id="161">com.j2fe.general.activities.database.DBStatement</nodeHandlerClass>
<parameters id="162" type="java.util.HashSet">
<item id="163" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="164">database</name>
<stringValue id="165">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="166" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="167">indexedParameters[0]</name>
<stringValue id="168">NtelOid</stringValue>
<type>VARIABLE</type>
</item>
<item id="169" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="170">querySQL</name>
<stringValue id="171">DELETE FROM FT_T_NTEL WHERE NTEL_OID=?</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="172" type="java.util.HashSet">
<item id="173" type="com.j2fe.workflow.definition.Transition">
<name id="174">loop</name>
<source id="175">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="176">For Loop</name>
<nodeHandler>com.j2fe.workflow.handler.impl.ForEach</nodeHandler>
<nodeHandlerClass id="177">com.j2fe.workflow.handler.impl.ForEach</nodeHandlerClass>
<parameters id="178" type="java.util.HashSet">
<item id="179" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="180">counter</name>
<stringValue id="181">Counter</stringValue>
<type>VARIABLE</type>
</item>
<item id="182" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="183">counter</name>
<stringValue id="184">Counter</stringValue>
<type>VARIABLE</type>
</item>
<item id="185" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="186">input</name>
<stringValue id="187">NtelOidBulks</stringValue>
<type>VARIABLE</type>
</item>
<item id="188" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="189">output</name>
<stringValue id="190">NtelOid</stringValue>
<type>VARIABLE</type>
<variablePart idref="3"/>
</item>
</parameters>
<sources id="191" type="java.util.HashSet">
<item id="192" type="com.j2fe.workflow.definition.Transition">
<name id="193">ToSplit</name>
<source idref="146"/>
<target idref="175"/>
</item>
</sources>
<targets id="194" type="java.util.HashSet">
<item id="195" type="com.j2fe.workflow.definition.Transition">
<name id="196">end-loop</name>
<source idref="175"/>
<target id="197">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>true</directJoin>
<name id="198">Synchronize</name>
<nodeHandler>com.j2fe.workflow.handler.impl.StandardAndJoinHandler</nodeHandler>
<nodeHandlerClass id="199">com.j2fe.workflow.handler.impl.StandardAndJoinHandler</nodeHandlerClass>
<sources id="200" type="java.util.HashSet">
<item idref="195" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="201" type="java.util.HashSet">
<item id="202" type="com.j2fe.workflow.definition.Transition">
<name id="203">goto-next</name>
<source idref="197"/>
<target id="204">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="205">Consolidate Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.ConsolidateJob</nodeHandler>
<nodeHandlerClass id="206">com.j2fe.streetlamp.activities.ConsolidateJob</nodeHandlerClass>
<parameters id="207" type="java.util.HashSet">
<item id="208" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="209">jobId</name>
<stringValue id="210">JobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="211" type="java.util.HashSet">
<item idref="202" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="212" type="java.util.HashSet">
<item id="213" type="com.j2fe.workflow.definition.Transition">
<name id="214">goto-next</name>
<source idref="204"/>
<target id="215">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="216">Close Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.CloseJob</nodeHandler>
<nodeHandlerClass id="217">com.j2fe.streetlamp.activities.CloseJob</nodeHandlerClass>
<parameters id="218" type="java.util.HashSet">
<item id="219" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="220">jobId</name>
<stringValue id="221">JobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="222" type="java.util.HashSet">
<item idref="213" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="223" type="java.util.HashSet">
<item id="224" type="com.j2fe.workflow.definition.Transition">
<name id="225">goto-next</name>
<source idref="215"/>
<target idref="2"/>
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
<item idref="173" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="159"/>
</item>
</sources>
<targets id="226" type="java.util.HashSet">
<item idref="157" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="153"/>
</item>
</sources>
<targets id="227" type="java.util.HashSet">
<item idref="151" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="146"/>
</item>
</sources>
<targets id="228" type="java.util.HashSet">
<item idref="192" type="com.j2fe.workflow.definition.Transition"/>
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
</targets>
<type>ACTIVITY</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</target>
</item>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="2"/>
</item>
<item idref="224" type="com.j2fe.workflow.definition.Transition"/>
<item idref="74" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="229" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="230">Custom/Miscellaneous</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="231">user1</lastChangeUser>
<lastUpdate id="232">2022-06-05T18:25:21.000+0530</lastUpdate>
<name id="233">P72_WF_NTELCleanup</name>
<optimize>true</optimize>
<parameter id="234" type="java.util.HashMap">
<entry>
<key id="235" type="java.lang.String">Days</key>
<value id="236" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="237">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="238">Number of days.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="239" type="java.lang.String">FullClean</key>
<value id="240" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="241">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="242">Will clean all approved entries</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="243" type="java.lang.String">NoOfBranches</key>
<value id="244" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="245">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="246" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="50"/>
<status>RELEASED</status>
<variables id="247" type="java.util.HashMap">
<entry>
<key id="248" type="java.lang.String">Days</key>
<value id="249" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="250">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="251">Number of days.</description>
<persistent>false</persistent>
<value id="252" type="java.lang.Integer">1</value>
</value>
</entry>
<entry>
<key id="253" type="java.lang.String">FullClean</key>
<value id="254" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="255">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="256">Will clean all approved entries</description>
<persistent>false</persistent>
<value id="257" type="java.lang.Boolean">false</value>
</value>
</entry>
<entry>
<key id="258" type="java.lang.String">NoOfBranches</key>
<value id="259" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="260">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<persistent>false</persistent>
<value id="261" type="java.lang.Integer">10</value>
</value>
</entry>
</variables>
<version>4</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>

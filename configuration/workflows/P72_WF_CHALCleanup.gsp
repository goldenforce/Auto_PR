<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.19">
<package-comment/>
<businessobject displayString="2 - Initial" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">Initial</comment>
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
  sql =  "SELECT CHAL_OID FROM FT_T_CHAL WHERE APPROVAL_STAT_TYP in ('SYSTEM APPROVED')";&#13;
  flag=true;&#13;
}&#13;
&#13;
else if (days != null &amp;&amp; days &gt; 0)&#13;
{&#13;
  sql =  "SELECT CHAL_OID FROM FT_T_CHAL WHERE APPROVAL_STAT_TYP in ('SYSTEM APPROVED') AND DATE(LAST_CHG_TMS) &lt; DATE(SYSDATE()) - " + days;&#13;
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
<stringValue id="68">ChalOidList</stringValue>
<type>VARIABLE</type>
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
<stringValue id="84">Change Approval Cleanup</stringValue>
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
<stringValue id="104">ChalOidList</stringValue>
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
<stringValue id="122">ChalOidList</stringValue>
<type>VARIABLE</type>
</item>
<item id="123" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="124">output</name>
<stringValue id="125">ChalOidBulks</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="126" type="java.util.HashSet">
<item idref="111" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="127" type="java.util.HashSet">
<item id="128" type="com.j2fe.workflow.definition.Transition">
<name id="129">goto-next</name>
<source idref="113"/>
<target id="130">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="131">Initialize loop counter</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="132">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="133" type="java.util.HashSet">
<item id="134" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="135">statements</name>
<stringValue id="136">int counter = 0;</stringValue>
<type>CONSTANT</type>
</item>
<item id="137" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="138">variables["counter"]</name>
<stringValue id="139">Counter</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="140" type="java.util.HashSet">
<item idref="128" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="141" type="java.util.HashSet">
<item id="142" type="com.j2fe.workflow.definition.Transition">
<name id="143">goto-next</name>
<source idref="130"/>
<target id="144">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="145">Automatically generated</description>
<directJoin>false</directJoin>
<name id="146">Merge</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="147">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="148" type="java.util.HashSet">
<item idref="142" type="com.j2fe.workflow.definition.Transition"/>
<item id="149" type="com.j2fe.workflow.definition.Transition">
<name id="150">goto-next</name>
<source id="151">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="152">NOP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="153">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="154" type="java.util.HashSet">
<item id="155" type="com.j2fe.workflow.definition.Transition">
<name id="156">goto-next</name>
<source id="157">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="158">Database Statement (Standard) #2</name>
<nodeHandler>com.j2fe.general.activities.database.DBStatement</nodeHandler>
<nodeHandlerClass id="159">com.j2fe.general.activities.database.DBStatement</nodeHandlerClass>
<parameters id="160" type="java.util.HashSet">
<item id="161" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="162">database</name>
<stringValue id="163">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="164" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="165">indexedParameters[0]</name>
<stringValue id="166">ChalOid</stringValue>
<type>VARIABLE</type>
</item>
<item id="167" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="168">querySQL</name>
<stringValue id="169">DELETE FROM FT_T_CHAL WHERE CHAL_OID=?</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="170" type="java.util.HashSet">
<item id="171" type="com.j2fe.workflow.definition.Transition">
<name id="172">loop</name>
<source id="173">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="174">For Loop</name>
<nodeHandler>com.j2fe.workflow.handler.impl.ForEach</nodeHandler>
<nodeHandlerClass id="175">com.j2fe.workflow.handler.impl.ForEach</nodeHandlerClass>
<parameters id="176" type="java.util.HashSet">
<item id="177" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="178">counter</name>
<stringValue id="179">Counter</stringValue>
<type>VARIABLE</type>
</item>
<item id="180" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="181">counter</name>
<stringValue id="182">Counter</stringValue>
<type>VARIABLE</type>
</item>
<item id="183" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="184">input</name>
<stringValue id="185">ChalOidBulks</stringValue>
<type>VARIABLE</type>
</item>
<item id="186" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="187">output</name>
<stringValue id="188">ChalOid</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="189" type="java.util.HashSet">
<item id="190" type="com.j2fe.workflow.definition.Transition">
<name id="191">ToSplit</name>
<source idref="144"/>
<target idref="173"/>
</item>
</sources>
<targets id="192" type="java.util.HashSet">
<item id="193" type="com.j2fe.workflow.definition.Transition">
<name id="194">end-loop</name>
<source idref="173"/>
<target id="195">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>true</directJoin>
<name id="196">Synchronize</name>
<nodeHandler>com.j2fe.workflow.handler.impl.StandardAndJoinHandler</nodeHandler>
<nodeHandlerClass id="197">com.j2fe.workflow.handler.impl.StandardAndJoinHandler</nodeHandlerClass>
<sources id="198" type="java.util.HashSet">
<item idref="193" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="199" type="java.util.HashSet">
<item id="200" type="com.j2fe.workflow.definition.Transition">
<name id="201">goto-next</name>
<source idref="195"/>
<target id="202">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="203">Consolidate Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.ConsolidateJob</nodeHandler>
<nodeHandlerClass id="204">com.j2fe.streetlamp.activities.ConsolidateJob</nodeHandlerClass>
<parameters id="205" type="java.util.HashSet">
<item id="206" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="207">jobId</name>
<stringValue id="208">JobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="209" type="java.util.HashSet">
<item idref="200" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="210" type="java.util.HashSet">
<item id="211" type="com.j2fe.workflow.definition.Transition">
<name id="212">goto-next</name>
<source idref="202"/>
<target id="213">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="214">Close Job</name>
<nodeHandler>com.j2fe.streetlamp.activities.CloseJob</nodeHandler>
<nodeHandlerClass id="215">com.j2fe.streetlamp.activities.CloseJob</nodeHandlerClass>
<parameters id="216" type="java.util.HashSet">
<item id="217" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="218">jobId</name>
<stringValue id="219">JobID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="220" type="java.util.HashSet">
<item idref="211" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="221" type="java.util.HashSet">
<item id="222" type="com.j2fe.workflow.definition.Transition">
<name id="223">goto-next</name>
<source idref="213"/>
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
<item idref="171" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="157"/>
</item>
</sources>
<targets id="224" type="java.util.HashSet">
<item idref="155" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="151"/>
</item>
</sources>
<targets id="225" type="java.util.HashSet">
<item idref="149" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="144"/>
</item>
</sources>
<targets id="226" type="java.util.HashSet">
<item idref="190" type="com.j2fe.workflow.definition.Transition"/>
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
<item idref="222" type="com.j2fe.workflow.definition.Transition"/>
<item idref="74" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="227" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="228">Custom/Miscellaneous</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="229">user1</lastChangeUser>
<lastUpdate id="230">2022-03-28T13:04:33.000+0530</lastUpdate>
<name id="231">P72_WF_CHALCleanup</name>
<optimize>true</optimize>
<parameter id="232" type="java.util.HashMap">
<entry>
<key id="233" type="java.lang.String">Days</key>
<value id="234" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="235">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="236">Number of days.</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="237" type="java.lang.String">FullClean</key>
<value id="238" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="239">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="240">Will clean all approved entries</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="241" type="java.lang.String">NoOfBranches</key>
<value id="242" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="243">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="244" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="50"/>
<status>RELEASED</status>
<variables id="245" type="java.util.HashMap">
<entry>
<key id="246" type="java.lang.String">Days</key>
<value id="247" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="248">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="249">Number of days.</description>
<persistent>false</persistent>
<value id="250" type="java.lang.Integer">1</value>
</value>
</entry>
<entry>
<key id="251" type="java.lang.String">FullClean</key>
<value id="252" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="253">java.lang.Boolean</className>
<clazz>java.lang.Boolean</clazz>
<description id="254">Will clean all approved entries</description>
<persistent>false</persistent>
<value id="255" type="java.lang.Boolean">false</value>
</value>
</entry>
<entry>
<key id="256" type="java.lang.String">NoOfBranches</key>
<value id="257" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="258">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<persistent>false</persistent>
<value id="259" type="java.lang.Integer">10</value>
</value>
</entry>
</variables>
<version>2</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>

<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.15">
<package-comment/>
<businessobject displayString="7 - Final" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>false</alwaysPersist>
<clustered>true</clustered>
<comment id="1">Final</comment>
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
<name id="8">goto-next</name>
<source id="9">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="10">Call Subworkflow</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="11">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="12" type="java.util.HashSet">
<item id="13" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="14">["entityList"]@[Ljava/lang/String;@</UITypeHint>
<input>true</input>
<name id="15">input["entityList"]</name>
<stringValue id="16">TRIDArray</stringValue>
<type>VARIABLE</type>
</item>
<item id="17" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="18">name</name>
<stringValue id="19">ResubmitExceptions</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="20" type="java.util.HashSet">
<item id="21" type="com.j2fe.workflow.definition.Transition">
<name id="22">goto-next</name>
<source id="23">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="24">Calculate Bulk Size</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="25">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="26" type="java.util.HashSet">
<item id="27" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="28">statements</name>
<stringValue id="29">import org.apache.log4j.Logger;&#13;
Logger logger = Logger.getLogger("DBBulkResubmit");&#13;
Integer Counter = new Integer(0);&#13;
Integer bulkSize = Math.ceil(tridArray.length / parallelThreads);&#13;
if (bulkSize==0)&#13;
   bulkSize=1;&#13;
logger.info("Using bulkSize=" + new Integer(bulkSize) + ", Size=" + new Integer(tridArray.length) + ", ParallelThreads=" + new Integer(parallelThreads));</stringValue>
<type>CONSTANT</type>
</item>
<item id="30" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="31">variables["bulkSize"]</name>
<stringValue id="32">BulkSize</stringValue>
<type>VARIABLE</type>
</item>
<item id="33" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="34">variables["parallelThreads"]</name>
<stringValue id="35">ThreadsInParallel</stringValue>
<type>VARIABLE</type>
</item>
<item id="36" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="37">variables["tridArray"]</name>
<stringValue id="38">TRIDArray</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="39" type="java.util.HashSet">
<item id="40" type="com.j2fe.workflow.definition.Transition">
<name id="41">rows-found</name>
<source id="42">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="43">Fetch TRID's</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="44">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="45" type="java.util.HashSet">
<item id="46" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="47">database</name>
<stringValue id="48">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="49" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="50">firstColumnsResult</name>
<stringValue id="51">TRIDArray</stringValue>
<type>VARIABLE</type>
</item>
<item id="52" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="53">querySQL</name>
<stringValue id="54">ResubmitSql</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="55" type="java.util.HashSet">
<item id="56" type="com.j2fe.workflow.definition.Transition">
<name id="57">goto-next</name>
<source id="58">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="59">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="60">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="61" type="java.util.HashSet"/>
<targets id="62" type="java.util.HashSet">
<item idref="56" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="42"/>
</item>
</sources>
<targets id="63" type="java.util.HashSet">
<item id="64" type="com.j2fe.workflow.definition.Transition">
<name id="65">nothing-found</name>
<source idref="42"/>
<target idref="2"/>
</item>
<item idref="40" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="23"/>
</item>
</sources>
<targets id="66" type="java.util.HashSet">
<item idref="21" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="9"/>
</item>
</sources>
<targets id="67" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="2"/>
</item>
<item idref="64" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="68" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="69">Custom/ExceptionManagement</group>
<haltOnError>true</haltOnError>
<lastChangeUser id="70">user1</lastChangeUser>
<lastUpdate id="71">2021-12-06T14:09:52.000+0530</lastUpdate>
<name id="72">P72_WF_BulkResubmit</name>
<optimize>true</optimize>
<parameter id="73" type="java.util.HashMap">
<entry>
<key id="74" type="java.lang.String">ResubmitSql</key>
<value id="75" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="76">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="77">Query to fetch TRN_ID's for resubmission</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="78" type="java.lang.String">ThreadsInParallel</key>
<value id="79" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="80">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="81">Number of parallel branches for processing</description>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="82" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="58"/>
<status>RELEASED</status>
<variables id="83" type="java.util.HashMap">
<entry>
<key id="84" type="java.lang.String">ResubmitSql</key>
<value id="85" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="86">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="87">Query to fetch TRN_ID's for resubmission</description>
<persistent>false</persistent>
<value id="88" type="java.lang.String">select n.ntel_oid from ft_t_trid t, ft_t_ntel n where t.input_msg_typ = 'RFTDSP_Equities' and t.crrnt_severity_cde  in ('40','50')  and t.trn_id=n.last_chg_trn_id and n.notfcn_id ='640' and n.notfcn_stat_typ ='OPEN'</value>
</value>
</entry>
<entry>
<key id="89" type="java.lang.String">ThreadsInParallel</key>
<value id="90" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="91">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description id="92">Number of parallel branches for processing</description>
<persistent>false</persistent>
<value id="93" type="java.lang.Integer">5</value>
</value>
</entry>
</variables>
<version>7</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>

<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.17">
<package-comment/>
<businessobject displayString="13 - update chal" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>true</alwaysPersist>
<clustered>true</clustered>
<comment id="1">update chal</comment>
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
<name id="10">NOP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="11">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="12" type="java.util.HashSet">
<item id="13" type="com.j2fe.workflow.definition.Transition">
<name id="14">goto-next</name>
<source id="15">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>true</directJoin>
<name id="16">Synchronize</name>
<nodeHandler>com.j2fe.workflow.handler.impl.StandardAndJoinHandler</nodeHandler>
<nodeHandlerClass id="17">com.j2fe.workflow.handler.impl.StandardAndJoinHandler</nodeHandlerClass>
<sources id="18" type="java.util.HashSet">
<item id="19" type="com.j2fe.workflow.definition.Transition">
<name id="20">goto-next</name>
<source id="21">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="22">NOP</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="23">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="24" type="java.util.HashSet">
<item id="25" type="com.j2fe.workflow.definition.Transition">
<name id="26">goto-next</name>
<source id="27">
<activation>TRANSACTIONAL</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="28">Call Subworkflow</name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="29">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="30" type="java.util.HashSet">
<item id="31" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="32">["Message"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="33">input["Message"]</name>
<stringValue id="34">InputMessage</stringValue>
<type>VARIABLE</type>
</item>
<item id="35" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="36">["MessageType"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="37">input["MessageType"]</name>
<stringValue id="38">MessageType</stringValue>
<type>VARIABLE</type>
</item>
<item id="39" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="40">["TransactionId"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="41">input["TransactionId"]</name>
<stringValue id="42">TransactionID</stringValue>
<type>VARIABLE</type>
</item>
<item id="43" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="44">name</name>
<stringValue id="45">Basic Message Processing</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="46" type="java.util.HashSet">
<item id="47" type="com.j2fe.workflow.definition.Transition">
<name id="48">goto-next</name>
<source id="49">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="50">Create Transaction</name>
<nodeHandler>com.j2fe.streetlamp.activities.CreateTransaction</nodeHandler>
<nodeHandlerClass id="51">com.j2fe.streetlamp.activities.CreateTransaction</nodeHandlerClass>
<parameters id="52" type="java.util.HashSet">
<item id="53" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="54">messageType</name>
<stringValue id="55">MessageType</stringValue>
<type>VARIABLE</type>
</item>
<item id="56" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="57">transactionId</name>
<stringValue id="58">TransactionID</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="59" type="java.util.HashSet">
<item id="60" type="com.j2fe.workflow.definition.Transition">
<name id="61">goto-next</name>
<source id="62">
<activation>ASYNCHRONOUS</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>true</directJoin>
<name id="63">For Each Split</name>
<nodeHandler>com.j2fe.workflow.handler.impl.GenericSplit</nodeHandler>
<nodeHandlerClass id="64">com.j2fe.workflow.handler.impl.GenericSplit</nodeHandlerClass>
<parameters id="65" type="java.util.HashSet">
<item id="66" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="67">input</name>
<stringValue id="68">InputMessageArray</stringValue>
<type>VARIABLE</type>
</item>
<item id="69" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="70">output</name>
<stringValue id="71">InputMessage</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="72" type="java.util.HashSet">
<item id="73" type="com.j2fe.workflow.definition.Transition">
<name id="74">rows-found</name>
<source id="75">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="76">Fetch Instrument and Create XML</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="77">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="78" type="java.util.HashSet">
<item id="79" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="80">database</name>
<stringValue id="81">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="82" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="83">firstColumnsResult</name>
<stringValue id="84">InputMessageArray</stringValue>
<type>VARIABLE</type>
</item>
<item id="85" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="86">[0]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="87">indexedParameters[0]</name>
<stringValue id="88">ApprovalStatType</stringValue>
<type>VARIABLE</type>
<variablePart id="89">[0]</variablePart>
</item>
<item id="90" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="91">[1]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="92">indexedParameters[1]</name>
<stringValue id="93">ApprovalStatType</stringValue>
<type>VARIABLE</type>
<variablePart id="94">[0]</variablePart>
</item>
<item id="95" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="96">[2]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="97">indexedParameters[2]</name>
<stringValue id="98">ApprovalStatType</stringValue>
<type>VARIABLE</type>
<variablePart id="99">[0]</variablePart>
</item>
<item id="100" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="101">[3]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="102">indexedParameters[3]</name>
<stringValue id="103">IssactID</stringValue>
<type>VARIABLE</type>
<variablePart id="104">[0]</variablePart>
</item>
<item id="105" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="106">querySQL</name>
<objectValue id="107" type="java.lang.String">SELECT  '&lt;?xml version="1.0" encoding="UTF-8"?&gt;&#13;
&lt;!DOCTYPE STREET_REF SYSTEM "fti://repository/dtd/STREET_REF"&gt;' ||&#13;
        XMLElement(NAME "STREET_REF", &#13;
            XMLAttributes( 10000000 AS "MESSAGE_ID",'' AS "MESSAGECONDITION",'GUEST' AS "USERID",'' AS "EVENT",'' AS "TRANSACTIONCODE",'false' AS "TRACE",'Y' AS "IS_GSO_MESSAGE"),&#13;
            XMLElement(NAME "HEADER",&#13;
                XMLElement(NAME "CHGAPPRTYP" ,XMLAttributes('Y' AS "VALUE")),&#13;
                XMLElement(NAME "CURRENTTIMESTAMP" ,XMLAttributes( SYSDATE() AS "VALUE")),&#13;
                XMLElement(NAME "LOCALE",&#13;
                           XMLElement(NAME "NLS",XMLAttributes( 'ENGLISH' AS "VALUE")),&#13;
                           XMLElement(NAME "TIMEZONE",XMLAttributes( 'ET' AS "VALUE"))&#13;
                          ),              &#13;
               XMLElement(NAME "MSGCLASSIFICATION",XMLAttributes('WEBMSG' AS "VALUE")),&#13;
               XMLElement(NAME "USERID",XMLAttributes( CHAL.LAST_CHG_USR_ID AS "VALUE"))&#13;
                      ),                 &#13;
               XMLElement(NAME "SEGMENT",&#13;
                           XMLAttributes( 'ChangeAuditLog' AS "TYPE",'UPDATE' AS "ACTION"),&#13;
                           XMLElement(NAME "ChangeAuditLog",&#13;
                              XMLElement(NAME "APPROVALSTATTYP",XMLAttributes( ? ::text AS "VALUE")),&#13;
                              XMLElement(NAME "CHALOID",XMLAttributes( CHAL.CHAL_OID AS "VALUE")),&#13;
                              XMLElement(NAME "VERIFUSRID",XMLAttributes( CHAL.VERIF_USR_ID AS "VALUE")),                             &#13;
							  XMLElement(NAME "REVIEWERUSRID",XMLAttributes( CHAL.REVIEWER_USR_ID AS "VALUE")),&#13;
							  XMLElement(NAME "BUSINESSCMNTTXT",XMLAttributes( ? ::text AS "VALUE")),&#13;
							  XMLElement(NAME "LOCKLEVELTYP",XMLAttributes( 'NONE' AS "VALUE")),&#13;
							  XMLElement(NAME "LOCKCMNTTXT",XMLAttributes( ? ::text AS "VALUE"))&#13;
                                     )&#13;
                         )&#13;
)  &#13;
from ft_t_chal chal&#13;
where (chal.END_TMS IS NULL OR chal.END_TMS &gt; SYSDATE())&#13;
and chal_oid in (select distinct chal_oid from (select chal.chal_oid, iadc.issact_id from ft_t_iadc iadc, ft_t_chal chal, ft_t_iacm iacm&#13;
					where 1=1 &#13;
					and iadc.instr_id=chal.cross_ref_id&#13;
					and iadc.issact_id =iacm.issact_id &#13;
					and iacm.cmnt_reas_typ in ('OLDISIN','OLDCUSIP','OLDNAME','OLDTKR','OLDSEDOL')&#13;
					and chal.approval_stat_typ ='PENDING'&#13;
					and iacm.ln_num =1&#13;
					and (iadc.end_tms is null or iadc.end_tms &gt; sysdate())					&#13;
					and (iacm.end_tms is null or iacm.end_tms &gt; sysdate())&#13;
				 union&#13;
				 select chal.chal_oid, iadc.issact_id from ft_t_iadc iadc, ft_t_chal chal&#13;
					where 1=1&#13;
					and iadc.instr_id=chal.cross_ref_id&#13;
					and chal.approval_stat_typ ='PENDING'&#13;
					and exists (select 1 from FT_T_MIXR MIXR, FT_T_ISID ISID &#13;
								where iadc.MKT_ISS_OID = MIXR.MKT_ISS_OID &#13;
								and ISID.id_ctxt_typ ='RIC' &#13;
								and ISID.ISID_OID = MIXR.ISID_OID &#13;
								and ISID.ISS_ID = BEFORE_VAL_TXT &#13;
								and ISID.END_TMS IS NULL &#13;
								and MIXR.END_TMS IS NULL)				&#13;
								) chalset&#13;
						where issact_id=?::text&#13;
					);</objectValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="108" type="java.util.HashSet">
<item id="109" type="com.j2fe.workflow.definition.Transition">
<name id="110">goto-next</name>
<source id="111">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="112">Update CHAL</name>
<nodeHandler>com.j2fe.general.activities.database.DBStatement</nodeHandler>
<nodeHandlerClass id="113">com.j2fe.general.activities.database.DBStatement</nodeHandlerClass>
<parameters id="114" type="java.util.HashSet">
<item id="115" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="116">database</name>
<stringValue id="117">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="118" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="119">indexedParameters[0]</name>
<stringValue id="120">IssactID</stringValue>
<type>VARIABLE</type>
<variablePart id="121">[0]</variablePart>
</item>
<item id="122" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="123">querySQL</name>
<stringValue id="124">update ft_t_chal set approval_stat_typ ='REJECT' where chal_oid in (&#13;
select chal_oid from ft_t_chal chal,chal_latest cv where chal.cross_ref_id = (select instr_id from fT_t_iadc where issact_id=?)&#13;
and chal.cross_ref_id = cv.cross_ref_id&#13;
and chal.before_val_txt =cv.before_val_txt&#13;
and chal.fld_label_txt =cv.fld_label_txt&#13;
and chal.start_tms &lt;&gt;cv.max)</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="125" type="java.util.HashSet">
<item id="126" type="com.j2fe.workflow.definition.Transition">
<name id="127">goto-next</name>
<source id="128">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="2"/>
<directJoin>false</directJoin>
<name id="129">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="130">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="131" type="java.util.HashSet"/>
<targets id="132" type="java.util.HashSet">
<item idref="126" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="111"/>
</item>
</sources>
<targets id="133" type="java.util.HashSet">
<item idref="109" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="75"/>
</item>
</sources>
<targets id="134" type="java.util.HashSet">
<item id="135" type="com.j2fe.workflow.definition.Transition">
<name id="136">nothing-found</name>
<source idref="75"/>
<target idref="9"/>
</item>
<item idref="73" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="62"/>
</item>
</sources>
<targets id="137" type="java.util.HashSet">
<item idref="60" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ANDSPLIT</type>
</source>
<target idref="49"/>
</item>
</sources>
<targets id="138" type="java.util.HashSet">
<item idref="47" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="27"/>
</item>
</sources>
<targets id="139" type="java.util.HashSet">
<item idref="25" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="21"/>
</item>
</sources>
<targets id="140" type="java.util.HashSet">
<item idref="19" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="15"/>
</item>
</sources>
<targets id="141" type="java.util.HashSet">
<item idref="13" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ANDJOIN</type>
</source>
<target idref="9"/>
</item>
<item idref="135" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="142" type="java.util.HashSet">
<item idref="7" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="3"/>
</item>
</sources>
<targets id="143" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="144">Custom/Miscellaneous</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="145">user1</lastChangeUser>
<lastUpdate id="146">2022-07-04T14:22:04.000+0530</lastUpdate>
<name id="147">P72_WF_ApproveCACHAL</name>
<optimize>true</optimize>
<parameter id="148" type="java.util.HashMap">
<entry>
<key id="149" type="java.lang.String">ApprovalStatType</key>
<value id="150" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="151">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="152" type="java.lang.String">IssactID</key>
<value id="153" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="154">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description idref="2"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="155" type="java.lang.String">MessageType</key>
<value id="156" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="157">java.lang.String</className>
<clazz>java.lang.String</clazz>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="158" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>true</purgeAtEnd>
<retries>0</retries>
<startNode idref="128"/>
<status>RELEASED</status>
<variables id="159" type="java.util.HashMap">
<entry>
<key id="160" type="java.lang.String">ApprovalStatType</key>
<value id="161" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="162">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="163" type="java.lang.String">BulkSize</key>
<value id="164" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="165">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<persistent>false</persistent>
<value id="166" type="java.lang.Integer">500</value>
</value>
</entry>
<entry>
<key id="167" type="java.lang.String">IssactID</key>
<value id="168" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="169">[Ljava.lang.String;</className>
<clazz>[Ljava.lang.String;</clazz>
<description idref="2"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="170" type="java.lang.String">JobID</key>
<value id="171" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="172">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="173" type="java.lang.String">MessageType</key>
<value id="174" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="175">java.lang.String</className>
<clazz>java.lang.String</clazz>
<persistent>false</persistent>
<value id="176" type="java.lang.String">REAL</value>
</value>
</entry>
</variables>
<version>13</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>

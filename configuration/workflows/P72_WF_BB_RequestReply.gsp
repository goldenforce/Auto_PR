<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<goldensource-package version="8.8.1.07">
<package-comment/>
<businessobject displayString="3 - Bond_WihtutRTNG" type="com.j2fe.workflow.definition.Workflow">
<com.j2fe.workflow.definition.Workflow id="0">
<alwaysPersist>true</alwaysPersist>
<clustered>true</clustered>
<comment id="1">Bond_WihtutRTNG</comment>
<endNode id="2">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description id="3"/>
<directJoin>false</directJoin>
<name id="4">Stop</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="5">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<persistentVariables id="6" type="java.util.HashSet">
<item id="7" type="java.lang.String">RequestTypes
0100</item>
</persistentVariables>
<sources id="8" type="java.util.HashSet">
<item id="9" type="com.j2fe.workflow.definition.Transition">
<name id="10">goto-next</name>
<source id="11">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="12">Call Subworkflow </name>
<nodeHandler>com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandler>
<nodeHandlerClass id="13">com.j2fe.workflow.handler.impl.CallSubWorkflow</nodeHandlerClass>
<parameters id="14" type="java.util.HashSet">
<item id="15" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="16">["ExcludeFields"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="17">input["ExcludeFields"]</name>
<stringValue id="18">ExcludeFields</stringValue>
<type>VARIABLE</type>
</item>
<item id="19" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="20">["MaxRequestsPerFile"]@java/lang/Long@</UITypeHint>
<input>true</input>
<name id="21">input["MaxRequestsPerFile"]</name>
<stringValue id="22">MaxRequestsPerFile</stringValue>
<type>VARIABLE</type>
</item>
<item id="23" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="24">["Message"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="25">input["Message"]</name>
<stringValue id="26">Request XML</stringValue>
<type>VARIABLE</type>
</item>
<item id="27" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="28">name</name>
<stringValue id="29">Request Reply</stringValue>
<type>CONSTANT</type>
</item>
</parameters>
<sources id="30" type="java.util.HashSet">
<item id="31" type="com.j2fe.workflow.definition.Transition">
<name id="32">goto-next</name>
<source id="33">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="34">create request XML</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="35">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="36" type="java.util.HashSet">
<item id="37" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="38">statements</name>
<objectValue id="39" type="java.lang.String">import java.io.*; &#13;
import java.io.BufferedReader;&#13;
String xmlOutput=null;&#13;
&#13;
&#13;
	&#13;
	if(requestTypes != null )&#13;
	{&#13;
  try&#13;
	{  &#13;
		StringBuilder xml= new StringBuilder();&#13;
		boolean creatXml=false;&#13;
		String lineBreak = "\n";&#13;
		int isinDBLength= InstrumentList.length;&#13;
		int requesTypesLength= requestTypes.length;&#13;
			for (int i=0; i &lt; isinDBLength; i++)&#13;
				{&#13;
					if(!creatXml)&#13;
						{&#13;
							xml.append("&lt;VendorRequest&gt;");&#13;
							xml.append(lineBreak);&#13;
							xml.append("\t&lt;User&gt;");&#13;
							xml.append("P72_EOD_BATCH");&#13;
							xml.append("&lt;/User&gt;");&#13;
							xml.append(lineBreak);&#13;
							xml.append("\t&lt;Requestor&gt;");&#13;
							xml.append("P72_EOD_BATCH");&#13;
							xml.append("&lt;/Requestor&gt;");&#13;
							xml.append(lineBreak);&#13;
							xml.append("\t&lt;UserRequestID/&gt;");&#13;
							xml.append(lineBreak);&#13;
							creatXml=true;&#13;
						}&#13;
&#13;
					 	for (int j=0; j &lt; requesTypesLength; j++)&#13;
						{&#13;
							xml.append("\t&lt;Request&gt;\n\t\t&lt;RequestType&gt;"+requestTypes[j]+"&lt;/RequestType&gt;\n\t\t&lt;Vendor&gt;BB&lt;/Vendor&gt;\n\t\t&lt;TableType&gt;ISSU&lt;/TableType&gt;");&#13;
							xml.append(lineBreak);&#13;
							xml.append("\t\t&lt;Identifier&gt;"+InstrumentList[i][0]+"&lt;/Identifier&gt;");&#13;
							xml.append(lineBreak);&#13;
							xml.append("\t\t&lt;IDContext&gt;"+InstrumentList[i][1]+"&lt;/IDContext&gt;");&#13;
							xml.append(lineBreak);&#13;
							xml.append("\t&lt;/Request&gt;\n");&#13;
							&#13;
						}&#13;
  		&#13;
				}	&#13;
	&#13;
	if(creatXml)&#13;
	{&#13;
		xml.append("&lt;/VendorRequest&gt;");&#13;
	}&#13;
	&#13;
		xmlOutput = xml.toString();&#13;
&#13;
        &#13;
} catch (IOException ex) {&#13;
    ex.printStackTrace();&#13;
}&#13;
}</objectValue>
<type>CONSTANT</type>
</item>
<item id="40" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="41">["InstrumentList"]@java/lang/Object@</UITypeHint>
<input>true</input>
<name id="42">variables["InstrumentList"]</name>
<stringValue id="43">InstrumentDetailsList</stringValue>
<type>VARIABLE</type>
</item>
<item id="44" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="45">["assetTypeIndicator"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="46">variables["assetTypeIndicator"]</name>
<stringValue id="47">AssetTypeIndicator</stringValue>
<type>VARIABLE</type>
</item>
<item id="48" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="49">variables["requestTypes"]</name>
<stringValue id="50">RequestTypes</stringValue>
<type>VARIABLE</type>
</item>
<item id="51" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="52">["xmlOutput"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="53">variables["xmlOutput"]</name>
<stringValue id="54">Request XML</stringValue>
<type>VARIABLE</type>
<variablePart idref="3"/>
</item>
</parameters>
<persistentVariables id="55" type="java.util.HashSet">
<item id="56" type="java.lang.String">RequestTypes
1000</item>
</persistentVariables>
<sources id="57" type="java.util.HashSet">
<item id="58" type="com.j2fe.workflow.definition.Transition">
<name id="59">rows-found</name>
<source id="60">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="61">get Instrument details for Request</name>
<nodeHandler>com.j2fe.general.activities.database.DBQuery</nodeHandler>
<nodeHandlerClass id="62">com.j2fe.general.activities.database.DBQuery</nodeHandlerClass>
<parameters id="63" type="java.util.HashSet">
<item id="64" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="65">database</name>
<stringValue id="66">jdbc/GSDM-1</stringValue>
<type>REFERENCE</type>
</item>
<item id="67" type="com.j2fe.workflow.definition.Parameter">
<input>false</input>
<name id="68">indexedResult</name>
<stringValue id="69">InstrumentDetailsList</stringValue>
<type>VARIABLE</type>
</item>
<item id="70" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="71">querySQL</name>
<stringValue id="72">InstrumentSQL</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<persistentVariables id="73" type="java.util.HashSet">
<item id="74" type="java.lang.String">RequestTypes
1000</item>
</persistentVariables>
<sources id="75" type="java.util.HashSet">
<item id="76" type="com.j2fe.workflow.definition.Transition">
<name id="77">goto-next</name>
<source id="78">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="79">Identify Instrument List</name>
<nodeHandler>com.j2fe.general.activities.BeanShellScript</nodeHandler>
<nodeHandlerClass id="80">com.j2fe.general.activities.BeanShellScript</nodeHandlerClass>
<parameters id="81" type="java.util.HashSet">
<item id="82" type="com.j2fe.workflow.definition.Parameter">
<input>true</input>
<name id="83">statements</name>
<stringValue id="84">import java.util.Arrays;&#13;
&#13;
String sqlToRun  = null;&#13;
String vendorRequestType = "";&#13;
String[] requestTypes = null ;&#13;
String requestTypesString = "";&#13;
switch(assetTypeIndicator)&#13;
{&#13;
case "CorpGovt" : {&#13;
requestTypesString = "P72_CorpGov_RR,P72_CorpGov_Additional_RR,P72_CorpGov_EXT_RR" ;&#13;
requestTypes= requestTypesString.split(",") ;&#13;
}&#13;
break;&#13;
break;case "CorpGovt_RTNG" : {&#13;
bbMarketSector = "'Corp','Govt'" ;&#13;
requestTypesString = "P72_CorpGov_RR_RTNG,P72_CorpGov_Additional_RR_RTNG,P72_CorpGov_EXT_RR_RTNG" ;&#13;
requestTypes= requestTypesString.split(",") ;&#13;
}&#13;
break;&#13;
default : {}&#13;
}&#13;
&#13;
sqlToRun = "SELECT IDENTIFIER , IDCONTEXT from ft_v_bb_persec ";&#13;
</stringValue>
<type>CONSTANT</type>
</item>
<item id="85" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="86">["assetTypeIndicator"]@java/lang/String@</UITypeHint>
<input>true</input>
<name id="87">variables["assetTypeIndicator"]</name>
<stringValue id="88">AssetTypeIndicator</stringValue>
<type>VARIABLE</type>
</item>
<item id="89" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="90">["requestTypes"]@java/lang/Object@</UITypeHint>
<input>false</input>
<name id="91">variables["requestTypes"]</name>
<stringValue id="92">RequestTypes</stringValue>
<type>VARIABLE</type>
<variablePart idref="3"/>
</item>
<item id="93" type="com.j2fe.workflow.definition.Parameter">
<UITypeHint id="94">["sqlToRun"]@java/lang/String@</UITypeHint>
<input>false</input>
<name id="95">variables["sqlToRun"]</name>
<stringValue id="96">InstrumentSQL</stringValue>
<type>VARIABLE</type>
</item>
</parameters>
<sources id="97" type="java.util.HashSet">
<item id="98" type="com.j2fe.workflow.definition.Transition">
<name id="99">goto-next</name>
<source id="100">
<activation>INVOKE</activation>
<clusteredCall>false</clusteredCall>
<description idref="3"/>
<directJoin>false</directJoin>
<name id="101">Start</name>
<nodeHandler>com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandler>
<nodeHandlerClass id="102">com.j2fe.workflow.handler.impl.DummyActivityHandler</nodeHandlerClass>
<sources id="103" type="java.util.HashSet"/>
<targets id="104" type="java.util.HashSet">
<item idref="98" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>START</type>
</source>
<target idref="78"/>
</item>
</sources>
<targets id="105" type="java.util.HashSet">
<item idref="76" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="60"/>
</item>
</sources>
<targets id="106" type="java.util.HashSet">
<item id="107" type="com.j2fe.workflow.definition.Transition">
<name id="108">nothing-found</name>
<source idref="60"/>
<target idref="2"/>
</item>
<item idref="58" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>XORSPLIT</type>
</source>
<target idref="33"/>
</item>
</sources>
<targets id="109" type="java.util.HashSet">
<item idref="31" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="11"/>
</item>
</sources>
<targets id="110" type="java.util.HashSet">
<item idref="9" type="com.j2fe.workflow.definition.Transition"/>
</targets>
<type>ACTIVITY</type>
</source>
<target idref="2"/>
</item>
<item idref="107" type="com.j2fe.workflow.definition.Transition"/>
</sources>
<targets id="111" type="java.util.HashSet"/>
<type>END</type>
</endNode>
<forcePurgeAtEnd>false</forcePurgeAtEnd>
<group id="112">Custom/Miscellaneous</group>
<haltOnError>false</haltOnError>
<lastChangeUser id="113">user1</lastChangeUser>
<lastUpdate id="114">2022-09-15T15:31:14.000+0530</lastUpdate>
<name id="115">P72_WF_BB_RequestReply</name>
<optimize>true</optimize>
<parameter id="116" type="java.util.HashMap">
<entry>
<key id="117" type="java.lang.String">AssetTypeIndicator</key>
<value id="118" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="119">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="120">Indicator to calculate the list of identifier to fetch using a SQL and assign request Type</description>
<input>true</input>
<output>false</output>
<required>true</required>
</value>
</entry>
<entry>
<key id="121" type="java.lang.String">ExcludeFields</key>
<value id="122" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="123">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="3"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="124" type="java.lang.String">MaxRequestsPerFile</key>
<value id="125" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="126">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description idref="3"/>
<input>true</input>
<output>false</output>
<required>false</required>
</value>
</entry>
<entry>
<key id="127" type="java.lang.String">Request XML</key>
<value id="128" type="com.j2fe.workflow.definition.WorkflowParameter">
<className id="129">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="3"/>
<input>false</input>
<output>true</output>
<required>false</required>
</value>
</entry>
</parameter>
<permissions id="130" type="java.util.HashSet"/>
<priority>50</priority>
<purgeAtEnd>false</purgeAtEnd>
<retries>0</retries>
<startNode idref="100"/>
<status>RELEASED</status>
<variables id="131" type="java.util.HashMap">
<entry>
<key id="132" type="java.lang.String">AssetTypeIndicator</key>
<value id="133" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="134">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description id="135">Indicator to calculate the list of identifier to fetch using a SQL and assign request Type</description>
<persistent>false</persistent>
<value id="136" type="java.lang.String">CorpGovt</value>
</value>
</entry>
<entry>
<key id="137" type="java.lang.String">ExcludeFields</key>
<value id="138" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="139">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="3"/>
<persistent>false</persistent>
</value>
</entry>
<entry>
<key id="140" type="java.lang.String">MaxRequestsPerFile</key>
<value id="141" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="142">java.lang.Integer</className>
<clazz>java.lang.Integer</clazz>
<description idref="3"/>
<persistent>false</persistent>
<value id="143" type="java.lang.Integer">5000</value>
</value>
</entry>
<entry>
<key id="144" type="java.lang.String">Request XML</key>
<value id="145" type="com.j2fe.workflow.definition.GlobalVariable">
<className id="146">java.lang.String</className>
<clazz>java.lang.String</clazz>
<description idref="3"/>
<persistent>false</persistent>
<value id="147" type="java.lang.String">No Instruments for given Asset type</value>
</value>
</entry>
</variables>
<version>3</version>
</com.j2fe.workflow.definition.Workflow>
</businessobject>
</goldensource-package>

<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:ns1="http://xmlns.oracle.com/UPCConversion/UniversalItemID/ProcessItmID" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype" xmlns:db="http://xmlns.oracle.com/pcbpel/adapter/db/ItemIDLookupTMI121Select" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/CommonModules/UniversalItemID/ItemIDLookupTMI121Select" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl db tns plt xsd wsdl ns1 plnk bpws xp20 mhdr bpel oraext dvm hwf med ids bpm xdk xref ora socket ldap">
   <xsl:template match="/">
      <ns1:processResponse>
         <ns1:SSN>
            <xsl:value-of select="/db:ItemIDLookupTMI121SelectOutputCollection/db:ItemIDLookupTMI121SelectOutput/db:STYL_SEQ_NUM"/>
         </ns1:SSN>
         <ns1:SKU>
            <xsl:value-of select="substring(concat(&quot;0000000000000&quot;,/db:ItemIDLookupTMI121SelectOutputCollection/db:ItemIDLookupTMI121SelectOutput/db:MSC_MDSE_NUM),string-length(/db:ItemIDLookupTMI121SelectOutputCollection/db:ItemIDLookupTMI121SelectOutput/db:MSC_MDSE_NUM) + &quot;1&quot;,&quot;13&quot;)"/>
         </ns1:SKU>
         <ns1:UPC>
            <xsl:value-of select="substring(concat(&quot;0000000000000&quot;,/db:ItemIDLookupTMI121SelectOutputCollection/db:ItemIDLookupTMI121SelectOutput/db:VEN_UPC_NUM),string-length(/db:ItemIDLookupTMI121SelectOutputCollection/db:ItemIDLookupTMI121SelectOutput/db:VEN_UPC_NUM) + &quot;1&quot;,&quot;13&quot;)"/>
         </ns1:UPC>
      </ns1:processResponse>
   </xsl:template>
</xsl:stylesheet>
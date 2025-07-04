<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Immunization
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Immunization</sch:title>
    <sch:rule context="f:Immunization">
      <sch:assert test="count(f:extension[@url = 'https://nphcda.gov.ng/immunizationIG/StructureDefinition/signature']) &lt;= 1">extension with URL = 'https://nphcda.gov.ng/immunizationIG/StructureDefinition/signature': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://nphcda.gov.ng/immunizationIG/StructureDefinition/session-type']) &lt;= 1">extension with URL = 'https://nphcda.gov.ng/immunizationIG/StructureDefinition/session-type': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &gt;= 1">identifier: minimum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &lt;= 1">identifier: maximum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:lotNumber) &gt;= 1">lotNumber: minimum cardinality of 'lotNumber' is 1</sch:assert>
      <sch:assert test="count(f:expirationDate) &gt;= 1">expirationDate: minimum cardinality of 'expirationDate' is 1</sch:assert>
      <sch:assert test="count(f:doseQuantity) &gt;= 1">doseQuantity: minimum cardinality of 'doseQuantity' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Immunization/f:protocolApplied</sch:title>
    <sch:rule context="f:Immunization/f:protocolApplied">
      <sch:assert test="count(f:extension[@url = 'https://nphcda.gov.ng/immunizationIG/StructureDefinition/next-dose-date']) &lt;= 1">extension with URL = 'https://nphcda.gov.ng/immunizationIG/StructureDefinition/next-dose-date': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>

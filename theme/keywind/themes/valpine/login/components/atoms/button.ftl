<#macro kw color="" component="button" size="" rest...>
  <#switch color>
    <#case "primary">
      <#assign colorClass="kw-btn kw-btn-primary">
      <#break>
    <#case "secondary">
      <#assign colorClass="kw-btn kw-btn-secondary">
      <#break>
    <#default>
      <#assign colorClass="kw-btn kw-btn-primary">
  </#switch>

  <#switch size>
    <#case "medium">
      <#assign sizeClass="">
      <#break>
    <#case "small">
      <#assign sizeClass="text-xs">
      <#break>
    <#default>
      <#assign sizeClass="">
  </#switch>

  <${component}
    class="${colorClass} ${sizeClass} flex justify-center relative focus:outline-none"

    <#list rest as attrName, attrValue>
      ${attrName}="${attrValue}"
    </#list>
  >
    <#nested>
  </${component}>
</#macro>

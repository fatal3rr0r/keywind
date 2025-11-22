<#macro kw color="">
  <#switch color>
    <#case "error">
      <#assign colorClass="kw-alert kw-alert-error">
      <#break>
    <#case "info">
      <#assign colorClass="kw-alert kw-alert-info">
      <#break>
    <#case "success">
      <#assign colorClass="kw-alert kw-alert-success">
      <#break>
    <#case "warning">
      <#assign colorClass="kw-alert kw-alert-warning">
      <#break>
    <#default>
      <#assign colorClass="kw-alert kw-alert-info">
  </#switch>

  <div class="${colorClass}" role="alert">
    <#nested>
  </div>
</#macro>

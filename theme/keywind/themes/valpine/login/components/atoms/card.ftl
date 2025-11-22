<#macro kw content="" footer="" header="">
  <div class="kw-card">
    <#if header?has_content>
      <div class="kw-card-header">
        ${header}
      </div>
    </#if>
    <#if content?has_content>
      <div class="kw-card-content">
        ${content}
      </div>
    </#if>
    <#if footer?has_content>
      <div class="kw-card-footer">
        ${footer}
      </div>
    </#if>
  </div>
</#macro>

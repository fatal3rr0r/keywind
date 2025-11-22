<#macro kw checked=false id="" label="" rest...>
  <div>
    <input
      <#if checked>checked</#if>

      class="kw-radio-input"
      id="${id}"
      type="radio"

      <#list rest as attrName, attrValue>
        ${attrName}="${attrValue}"
      </#list>
    >
    <label class="kw-radio-label ml-2" for="${id}">
      ${label}
    </label>
  </div>
</#macro>

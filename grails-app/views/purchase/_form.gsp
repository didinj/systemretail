<%@ page import="com.djamware.Purchase" %>



<div class="fieldcontain ${hasErrors(bean: purchaseInstance, field: 'supplier', 'error')} required">
  <label for="supplier">
    <g:message code="purchase.supplier.label" default="Supplier" />
    <span class="required-indicator">*</span>
  </label>
  <g:select id="supplier" name="supplier.id" from="${com.djamware.Supplier.list()}" optionKey="id" required="" value="${purchaseInstance?.supplier?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: purchaseInstance, field: 'purchaseDetail', 'error')} ">
  <label for="purchaseDetail">
    <g:message code="purchase.purchaseDetail.label" default="Purchase Detail" />

  </label>

  <ul class="one-to-many">
    <g:each in="${purchaseInstance?.purchaseDetail?}" var="p">
      <li><g:link controller="purchaseDetail" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
    </g:each>
    <li class="add">
    <g:link controller="purchaseDetail" action="create" params="['purchase.id': purchaseInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'purchaseDetail.label', default: 'PurchaseDetail')])}</g:link>
    </li>
  </ul>

</div>

<div class="fieldcontain ${hasErrors(bean: purchaseInstance, field: 'tbuycost', 'error')} required">
  <label for="tbuycost">
    <g:message code="purchase.tbuycost.label" default="Tbuycost" />
    <span class="required-indicator">*</span>
  </label>
  <g:field type="number" name="tbuycost" required="" value="${fieldValue(bean: purchaseInstance, field: 'tbuycost')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: purchaseInstance, field: 'tdiscount', 'error')} required">
  <label for="tdiscount">
    <g:message code="purchase.tdiscount.label" default="Tdiscount" />
    <span class="required-indicator">*</span>
  </label>
  <g:field type="number" name="tdiscount" required="" value="${fieldValue(bean: purchaseInstance, field: 'tdiscount')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: purchaseInstance, field: 'grandtotal', 'error')} required">
  <label for="tcost">
    <g:message code="purchase.tcost.label" default="Tcost" />
    <span class="required-indicator">*</span>
  </label>
  <g:field type="number" name="grandtotal" required="" value="${fieldValue(bean: purchaseInstance, field: 'grandtotal')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: purchaseInstance, field: 'tax', 'error')} ">
  <label for="tax">
    <g:message code="purchase.tax.label" default="Tax" />

  </label>
  <g:checkBox name="tax" value="${purchaseInstance?.tax}" />
</div>

<div class="fieldcontain ${hasErrors(bean: purchaseInstance, field: 'status', 'error')} ">
  <label for="status">
    <g:message code="purchase.status.label" default="Status" />

  </label>
  <g:textField name="status" value="${purchaseInstance?.status}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: purchaseInstance, field: 'userid', 'error')} ">
  <label for="userid">
    <g:message code="purchase.userid.label" default="Userid" />

  </label>
  <g:textField name="userid" value="${purchaseInstance?.userid}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: purchaseInstance, field: 'notes', 'error')} ">
  <label for="notes">
    <g:message code="purchase.notes.label" default="Notes" />

  </label>
  
</div>

<div class="fieldcontain ${hasErrors(bean: purchaseInstance, field: 'createdate', 'error')} " style="display: none">
  <label for="createdate">
    <g:message code="purchase.createdate.label" default="Createdate" />

  </label>
  <g:datePicker name="createdate" precision="day"  value="${purchaseInstance?.createdate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: purchaseInstance, field: 'confirmdate', 'error')} " style="display: none">
  <label for="confirmdate">
    <g:message code="purchase.confirmdate.label" default="Confirmdate" />

  </label>
  <g:datePicker name="confirmdate" precision="day"  value="${purchaseInstance?.confirmdate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: purchaseInstance, field: 'updatedate', 'error')} " style="display: none">
  <label for="updatedate">
    <g:message code="purchase.updatedate.label" default="Updatedate" />

  </label>
  <g:datePicker name="updatedate" precision="day"  value="${purchaseInstance?.updatedate}" default="none" noSelection="['': '']" />
</div>


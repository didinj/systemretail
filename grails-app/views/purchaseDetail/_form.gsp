<%@ page import="com.djamware.PurchaseDetail" %>



<div class="fieldcontain ${hasErrors(bean: purchaseDetailInstance, field: 'purchase', 'error')} required">
	<label for="purchase">
		<g:message code="purchaseDetail.purchase.label" default="Purchase" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="purchase" name="purchase.id" from="${com.djamware.Purchase.list()}" optionKey="id" required="" value="${purchaseDetailInstance?.purchase?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: purchaseDetailInstance, field: 'plu', 'error')} ">
	<label for="plu">
		<g:message code="purchaseDetail.plu.label" default="Plu" />
		
	</label>
	<g:textField name="plu" value="${purchaseDetailInstance?.plu}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: purchaseDetailInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="purchaseDetail.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${purchaseDetailInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: purchaseDetailInstance, field: 'qty', 'error')} required">
	<label for="qty">
		<g:message code="purchaseDetail.qty.label" default="Qty" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="qty" required="" value="${fieldValue(bean: purchaseDetailInstance, field: 'qty')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: purchaseDetailInstance, field: 'cost', 'error')} required">
	<label for="cost">
		<g:message code="purchaseDetail.cost.label" default="Cost" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="cost" required="" value="${fieldValue(bean: purchaseDetailInstance, field: 'cost')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: purchaseDetailInstance, field: 'tcost', 'error')} required">
	<label for="tcost">
		<g:message code="purchaseDetail.tcost.label" default="Tcost" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="tcost" required="" value="${fieldValue(bean: purchaseDetailInstance, field: 'tcost')}"/>
</div>


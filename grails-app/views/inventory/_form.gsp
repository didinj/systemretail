<%@ page import="com.djamware.Inventory" %>



<div class="fieldcontain ${hasErrors(bean: inventoryInstance, field: 'plu', 'error')} ">
	<label for="plu">
		<g:message code="inventory.plu.label" default="Plu" />
		
	</label>
	<g:textField name="plu" value="${inventoryInstance?.plu}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: inventoryInstance, field: 'invreceive', 'error')} required">
	<label for="invreceive">
		<g:message code="inventory.invreceive.label" default="Invreceive" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="invreceive" required="" value="${fieldValue(bean: inventoryInstance, field: 'invreceive')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: inventoryInstance, field: 'invsales', 'error')} required">
	<label for="invsales">
		<g:message code="inventory.invsales.label" default="Invsales" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="invsales" required="" value="${fieldValue(bean: inventoryInstance, field: 'invsales')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: inventoryInstance, field: 'invreturn', 'error')} required">
	<label for="invreturn">
		<g:message code="inventory.invreturn.label" default="Invreturn" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="invreturn" required="" value="${fieldValue(bean: inventoryInstance, field: 'invreturn')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: inventoryInstance, field: 'invexpired', 'error')} required">
	<label for="invexpired">
		<g:message code="inventory.invexpired.label" default="Invexpired" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="invexpired" required="" value="${fieldValue(bean: inventoryInstance, field: 'invexpired')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: inventoryInstance, field: 'invtransin', 'error')} required">
	<label for="invtransin">
		<g:message code="inventory.invtransin.label" default="Invtransin" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="invtransin" required="" value="${fieldValue(bean: inventoryInstance, field: 'invtransin')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: inventoryInstance, field: 'invtransout', 'error')} required">
	<label for="invtransout">
		<g:message code="inventory.invtransout.label" default="Invtransout" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="invtransout" required="" value="${fieldValue(bean: inventoryInstance, field: 'invtransout')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: inventoryInstance, field: 'minstock', 'error')} required">
	<label for="minstock">
		<g:message code="inventory.minstock.label" default="Minstock" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="minstock" required="" value="${fieldValue(bean: inventoryInstance, field: 'minstock')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: inventoryInstance, field: 'maxstock', 'error')} required">
	<label for="maxstock">
		<g:message code="inventory.maxstock.label" default="Maxstock" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="maxstock" required="" value="${fieldValue(bean: inventoryInstance, field: 'maxstock')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: inventoryInstance, field: 'minorder', 'error')} required">
	<label for="minorder">
		<g:message code="inventory.minorder.label" default="Minorder" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="minorder" required="" value="${fieldValue(bean: inventoryInstance, field: 'minorder')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: inventoryInstance, field: 'maxorder', 'error')} required">
	<label for="maxorder">
		<g:message code="inventory.maxorder.label" default="Maxorder" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="maxorder" required="" value="${fieldValue(bean: inventoryInstance, field: 'maxorder')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: inventoryInstance, field: 'invstock', 'error')} required">
	<label for="invstock">
		<g:message code="inventory.invstock.label" default="Invstock" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="invstock" required="" value="${fieldValue(bean: inventoryInstance, field: 'invstock')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: inventoryInstance, field: 'lastreceive', 'error')} required">
	<label for="lastreceive">
		<g:message code="inventory.lastreceive.label" default="Lastreceive" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="lastreceive" precision="day"  value="${inventoryInstance?.lastreceive}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: inventoryInstance, field: 'lastsales', 'error')} required">
	<label for="lastsales">
		<g:message code="inventory.lastsales.label" default="Lastsales" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="lastsales" precision="day"  value="${inventoryInstance?.lastsales}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: inventoryInstance, field: 'lastexpired', 'error')} required">
	<label for="lastexpired">
		<g:message code="inventory.lastexpired.label" default="Lastexpired" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="lastexpired" precision="day"  value="${inventoryInstance?.lastexpired}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: inventoryInstance, field: 'lasttransin', 'error')} required">
	<label for="lasttransin">
		<g:message code="inventory.lasttransin.label" default="Lasttransin" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="lasttransin" precision="day"  value="${inventoryInstance?.lasttransin}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: inventoryInstance, field: 'lasttransout', 'error')} required">
	<label for="lasttransout">
		<g:message code="inventory.lasttransout.label" default="Lasttransout" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="lasttransout" precision="day"  value="${inventoryInstance?.lasttransout}"  />
</div>


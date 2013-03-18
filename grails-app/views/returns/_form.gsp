<%@ page import="com.djamware.Returns" %>



<div class="fieldcontain ${hasErrors(bean: returnsInstance, field: 'suppliercode', 'error')} ">
	<label for="suppliercode">
		<g:message code="returns.suppliercode.label" default="Suppliercode" />
		
	</label>
	<g:textField name="suppliercode" value="${returnsInstance?.suppliercode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: returnsInstance, field: 'plu', 'error')} ">
	<label for="plu">
		<g:message code="returns.plu.label" default="Plu" />
		
	</label>
	<g:textField name="plu" value="${returnsInstance?.plu}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: returnsInstance, field: 'returndate', 'error')} required">
	<label for="returndate">
		<g:message code="returns.returndate.label" default="Returndate" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="returndate" precision="day"  value="${returnsInstance?.returndate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: returnsInstance, field: 'returnqty', 'error')} required">
	<label for="returnqty">
		<g:message code="returns.returnqty.label" default="Returnqty" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="returnqty" required="" value="${fieldValue(bean: returnsInstance, field: 'returnqty')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: returnsInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="returns.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="price" required="" value="${fieldValue(bean: returnsInstance, field: 'price')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: returnsInstance, field: 'returntprice', 'error')} required">
	<label for="returntprice">
		<g:message code="returns.returntprice.label" default="Returntprice" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="returntprice" required="" value="${fieldValue(bean: returnsInstance, field: 'returntprice')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: returnsInstance, field: 'returnreason', 'error')} ">
	<label for="returnreason">
		<g:message code="returns.returnreason.label" default="Returnreason" />
		
	</label>
	<g:textField name="returnreason" value="${returnsInstance?.returnreason}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: returnsInstance, field: 'userid', 'error')} ">
	<label for="userid">
		<g:message code="returns.userid.label" default="Userid" />
		
	</label>
	<g:textField name="userid" value="${returnsInstance?.userid}"/>
</div>


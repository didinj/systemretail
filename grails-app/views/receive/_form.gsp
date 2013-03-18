<%@ page import="com.djamware.Receive" %>



<div class="fieldcontain ${hasErrors(bean: receiveInstance, field: 'plu', 'error')} ">
	<label for="plu">
		<g:message code="receive.plu.label" default="Plu" />
		
	</label>
	<g:textField name="plu" value="${receiveInstance?.plu}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: receiveInstance, field: 'orderqty', 'error')} ">
	<label for="orderqty">
		<g:message code="receive.orderqty.label" default="Orderqty" />
		
	</label>
	<g:textField name="orderqty" value="${receiveInstance?.orderqty}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: receiveInstance, field: 'receiveqty', 'error')} ">
	<label for="receiveqty">
		<g:message code="receive.receiveqty.label" default="Receiveqty" />
		
	</label>
	<g:textField name="receiveqty" value="${receiveInstance?.receiveqty}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: receiveInstance, field: 'orderdate', 'error')} required">
	<label for="orderdate">
		<g:message code="receive.orderdate.label" default="Orderdate" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="orderdate" precision="day"  value="${receiveInstance?.orderdate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: receiveInstance, field: 'receivedate', 'error')} required">
	<label for="receivedate">
		<g:message code="receive.receivedate.label" default="Receivedate" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="receivedate" precision="day"  value="${receiveInstance?.receivedate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: receiveInstance, field: 'userid', 'error')} ">
	<label for="userid">
		<g:message code="receive.userid.label" default="Userid" />
		
	</label>
	<g:textField name="userid" value="${receiveInstance?.userid}"/>
</div>


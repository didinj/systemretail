<%@ page import="com.djamware.Transfer" %>



<div class="fieldcontain ${hasErrors(bean: transferInstance, field: 'plu', 'error')} ">
	<label for="plu">
		<g:message code="transfer.plu.label" default="Plu" />
		
	</label>
	<g:textField name="plu" value="${transferInstance?.plu}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: transferInstance, field: 'tansferdate', 'error')} required">
	<label for="tansferdate">
		<g:message code="transfer.tansferdate.label" default="Tansferdate" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="tansferdate" precision="day"  value="${transferInstance?.tansferdate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: transferInstance, field: 'transferqty', 'error')} required">
	<label for="transferqty">
		<g:message code="transfer.transferqty.label" default="Transferqty" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="transferqty" required="" value="${fieldValue(bean: transferInstance, field: 'transferqty')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: transferInstance, field: 'transferfrom', 'error')} ">
	<label for="transferfrom">
		<g:message code="transfer.transferfrom.label" default="Transferfrom" />
		
	</label>
	<g:textField name="transferfrom" value="${transferInstance?.transferfrom}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: transferInstance, field: 'transferto', 'error')} ">
	<label for="transferto">
		<g:message code="transfer.transferto.label" default="Transferto" />
		
	</label>
	<g:textField name="transferto" value="${transferInstance?.transferto}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: transferInstance, field: 'transferprice', 'error')} required">
	<label for="transferprice">
		<g:message code="transfer.transferprice.label" default="Transferprice" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="transferprice" required="" value="${fieldValue(bean: transferInstance, field: 'transferprice')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: transferInstance, field: 'transfertprice', 'error')} required">
	<label for="transfertprice">
		<g:message code="transfer.transfertprice.label" default="Transfertprice" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="transfertprice" required="" value="${fieldValue(bean: transferInstance, field: 'transfertprice')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: transferInstance, field: 'userid', 'error')} ">
	<label for="userid">
		<g:message code="transfer.userid.label" default="Userid" />
		
	</label>
	<g:textField name="userid" value="${transferInstance?.userid}"/>
</div>


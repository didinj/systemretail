<%@ page import="com.djamware.Sales" %>



<div class="fieldcontain ${hasErrors(bean: salesInstance, field: 'plu', 'error')} ">
	<label for="plu">
		<g:message code="sales.plu.label" default="Plu" />
		
	</label>
	<g:textField name="plu" value="${salesInstance?.plu}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: salesInstance, field: 'storenbr', 'error')} ">
	<label for="storenbr">
		<g:message code="sales.storenbr.label" default="Storenbr" />
		
	</label>
	<g:textField name="storenbr" value="${salesInstance?.storenbr}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: salesInstance, field: 'posnbr', 'error')} ">
	<label for="posnbr">
		<g:message code="sales.posnbr.label" default="Posnbr" />
		
	</label>
	<g:textField name="posnbr" value="${salesInstance?.posnbr}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: salesInstance, field: 'shift', 'error')} required">
	<label for="shift">
		<g:message code="sales.shift.label" default="Shift" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="shift" required="" value="${fieldValue(bean: salesInstance, field: 'shift')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: salesInstance, field: 'userid', 'error')} ">
	<label for="userid">
		<g:message code="sales.userid.label" default="Userid" />
		
	</label>
	<g:textField name="userid" value="${salesInstance?.userid}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: salesInstance, field: 'trndate', 'error')} ">
	<label for="trndate">
		<g:message code="sales.trndate.label" default="Trndate" />
		
	</label>
	<g:textField name="trndate" value="${salesInstance?.trndate}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: salesInstance, field: 'trntime', 'error')} ">
	<label for="trntime">
		<g:message code="sales.trntime.label" default="Trntime" />
		
	</label>
	<g:textField name="trntime" value="${salesInstance?.trntime}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: salesInstance, field: 'salesqty', 'error')} required">
	<label for="salesqty">
		<g:message code="sales.salesqty.label" default="Salesqty" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="salesqty" required="" value="${fieldValue(bean: salesInstance, field: 'salesqty')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: salesInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="sales.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="price" required="" value="${fieldValue(bean: salesInstance, field: 'price')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: salesInstance, field: 'tprice', 'error')} required">
	<label for="tprice">
		<g:message code="sales.tprice.label" default="Tprice" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="tprice" required="" value="${fieldValue(bean: salesInstance, field: 'tprice')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: salesInstance, field: 'discount', 'error')} required">
	<label for="discount">
		<g:message code="sales.discount.label" default="Discount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="discount" required="" value="${fieldValue(bean: salesInstance, field: 'discount')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: salesInstance, field: 'tax', 'error')} required">
	<label for="tax">
		<g:message code="sales.tax.label" default="Tax" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="tax" required="" value="${fieldValue(bean: salesInstance, field: 'tax')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: salesInstance, field: 'grossales', 'error')} required">
	<label for="grossales">
		<g:message code="sales.grossales.label" default="Grossales" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="grossales" required="" value="${fieldValue(bean: salesInstance, field: 'grossales')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: salesInstance, field: 'nettsales', 'error')} required">
	<label for="nettsales">
		<g:message code="sales.nettsales.label" default="Nettsales" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="nettsales" required="" value="${fieldValue(bean: salesInstance, field: 'nettsales')}"/>
</div>


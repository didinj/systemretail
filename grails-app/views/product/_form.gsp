<%@ page import="com.djamware.Product" %>



<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'plu', 'error')} required">
	<label for="plu">
		<g:message code="product.plu.label" default="Plu" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="plu" required="" value="${productInstance?.plu}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'barcode', 'error')} ">
	<label for="barcode">
		<g:message code="product.barcode.label" default="Barcode" />
		
	</label>
	<g:textField name="barcode" value="${productInstance?.barcode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'brand', 'error')} required">
	<label for="brand">
		<g:message code="product.brand.label" default="Brand" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="brand" required="" value="${productInstance?.brand}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="product.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${productInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'size', 'error')} required">
	<label for="size">
		<g:message code="product.size.label" default="Size" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="size" required="" value="${fieldValue(bean: productInstance, field: 'size')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'unit', 'error')} required">
	<label for="unit">
		<g:message code="product.unit.label" default="Unit" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="unit" required="" value="${productInstance?.unit}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'cost', 'error')} required">
	<label for="cost">
		<g:message code="product.cost.label" default="Cost" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="cost" required="" value="${fieldValue(bean: productInstance, field: 'cost')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="product.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="price" required="" value="${fieldValue(bean: productInstance, field: 'price')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'tax', 'error')} required">
	<label for="tax">
		<g:message code="product.tax.label" default="Tax" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tax" required="" value="${productInstance?.tax}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'consigment', 'error')} required">
	<label for="consigment">
		<g:message code="product.consigment.label" default="Consigment" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="consigment" required="" value="${productInstance?.consigment}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'createdate', 'error')} required">
	<label for="createdate">
		<g:message code="product.createdate.label" default="Createdate" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdate" precision="day"  value="${productInstance?.createdate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'dept', 'error')} required">
	<label for="dept">
		<g:message code="product.dept.label" default="Dept" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="dept" name="dept.id" from="${com.djamware.Dept.list()}" optionKey="id" required="" value="${productInstance?.dept?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'supplier', 'error')} required">
	<label for="supplier">
		<g:message code="product.supplier.label" default="Supplier" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="supplier" name="supplier.id" from="${com.djamware.Supplier.list()}" optionKey="id" required="" value="${productInstance?.supplier?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'updatedate', 'error')} required">
	<label for="updatedate">
		<g:message code="product.updatedate.label" default="Updatedate" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="updatedate" precision="day"  value="${productInstance?.updatedate}"  />
</div>


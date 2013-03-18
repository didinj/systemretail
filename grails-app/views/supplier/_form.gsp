<%@ page import="com.djamware.Supplier" %>



<div class="fieldcontain ${hasErrors(bean: supplierInstance, field: 'suppliercode', 'error')} required">
	<label for="suppliercode">
		<g:message code="supplier.suppliercode.label" default="Suppliercode" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="suppliercode" required="" value="${supplierInstance?.suppliercode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: supplierInstance, field: 'suppliername', 'error')} required">
	<label for="suppliername">
		<g:message code="supplier.suppliername.label" default="Suppliername" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="suppliername" required="" value="${supplierInstance?.suppliername}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: supplierInstance, field: 'supplieraddress', 'error')} required">
	<label for="supplieraddress">
		<g:message code="supplier.supplieraddress.label" default="Supplieraddress" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="supplieraddress" required="" value="${supplierInstance?.supplieraddress}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: supplierInstance, field: 'suppliercity', 'error')} required">
	<label for="suppliercity">
		<g:message code="supplier.suppliercity.label" default="Suppliercity" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="suppliercity" required="" value="${supplierInstance?.suppliercity}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: supplierInstance, field: 'supplierpos', 'error')} required">
	<label for="supplierpos">
		<g:message code="supplier.supplierpos.label" default="Supplierpos" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="supplierpos" required="" value="${supplierInstance?.supplierpos}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: supplierInstance, field: 'supplierphone', 'error')} required">
	<label for="supplierphone">
		<g:message code="supplier.supplierphone.label" default="Supplierphone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="supplierphone" required="" value="${supplierInstance?.supplierphone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: supplierInstance, field: 'supplieraccountnbr', 'error')} required">
	<label for="supplieraccountnbr">
		<g:message code="supplier.supplieraccountnbr.label" default="Supplieraccountnbr" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="supplieraccountnbr" required="" value="${supplierInstance?.supplieraccountnbr}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: supplierInstance, field: 'supplierbankname', 'error')} required">
	<label for="supplierbankname">
		<g:message code="supplier.supplierbankname.label" default="Supplierbankname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="supplierbankname" required="" value="${supplierInstance?.supplierbankname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: supplierInstance, field: 'supplieraccountname', 'error')} required">
	<label for="supplieraccountname">
		<g:message code="supplier.supplieraccountname.label" default="Supplieraccountname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="supplieraccountname" required="" value="${supplierInstance?.supplieraccountname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: supplierInstance, field: 'product', 'error')} ">
	<label for="product">
		<g:message code="supplier.product.label" default="Product" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${supplierInstance?.product?}" var="p">
    <li><g:link controller="product" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="product" action="create" params="['supplier.id': supplierInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'product.label', default: 'Product')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: supplierInstance, field: 'purchase', 'error')} ">
	<label for="purchase">
		<g:message code="supplier.purchase.label" default="Purchase" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${supplierInstance?.purchase?}" var="p">
    <li><g:link controller="purchase" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="purchase" action="create" params="['supplier.id': supplierInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'purchase.label', default: 'Purchase')])}</g:link>
</li>
</ul>

</div>


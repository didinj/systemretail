<%@ page import="com.djamware.Dept" %>



<div class="fieldcontain ${hasErrors(bean: deptInstance, field: 'deptcode', 'error')} required">
	<label for="deptcode">
		<g:message code="dept.deptcode.label" default="Deptcode" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="deptcode" required="" value="${fieldValue(bean: deptInstance, field: 'deptcode')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: deptInstance, field: 'deptdesc', 'error')} ">
	<label for="deptdesc">
		<g:message code="dept.deptdesc.label" default="Deptdesc" />
		
	</label>
	<g:textField name="deptdesc" value="${deptInstance?.deptdesc}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: deptInstance, field: 'division', 'error')} required">
	<label for="division">
		<g:message code="dept.division.label" default="Division" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="division" name="division.id" from="${com.djamware.Division.list()}" optionKey="id" required="" value="${deptInstance?.division?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: deptInstance, field: 'product', 'error')} ">
	<label for="product">
		<g:message code="dept.product.label" default="Product" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${deptInstance?.product?}" var="p">
    <li><g:link controller="product" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="product" action="create" params="['dept.id': deptInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'product.label', default: 'Product')])}</g:link>
</li>
</ul>

</div>


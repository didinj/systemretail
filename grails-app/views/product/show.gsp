
<%@ page import="com.djamware.Product" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-product" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-product" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list product">
			
				<g:if test="${productInstance?.plu}">
				<li class="fieldcontain">
					<span id="plu-label" class="property-label"><g:message code="product.plu.label" default="Plu" /></span>
					
						<span class="property-value" aria-labelledby="plu-label"><g:fieldValue bean="${productInstance}" field="plu"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.barcode}">
				<li class="fieldcontain">
					<span id="barcode-label" class="property-label"><g:message code="product.barcode.label" default="Barcode" /></span>
					
						<span class="property-value" aria-labelledby="barcode-label"><g:fieldValue bean="${productInstance}" field="barcode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.brand}">
				<li class="fieldcontain">
					<span id="brand-label" class="property-label"><g:message code="product.brand.label" default="Brand" /></span>
					
						<span class="property-value" aria-labelledby="brand-label"><g:fieldValue bean="${productInstance}" field="brand"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="product.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${productInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.size}">
				<li class="fieldcontain">
					<span id="size-label" class="property-label"><g:message code="product.size.label" default="Size" /></span>
					
						<span class="property-value" aria-labelledby="size-label"><g:fieldValue bean="${productInstance}" field="size"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.unit}">
				<li class="fieldcontain">
					<span id="unit-label" class="property-label"><g:message code="product.unit.label" default="Unit" /></span>
					
						<span class="property-value" aria-labelledby="unit-label"><g:fieldValue bean="${productInstance}" field="unit"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.cost}">
				<li class="fieldcontain">
					<span id="cost-label" class="property-label"><g:message code="product.cost.label" default="Cost" /></span>
					
						<span class="property-value" aria-labelledby="cost-label"><g:fieldValue bean="${productInstance}" field="cost"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.price}">
				<li class="fieldcontain">
					<span id="price-label" class="property-label"><g:message code="product.price.label" default="Price" /></span>
					
						<span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${productInstance}" field="price"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.tax}">
				<li class="fieldcontain">
					<span id="tax-label" class="property-label"><g:message code="product.tax.label" default="Tax" /></span>
					
						<span class="property-value" aria-labelledby="tax-label"><g:fieldValue bean="${productInstance}" field="tax"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.consigment}">
				<li class="fieldcontain">
					<span id="consigment-label" class="property-label"><g:message code="product.consigment.label" default="Consigment" /></span>
					
						<span class="property-value" aria-labelledby="consigment-label"><g:fieldValue bean="${productInstance}" field="consigment"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.createdate}">
				<li class="fieldcontain">
					<span id="createdate-label" class="property-label"><g:message code="product.createdate.label" default="Createdate" /></span>
					
						<span class="property-value" aria-labelledby="createdate-label"><g:formatDate date="${productInstance?.createdate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.dept}">
				<li class="fieldcontain">
					<span id="dept-label" class="property-label"><g:message code="product.dept.label" default="Dept" /></span>
					
						<span class="property-value" aria-labelledby="dept-label"><g:link controller="dept" action="show" id="${productInstance?.dept?.id}">${productInstance?.dept?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.supplier}">
				<li class="fieldcontain">
					<span id="supplier-label" class="property-label"><g:message code="product.supplier.label" default="Supplier" /></span>
					
						<span class="property-value" aria-labelledby="supplier-label"><g:link controller="supplier" action="show" id="${productInstance?.supplier?.id}">${productInstance?.supplier?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.updatedate}">
				<li class="fieldcontain">
					<span id="updatedate-label" class="property-label"><g:message code="product.updatedate.label" default="Updatedate" /></span>
					
						<span class="property-value" aria-labelledby="updatedate-label"><g:formatDate date="${productInstance?.updatedate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${productInstance?.id}" />
					<g:link class="edit" action="edit" id="${productInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

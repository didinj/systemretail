
<%@ page import="com.djamware.Supplier" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'supplier.label', default: 'Supplier')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-supplier" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-supplier" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list supplier">
			
				<g:if test="${supplierInstance?.suppliercode}">
				<li class="fieldcontain">
					<span id="suppliercode-label" class="property-label"><g:message code="supplier.suppliercode.label" default="Suppliercode" /></span>
					
						<span class="property-value" aria-labelledby="suppliercode-label"><g:fieldValue bean="${supplierInstance}" field="suppliercode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${supplierInstance?.suppliername}">
				<li class="fieldcontain">
					<span id="suppliername-label" class="property-label"><g:message code="supplier.suppliername.label" default="Suppliername" /></span>
					
						<span class="property-value" aria-labelledby="suppliername-label"><g:fieldValue bean="${supplierInstance}" field="suppliername"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${supplierInstance?.supplieraddress}">
				<li class="fieldcontain">
					<span id="supplieraddress-label" class="property-label"><g:message code="supplier.supplieraddress.label" default="Supplieraddress" /></span>
					
						<span class="property-value" aria-labelledby="supplieraddress-label"><g:fieldValue bean="${supplierInstance}" field="supplieraddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${supplierInstance?.suppliercity}">
				<li class="fieldcontain">
					<span id="suppliercity-label" class="property-label"><g:message code="supplier.suppliercity.label" default="Suppliercity" /></span>
					
						<span class="property-value" aria-labelledby="suppliercity-label"><g:fieldValue bean="${supplierInstance}" field="suppliercity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${supplierInstance?.supplierpos}">
				<li class="fieldcontain">
					<span id="supplierpos-label" class="property-label"><g:message code="supplier.supplierpos.label" default="Supplierpos" /></span>
					
						<span class="property-value" aria-labelledby="supplierpos-label"><g:fieldValue bean="${supplierInstance}" field="supplierpos"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${supplierInstance?.supplierphone}">
				<li class="fieldcontain">
					<span id="supplierphone-label" class="property-label"><g:message code="supplier.supplierphone.label" default="Supplierphone" /></span>
					
						<span class="property-value" aria-labelledby="supplierphone-label"><g:fieldValue bean="${supplierInstance}" field="supplierphone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${supplierInstance?.supplieraccountnbr}">
				<li class="fieldcontain">
					<span id="supplieraccountnbr-label" class="property-label"><g:message code="supplier.supplieraccountnbr.label" default="Supplieraccountnbr" /></span>
					
						<span class="property-value" aria-labelledby="supplieraccountnbr-label"><g:fieldValue bean="${supplierInstance}" field="supplieraccountnbr"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${supplierInstance?.supplierbankname}">
				<li class="fieldcontain">
					<span id="supplierbankname-label" class="property-label"><g:message code="supplier.supplierbankname.label" default="Supplierbankname" /></span>
					
						<span class="property-value" aria-labelledby="supplierbankname-label"><g:fieldValue bean="${supplierInstance}" field="supplierbankname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${supplierInstance?.supplieraccountname}">
				<li class="fieldcontain">
					<span id="supplieraccountname-label" class="property-label"><g:message code="supplier.supplieraccountname.label" default="Supplieraccountname" /></span>
					
						<span class="property-value" aria-labelledby="supplieraccountname-label"><g:fieldValue bean="${supplierInstance}" field="supplieraccountname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${supplierInstance?.product}">
				<li class="fieldcontain">
					<span id="product-label" class="property-label"><g:message code="supplier.product.label" default="Product" /></span>
					
						<g:each in="${supplierInstance.product}" var="p">
						<span class="property-value" aria-labelledby="product-label"><g:link controller="product" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${supplierInstance?.purchase}">
				<li class="fieldcontain">
					<span id="purchase-label" class="property-label"><g:message code="supplier.purchase.label" default="Purchase" /></span>
					
						<g:each in="${supplierInstance.purchase}" var="p">
						<span class="property-value" aria-labelledby="purchase-label"><g:link controller="purchase" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${supplierInstance?.id}" />
					<g:link class="edit" action="edit" id="${supplierInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

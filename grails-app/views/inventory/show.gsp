
<%@ page import="com.djamware.Inventory" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'inventory.label', default: 'Inventory')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-inventory" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-inventory" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list inventory">
			
				<g:if test="${inventoryInstance?.plu}">
				<li class="fieldcontain">
					<span id="plu-label" class="property-label"><g:message code="inventory.plu.label" default="Plu" /></span>
					
						<span class="property-value" aria-labelledby="plu-label"><g:fieldValue bean="${inventoryInstance}" field="plu"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${inventoryInstance?.invreceive}">
				<li class="fieldcontain">
					<span id="invreceive-label" class="property-label"><g:message code="inventory.invreceive.label" default="Invreceive" /></span>
					
						<span class="property-value" aria-labelledby="invreceive-label"><g:fieldValue bean="${inventoryInstance}" field="invreceive"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${inventoryInstance?.invsales}">
				<li class="fieldcontain">
					<span id="invsales-label" class="property-label"><g:message code="inventory.invsales.label" default="Invsales" /></span>
					
						<span class="property-value" aria-labelledby="invsales-label"><g:fieldValue bean="${inventoryInstance}" field="invsales"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${inventoryInstance?.invreturn}">
				<li class="fieldcontain">
					<span id="invreturn-label" class="property-label"><g:message code="inventory.invreturn.label" default="Invreturn" /></span>
					
						<span class="property-value" aria-labelledby="invreturn-label"><g:fieldValue bean="${inventoryInstance}" field="invreturn"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${inventoryInstance?.invexpired}">
				<li class="fieldcontain">
					<span id="invexpired-label" class="property-label"><g:message code="inventory.invexpired.label" default="Invexpired" /></span>
					
						<span class="property-value" aria-labelledby="invexpired-label"><g:fieldValue bean="${inventoryInstance}" field="invexpired"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${inventoryInstance?.invtransin}">
				<li class="fieldcontain">
					<span id="invtransin-label" class="property-label"><g:message code="inventory.invtransin.label" default="Invtransin" /></span>
					
						<span class="property-value" aria-labelledby="invtransin-label"><g:fieldValue bean="${inventoryInstance}" field="invtransin"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${inventoryInstance?.invtransout}">
				<li class="fieldcontain">
					<span id="invtransout-label" class="property-label"><g:message code="inventory.invtransout.label" default="Invtransout" /></span>
					
						<span class="property-value" aria-labelledby="invtransout-label"><g:fieldValue bean="${inventoryInstance}" field="invtransout"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${inventoryInstance?.minstock}">
				<li class="fieldcontain">
					<span id="minstock-label" class="property-label"><g:message code="inventory.minstock.label" default="Minstock" /></span>
					
						<span class="property-value" aria-labelledby="minstock-label"><g:fieldValue bean="${inventoryInstance}" field="minstock"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${inventoryInstance?.maxstock}">
				<li class="fieldcontain">
					<span id="maxstock-label" class="property-label"><g:message code="inventory.maxstock.label" default="Maxstock" /></span>
					
						<span class="property-value" aria-labelledby="maxstock-label"><g:fieldValue bean="${inventoryInstance}" field="maxstock"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${inventoryInstance?.minorder}">
				<li class="fieldcontain">
					<span id="minorder-label" class="property-label"><g:message code="inventory.minorder.label" default="Minorder" /></span>
					
						<span class="property-value" aria-labelledby="minorder-label"><g:fieldValue bean="${inventoryInstance}" field="minorder"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${inventoryInstance?.maxorder}">
				<li class="fieldcontain">
					<span id="maxorder-label" class="property-label"><g:message code="inventory.maxorder.label" default="Maxorder" /></span>
					
						<span class="property-value" aria-labelledby="maxorder-label"><g:fieldValue bean="${inventoryInstance}" field="maxorder"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${inventoryInstance?.invstock}">
				<li class="fieldcontain">
					<span id="invstock-label" class="property-label"><g:message code="inventory.invstock.label" default="Invstock" /></span>
					
						<span class="property-value" aria-labelledby="invstock-label"><g:fieldValue bean="${inventoryInstance}" field="invstock"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${inventoryInstance?.lastreceive}">
				<li class="fieldcontain">
					<span id="lastreceive-label" class="property-label"><g:message code="inventory.lastreceive.label" default="Lastreceive" /></span>
					
						<span class="property-value" aria-labelledby="lastreceive-label"><g:formatDate date="${inventoryInstance?.lastreceive}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${inventoryInstance?.lastsales}">
				<li class="fieldcontain">
					<span id="lastsales-label" class="property-label"><g:message code="inventory.lastsales.label" default="Lastsales" /></span>
					
						<span class="property-value" aria-labelledby="lastsales-label"><g:formatDate date="${inventoryInstance?.lastsales}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${inventoryInstance?.lastexpired}">
				<li class="fieldcontain">
					<span id="lastexpired-label" class="property-label"><g:message code="inventory.lastexpired.label" default="Lastexpired" /></span>
					
						<span class="property-value" aria-labelledby="lastexpired-label"><g:formatDate date="${inventoryInstance?.lastexpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${inventoryInstance?.lasttransin}">
				<li class="fieldcontain">
					<span id="lasttransin-label" class="property-label"><g:message code="inventory.lasttransin.label" default="Lasttransin" /></span>
					
						<span class="property-value" aria-labelledby="lasttransin-label"><g:formatDate date="${inventoryInstance?.lasttransin}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${inventoryInstance?.lasttransout}">
				<li class="fieldcontain">
					<span id="lasttransout-label" class="property-label"><g:message code="inventory.lasttransout.label" default="Lasttransout" /></span>
					
						<span class="property-value" aria-labelledby="lasttransout-label"><g:formatDate date="${inventoryInstance?.lasttransout}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${inventoryInstance?.id}" />
					<g:link class="edit" action="edit" id="${inventoryInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

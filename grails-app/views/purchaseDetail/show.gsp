
<%@ page import="com.djamware.PurchaseDetail" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'purchaseDetail.label', default: 'PurchaseDetail')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-purchaseDetail" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-purchaseDetail" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list purchaseDetail">
			
				<g:if test="${purchaseDetailInstance?.purchase}">
				<li class="fieldcontain">
					<span id="purchase-label" class="property-label"><g:message code="purchaseDetail.purchase.label" default="Purchase" /></span>
					
						<span class="property-value" aria-labelledby="purchase-label"><g:link controller="purchase" action="show" id="${purchaseDetailInstance?.purchase?.id}">${purchaseDetailInstance?.purchase?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${purchaseDetailInstance?.plu}">
				<li class="fieldcontain">
					<span id="plu-label" class="property-label"><g:message code="purchaseDetail.plu.label" default="Plu" /></span>
					
						<span class="property-value" aria-labelledby="plu-label"><g:fieldValue bean="${purchaseDetailInstance}" field="plu"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${purchaseDetailInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="purchaseDetail.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${purchaseDetailInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${purchaseDetailInstance?.qty}">
				<li class="fieldcontain">
					<span id="qty-label" class="property-label"><g:message code="purchaseDetail.qty.label" default="Qty" /></span>
					
						<span class="property-value" aria-labelledby="qty-label"><g:fieldValue bean="${purchaseDetailInstance}" field="qty"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${purchaseDetailInstance?.cost}">
				<li class="fieldcontain">
					<span id="cost-label" class="property-label"><g:message code="purchaseDetail.cost.label" default="Cost" /></span>
					
						<span class="property-value" aria-labelledby="cost-label"><g:fieldValue bean="${purchaseDetailInstance}" field="cost"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${purchaseDetailInstance?.tcost}">
				<li class="fieldcontain">
					<span id="tcost-label" class="property-label"><g:message code="purchaseDetail.tcost.label" default="Tcost" /></span>
					
						<span class="property-value" aria-labelledby="tcost-label"><g:fieldValue bean="${purchaseDetailInstance}" field="tcost"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${purchaseDetailInstance?.id}" />
					<g:link class="edit" action="edit" id="${purchaseDetailInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>


<%@ page import="com.djamware.Purchase" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'purchase.label', default: 'Purchase')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-purchase" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-purchase" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list purchase">
			
				<g:if test="${purchaseInstance?.supplier}">
				<li class="fieldcontain">
					<span id="supplier-label" class="property-label"><g:message code="purchase.supplier.label" default="Supplier" /></span>
					
						<span class="property-value" aria-labelledby="supplier-label"><g:link controller="supplier" action="show" id="${purchaseInstance?.supplier?.id}">${purchaseInstance?.supplier?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${purchaseInstance?.purchaseDetail}">
				<li class="fieldcontain">
					<span id="purchaseDetail-label" class="property-label"><g:message code="purchase.purchaseDetail.label" default="Purchase Detail" /></span>
					
						<g:each in="${purchaseInstance.purchaseDetail}" var="p">
						<span class="property-value" aria-labelledby="purchaseDetail-label"><g:link controller="purchaseDetail" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${purchaseInstance?.tbuycost}">
				<li class="fieldcontain">
					<span id="tbuycost-label" class="property-label"><g:message code="purchase.tbuycost.label" default="Tbuycost" /></span>
					
						<span class="property-value" aria-labelledby="tbuycost-label"><g:fieldValue bean="${purchaseInstance}" field="tbuycost"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${purchaseInstance?.tdiscount}">
				<li class="fieldcontain">
					<span id="tdiscount-label" class="property-label"><g:message code="purchase.tdiscount.label" default="Tdiscount" /></span>
					
						<span class="property-value" aria-labelledby="tdiscount-label"><g:fieldValue bean="${purchaseInstance}" field="tdiscount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${purchaseInstance?.grandtotal}">
				<li class="fieldcontain">
					<span id="tcost-label" class="property-label"><g:message code="purchase.tcost.label" default="Tcost" /></span>
					
						<span class="property-value" aria-labelledby="tcost-label"><g:fieldValue bean="${purchaseInstance}" field="grandtotal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${purchaseInstance?.tax}">
				<li class="fieldcontain">
					<span id="tax-label" class="property-label"><g:message code="purchase.tax.label" default="Tax" /></span>
					
						<span class="property-value" aria-labelledby="tax-label"><g:formatBoolean boolean="${purchaseInstance?.tax}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${purchaseInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="purchase.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${purchaseInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${purchaseInstance?.userid}">
				<li class="fieldcontain">
					<span id="userid-label" class="property-label"><g:message code="purchase.userid.label" default="Userid" /></span>
					
						<span class="property-value" aria-labelledby="userid-label"><g:fieldValue bean="${purchaseInstance}" field="userid"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${purchaseInstance?.notes}">
				<li class="fieldcontain">
					<span id="notes-label" class="property-label"><g:message code="purchase.notes.label" default="Notes" /></span>
					
						<span class="property-value" aria-labelledby="notes-label"><g:fieldValue bean="${purchaseInstance}" field="notes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${purchaseInstance?.createdate}">
				<li class="fieldcontain">
					<span id="createdate-label" class="property-label"><g:message code="purchase.createdate.label" default="Createdate" /></span>
					
						<span class="property-value" aria-labelledby="createdate-label"><g:formatDate date="${purchaseInstance?.createdate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${purchaseInstance?.confirmdate}">
				<li class="fieldcontain">
					<span id="confirmdate-label" class="property-label"><g:message code="purchase.confirmdate.label" default="Confirmdate" /></span>
					
						<span class="property-value" aria-labelledby="confirmdate-label"><g:formatDate date="${purchaseInstance?.confirmdate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${purchaseInstance?.updatedate}">
				<li class="fieldcontain">
					<span id="updatedate-label" class="property-label"><g:message code="purchase.updatedate.label" default="Updatedate" /></span>
					
						<span class="property-value" aria-labelledby="updatedate-label"><g:formatDate date="${purchaseInstance?.updatedate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${purchaseInstance?.id}" />
					<g:link class="edit" action="edit" id="${purchaseInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>


<%@ page import="com.djamware.Returns" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'returns.label', default: 'Returns')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-returns" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-returns" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list returns">
			
				<g:if test="${returnsInstance?.suppliercode}">
				<li class="fieldcontain">
					<span id="suppliercode-label" class="property-label"><g:message code="returns.suppliercode.label" default="Suppliercode" /></span>
					
						<span class="property-value" aria-labelledby="suppliercode-label"><g:fieldValue bean="${returnsInstance}" field="suppliercode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${returnsInstance?.plu}">
				<li class="fieldcontain">
					<span id="plu-label" class="property-label"><g:message code="returns.plu.label" default="Plu" /></span>
					
						<span class="property-value" aria-labelledby="plu-label"><g:fieldValue bean="${returnsInstance}" field="plu"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${returnsInstance?.returndate}">
				<li class="fieldcontain">
					<span id="returndate-label" class="property-label"><g:message code="returns.returndate.label" default="Returndate" /></span>
					
						<span class="property-value" aria-labelledby="returndate-label"><g:formatDate date="${returnsInstance?.returndate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${returnsInstance?.returnqty}">
				<li class="fieldcontain">
					<span id="returnqty-label" class="property-label"><g:message code="returns.returnqty.label" default="Returnqty" /></span>
					
						<span class="property-value" aria-labelledby="returnqty-label"><g:fieldValue bean="${returnsInstance}" field="returnqty"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${returnsInstance?.price}">
				<li class="fieldcontain">
					<span id="price-label" class="property-label"><g:message code="returns.price.label" default="Price" /></span>
					
						<span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${returnsInstance}" field="price"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${returnsInstance?.returntprice}">
				<li class="fieldcontain">
					<span id="returntprice-label" class="property-label"><g:message code="returns.returntprice.label" default="Returntprice" /></span>
					
						<span class="property-value" aria-labelledby="returntprice-label"><g:fieldValue bean="${returnsInstance}" field="returntprice"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${returnsInstance?.returnreason}">
				<li class="fieldcontain">
					<span id="returnreason-label" class="property-label"><g:message code="returns.returnreason.label" default="Returnreason" /></span>
					
						<span class="property-value" aria-labelledby="returnreason-label"><g:fieldValue bean="${returnsInstance}" field="returnreason"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${returnsInstance?.userid}">
				<li class="fieldcontain">
					<span id="userid-label" class="property-label"><g:message code="returns.userid.label" default="Userid" /></span>
					
						<span class="property-value" aria-labelledby="userid-label"><g:fieldValue bean="${returnsInstance}" field="userid"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${returnsInstance?.id}" />
					<g:link class="edit" action="edit" id="${returnsInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

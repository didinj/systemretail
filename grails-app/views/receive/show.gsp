
<%@ page import="com.djamware.Receive" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'receive.label', default: 'Receive')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-receive" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-receive" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list receive">
			
				<g:if test="${receiveInstance?.plu}">
				<li class="fieldcontain">
					<span id="plu-label" class="property-label"><g:message code="receive.plu.label" default="Plu" /></span>
					
						<span class="property-value" aria-labelledby="plu-label"><g:fieldValue bean="${receiveInstance}" field="plu"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${receiveInstance?.orderqty}">
				<li class="fieldcontain">
					<span id="orderqty-label" class="property-label"><g:message code="receive.orderqty.label" default="Orderqty" /></span>
					
						<span class="property-value" aria-labelledby="orderqty-label"><g:fieldValue bean="${receiveInstance}" field="orderqty"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${receiveInstance?.receiveqty}">
				<li class="fieldcontain">
					<span id="receiveqty-label" class="property-label"><g:message code="receive.receiveqty.label" default="Receiveqty" /></span>
					
						<span class="property-value" aria-labelledby="receiveqty-label"><g:fieldValue bean="${receiveInstance}" field="receiveqty"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${receiveInstance?.orderdate}">
				<li class="fieldcontain">
					<span id="orderdate-label" class="property-label"><g:message code="receive.orderdate.label" default="Orderdate" /></span>
					
						<span class="property-value" aria-labelledby="orderdate-label"><g:formatDate date="${receiveInstance?.orderdate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${receiveInstance?.receivedate}">
				<li class="fieldcontain">
					<span id="receivedate-label" class="property-label"><g:message code="receive.receivedate.label" default="Receivedate" /></span>
					
						<span class="property-value" aria-labelledby="receivedate-label"><g:formatDate date="${receiveInstance?.receivedate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${receiveInstance?.userid}">
				<li class="fieldcontain">
					<span id="userid-label" class="property-label"><g:message code="receive.userid.label" default="Userid" /></span>
					
						<span class="property-value" aria-labelledby="userid-label"><g:fieldValue bean="${receiveInstance}" field="userid"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${receiveInstance?.id}" />
					<g:link class="edit" action="edit" id="${receiveInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

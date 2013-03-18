
<%@ page import="com.djamware.Transfer" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'transfer.label', default: 'Transfer')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-transfer" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-transfer" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list transfer">
			
				<g:if test="${transferInstance?.plu}">
				<li class="fieldcontain">
					<span id="plu-label" class="property-label"><g:message code="transfer.plu.label" default="Plu" /></span>
					
						<span class="property-value" aria-labelledby="plu-label"><g:fieldValue bean="${transferInstance}" field="plu"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${transferInstance?.tansferdate}">
				<li class="fieldcontain">
					<span id="tansferdate-label" class="property-label"><g:message code="transfer.tansferdate.label" default="Tansferdate" /></span>
					
						<span class="property-value" aria-labelledby="tansferdate-label"><g:formatDate date="${transferInstance?.tansferdate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${transferInstance?.transferqty}">
				<li class="fieldcontain">
					<span id="transferqty-label" class="property-label"><g:message code="transfer.transferqty.label" default="Transferqty" /></span>
					
						<span class="property-value" aria-labelledby="transferqty-label"><g:fieldValue bean="${transferInstance}" field="transferqty"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${transferInstance?.transferfrom}">
				<li class="fieldcontain">
					<span id="transferfrom-label" class="property-label"><g:message code="transfer.transferfrom.label" default="Transferfrom" /></span>
					
						<span class="property-value" aria-labelledby="transferfrom-label"><g:fieldValue bean="${transferInstance}" field="transferfrom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${transferInstance?.transferto}">
				<li class="fieldcontain">
					<span id="transferto-label" class="property-label"><g:message code="transfer.transferto.label" default="Transferto" /></span>
					
						<span class="property-value" aria-labelledby="transferto-label"><g:fieldValue bean="${transferInstance}" field="transferto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${transferInstance?.transferprice}">
				<li class="fieldcontain">
					<span id="transferprice-label" class="property-label"><g:message code="transfer.transferprice.label" default="Transferprice" /></span>
					
						<span class="property-value" aria-labelledby="transferprice-label"><g:fieldValue bean="${transferInstance}" field="transferprice"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${transferInstance?.transfertprice}">
				<li class="fieldcontain">
					<span id="transfertprice-label" class="property-label"><g:message code="transfer.transfertprice.label" default="Transfertprice" /></span>
					
						<span class="property-value" aria-labelledby="transfertprice-label"><g:fieldValue bean="${transferInstance}" field="transfertprice"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${transferInstance?.userid}">
				<li class="fieldcontain">
					<span id="userid-label" class="property-label"><g:message code="transfer.userid.label" default="Userid" /></span>
					
						<span class="property-value" aria-labelledby="userid-label"><g:fieldValue bean="${transferInstance}" field="userid"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${transferInstance?.id}" />
					<g:link class="edit" action="edit" id="${transferInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

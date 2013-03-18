
<%@ page import="com.djamware.Dept" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'dept.label', default: 'Dept')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-dept" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-dept" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list dept">
			
				<g:if test="${deptInstance?.deptcode}">
				<li class="fieldcontain">
					<span id="deptcode-label" class="property-label"><g:message code="dept.deptcode.label" default="Deptcode" /></span>
					
						<span class="property-value" aria-labelledby="deptcode-label"><g:fieldValue bean="${deptInstance}" field="deptcode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${deptInstance?.deptdesc}">
				<li class="fieldcontain">
					<span id="deptdesc-label" class="property-label"><g:message code="dept.deptdesc.label" default="Deptdesc" /></span>
					
						<span class="property-value" aria-labelledby="deptdesc-label"><g:fieldValue bean="${deptInstance}" field="deptdesc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${deptInstance?.division}">
				<li class="fieldcontain">
					<span id="division-label" class="property-label"><g:message code="dept.division.label" default="Division" /></span>
					
						<span class="property-value" aria-labelledby="division-label"><g:link controller="division" action="show" id="${deptInstance?.division?.id}">${deptInstance?.division?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${deptInstance?.product}">
				<li class="fieldcontain">
					<span id="product-label" class="property-label"><g:message code="dept.product.label" default="Product" /></span>
					
						<g:each in="${deptInstance.product}" var="p">
						<span class="property-value" aria-labelledby="product-label"><g:link controller="product" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${deptInstance?.id}" />
					<g:link class="edit" action="edit" id="${deptInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

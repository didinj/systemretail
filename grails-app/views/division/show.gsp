
<%@ page import="com.djamware.Division" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'division.label', default: 'Division')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-division" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-division" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list division">
			
				<g:if test="${divisionInstance?.divcode}">
				<li class="fieldcontain">
					<span id="divcode-label" class="property-label"><g:message code="division.divcode.label" default="Divcode" /></span>
					
						<span class="property-value" aria-labelledby="divcode-label"><g:fieldValue bean="${divisionInstance}" field="divcode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${divisionInstance?.divdesc}">
				<li class="fieldcontain">
					<span id="divdesc-label" class="property-label"><g:message code="division.divdesc.label" default="Divdesc" /></span>
					
						<span class="property-value" aria-labelledby="divdesc-label"><g:fieldValue bean="${divisionInstance}" field="divdesc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${divisionInstance?.dept}">
				<li class="fieldcontain">
					<span id="dept-label" class="property-label"><g:message code="division.dept.label" default="Dept" /></span>
					
						<g:each in="${divisionInstance.dept}" var="d">
						<span class="property-value" aria-labelledby="dept-label"><g:link controller="dept" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${divisionInstance?.id}" />
					<g:link class="edit" action="edit" id="${divisionInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

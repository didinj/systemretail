
<%@ page import="com.djamware.Division" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'division.label', default: 'Division')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-division" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-division" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="divcode" title="${message(code: 'division.divcode.label', default: 'Divcode')}" />
					
						<g:sortableColumn property="divdesc" title="${message(code: 'division.divdesc.label', default: 'Divdesc')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${divisionInstanceList}" status="i" var="divisionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${divisionInstance.id}">${fieldValue(bean: divisionInstance, field: "divcode")}</g:link></td>
					
						<td>${fieldValue(bean: divisionInstance, field: "divdesc")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${divisionInstanceTotal}" />
			</div>
		</div>
	</body>
</html>

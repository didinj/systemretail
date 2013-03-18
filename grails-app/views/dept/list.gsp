
<%@ page import="com.djamware.Dept" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'dept.label', default: 'Dept')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-dept" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-dept" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="deptcode" title="${message(code: 'dept.deptcode.label', default: 'Deptcode')}" />
					
						<g:sortableColumn property="deptdesc" title="${message(code: 'dept.deptdesc.label', default: 'Deptdesc')}" />
					
						<th><g:message code="dept.division.label" default="Division" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${deptInstanceList}" status="i" var="deptInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${deptInstance.id}">${fieldValue(bean: deptInstance, field: "deptcode")}</g:link></td>
					
						<td>${fieldValue(bean: deptInstance, field: "deptdesc")}</td>
					
						<td>${fieldValue(bean: deptInstance, field: "division")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${deptInstanceTotal}" />
			</div>
		</div>
	</body>
</html>

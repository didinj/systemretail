
<%@ page import="com.djamware.Supplier" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'supplier.label', default: 'Supplier')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-supplier" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-supplier" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="suppliercode" title="${message(code: 'supplier.suppliercode.label', default: 'Suppliercode')}" />
					
						<g:sortableColumn property="suppliername" title="${message(code: 'supplier.suppliername.label', default: 'Suppliername')}" />
					
						<g:sortableColumn property="supplieraddress" title="${message(code: 'supplier.supplieraddress.label', default: 'Supplieraddress')}" />
					
						<g:sortableColumn property="suppliercity" title="${message(code: 'supplier.suppliercity.label', default: 'Suppliercity')}" />
					
						<g:sortableColumn property="supplierpos" title="${message(code: 'supplier.supplierpos.label', default: 'Supplierpos')}" />
					
						<g:sortableColumn property="supplierphone" title="${message(code: 'supplier.supplierphone.label', default: 'Supplierphone')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${supplierInstanceList}" status="i" var="supplierInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${supplierInstance.id}">${fieldValue(bean: supplierInstance, field: "suppliercode")}</g:link></td>
					
						<td>${fieldValue(bean: supplierInstance, field: "suppliername")}</td>
					
						<td>${fieldValue(bean: supplierInstance, field: "supplieraddress")}</td>
					
						<td>${fieldValue(bean: supplierInstance, field: "suppliercity")}</td>
					
						<td>${fieldValue(bean: supplierInstance, field: "supplierpos")}</td>
					
						<td>${fieldValue(bean: supplierInstance, field: "supplierphone")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${supplierInstanceTotal}" />
			</div>
		</div>
	</body>
</html>

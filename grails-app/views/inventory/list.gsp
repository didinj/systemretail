
<%@ page import="com.djamware.Inventory" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'inventory.label', default: 'Inventory')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-inventory" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-inventory" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="plu" title="${message(code: 'inventory.plu.label', default: 'Plu')}" />
					
						<g:sortableColumn property="invreceive" title="${message(code: 'inventory.invreceive.label', default: 'Invreceive')}" />
					
						<g:sortableColumn property="invsales" title="${message(code: 'inventory.invsales.label', default: 'Invsales')}" />
					
						<g:sortableColumn property="invreturn" title="${message(code: 'inventory.invreturn.label', default: 'Invreturn')}" />
					
						<g:sortableColumn property="invexpired" title="${message(code: 'inventory.invexpired.label', default: 'Invexpired')}" />
					
						<g:sortableColumn property="invtransin" title="${message(code: 'inventory.invtransin.label', default: 'Invtransin')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${inventoryInstanceList}" status="i" var="inventoryInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${inventoryInstance.id}">${fieldValue(bean: inventoryInstance, field: "plu")}</g:link></td>
					
						<td>${fieldValue(bean: inventoryInstance, field: "invreceive")}</td>
					
						<td>${fieldValue(bean: inventoryInstance, field: "invsales")}</td>
					
						<td>${fieldValue(bean: inventoryInstance, field: "invreturn")}</td>
					
						<td>${fieldValue(bean: inventoryInstance, field: "invexpired")}</td>
					
						<td>${fieldValue(bean: inventoryInstance, field: "invtransin")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${inventoryInstanceTotal}" />
			</div>
		</div>
	</body>
</html>


<%@ page import="com.djamware.Purchase" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'purchase.label', default: 'Purchase')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-purchase" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-purchase" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="purchase.supplier.label" default="Supplier" /></th>
					
						<g:sortableColumn property="tbuycost" title="${message(code: 'purchase.tbuycost.label', default: 'Tbuycost')}" />
					
						<g:sortableColumn property="tdiscount" title="${message(code: 'purchase.tdiscount.label', default: 'Tdiscount')}" />
					
						<g:sortableColumn property="tcost" title="${message(code: 'purchase.tcost.label', default: 'Tcost')}" />
					
						<g:sortableColumn property="tax" title="${message(code: 'purchase.tax.label', default: 'Tax')}" />
					
						<g:sortableColumn property="status" title="${message(code: 'purchase.status.label', default: 'Status')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${purchaseInstanceList}" status="i" var="purchaseInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${purchaseInstance.id}">${fieldValue(bean: purchaseInstance, field: "supplier")}</g:link></td>
					
						<td>${fieldValue(bean: purchaseInstance, field: "tbuycost")}</td>
					
						<td>${fieldValue(bean: purchaseInstance, field: "tdiscount")}</td>
					
						<td>${fieldValue(bean: purchaseInstance, field: "grandtotal")}</td>
					
						<td><g:formatBoolean boolean="${purchaseInstance.tax}" /></td>
					
						<td>${fieldValue(bean: purchaseInstance, field: "status")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${purchaseInstanceTotal}" />
			</div>
		</div>
	</body>
</html>

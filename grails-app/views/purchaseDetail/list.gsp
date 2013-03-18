
<%@ page import="com.djamware.PurchaseDetail" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'purchaseDetail.label', default: 'PurchaseDetail')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-purchaseDetail" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-purchaseDetail" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="purchaseDetail.purchase.label" default="Purchase" /></th>
					
						<g:sortableColumn property="plu" title="${message(code: 'purchaseDetail.plu.label', default: 'Plu')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'purchaseDetail.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="qty" title="${message(code: 'purchaseDetail.qty.label', default: 'Qty')}" />
					
						<g:sortableColumn property="cost" title="${message(code: 'purchaseDetail.cost.label', default: 'Cost')}" />
					
						<g:sortableColumn property="tcost" title="${message(code: 'purchaseDetail.tcost.label', default: 'Tcost')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${purchaseDetailInstanceList}" status="i" var="purchaseDetailInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${purchaseDetailInstance.id}">${fieldValue(bean: purchaseDetailInstance, field: "purchase")}</g:link></td>
					
						<td>${fieldValue(bean: purchaseDetailInstance, field: "plu")}</td>
					
						<td>${fieldValue(bean: purchaseDetailInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: purchaseDetailInstance, field: "qty")}</td>
					
						<td>${fieldValue(bean: purchaseDetailInstance, field: "cost")}</td>
					
						<td>${fieldValue(bean: purchaseDetailInstance, field: "tcost")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${purchaseDetailInstanceTotal}" />
			</div>
		</div>
	</body>
</html>

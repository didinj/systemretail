
<%@ page import="com.djamware.Returns" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'returns.label', default: 'Returns')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-returns" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-returns" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="suppliercode" title="${message(code: 'returns.suppliercode.label', default: 'Suppliercode')}" />
					
						<g:sortableColumn property="plu" title="${message(code: 'returns.plu.label', default: 'Plu')}" />
					
						<g:sortableColumn property="returndate" title="${message(code: 'returns.returndate.label', default: 'Returndate')}" />
					
						<g:sortableColumn property="returnqty" title="${message(code: 'returns.returnqty.label', default: 'Returnqty')}" />
					
						<g:sortableColumn property="price" title="${message(code: 'returns.price.label', default: 'Price')}" />
					
						<g:sortableColumn property="returntprice" title="${message(code: 'returns.returntprice.label', default: 'Returntprice')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${returnsInstanceList}" status="i" var="returnsInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${returnsInstance.id}">${fieldValue(bean: returnsInstance, field: "suppliercode")}</g:link></td>
					
						<td>${fieldValue(bean: returnsInstance, field: "plu")}</td>
					
						<td><g:formatDate date="${returnsInstance.returndate}" /></td>
					
						<td>${fieldValue(bean: returnsInstance, field: "returnqty")}</td>
					
						<td>${fieldValue(bean: returnsInstance, field: "price")}</td>
					
						<td>${fieldValue(bean: returnsInstance, field: "returntprice")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${returnsInstanceTotal}" />
			</div>
		</div>
	</body>
</html>

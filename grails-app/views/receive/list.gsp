
<%@ page import="com.djamware.Receive" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'receive.label', default: 'Receive')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-receive" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-receive" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="plu" title="${message(code: 'receive.plu.label', default: 'Plu')}" />
					
						<g:sortableColumn property="orderqty" title="${message(code: 'receive.orderqty.label', default: 'Orderqty')}" />
					
						<g:sortableColumn property="receiveqty" title="${message(code: 'receive.receiveqty.label', default: 'Receiveqty')}" />
					
						<g:sortableColumn property="orderdate" title="${message(code: 'receive.orderdate.label', default: 'Orderdate')}" />
					
						<g:sortableColumn property="receivedate" title="${message(code: 'receive.receivedate.label', default: 'Receivedate')}" />
					
						<g:sortableColumn property="userid" title="${message(code: 'receive.userid.label', default: 'Userid')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${receiveInstanceList}" status="i" var="receiveInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${receiveInstance.id}">${fieldValue(bean: receiveInstance, field: "plu")}</g:link></td>
					
						<td>${fieldValue(bean: receiveInstance, field: "orderqty")}</td>
					
						<td>${fieldValue(bean: receiveInstance, field: "receiveqty")}</td>
					
						<td><g:formatDate date="${receiveInstance.orderdate}" /></td>
					
						<td><g:formatDate date="${receiveInstance.receivedate}" /></td>
					
						<td>${fieldValue(bean: receiveInstance, field: "userid")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${receiveInstanceTotal}" />
			</div>
		</div>
	</body>
</html>

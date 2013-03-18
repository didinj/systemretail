
<%@ page import="com.djamware.Transfer" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'transfer.label', default: 'Transfer')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-transfer" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-transfer" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="plu" title="${message(code: 'transfer.plu.label', default: 'Plu')}" />
					
						<g:sortableColumn property="tansferdate" title="${message(code: 'transfer.tansferdate.label', default: 'Tansferdate')}" />
					
						<g:sortableColumn property="transferqty" title="${message(code: 'transfer.transferqty.label', default: 'Transferqty')}" />
					
						<g:sortableColumn property="transferfrom" title="${message(code: 'transfer.transferfrom.label', default: 'Transferfrom')}" />
					
						<g:sortableColumn property="transferto" title="${message(code: 'transfer.transferto.label', default: 'Transferto')}" />
					
						<g:sortableColumn property="transferprice" title="${message(code: 'transfer.transferprice.label', default: 'Transferprice')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${transferInstanceList}" status="i" var="transferInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${transferInstance.id}">${fieldValue(bean: transferInstance, field: "plu")}</g:link></td>
					
						<td><g:formatDate date="${transferInstance.tansferdate}" /></td>
					
						<td>${fieldValue(bean: transferInstance, field: "transferqty")}</td>
					
						<td>${fieldValue(bean: transferInstance, field: "transferfrom")}</td>
					
						<td>${fieldValue(bean: transferInstance, field: "transferto")}</td>
					
						<td>${fieldValue(bean: transferInstance, field: "transferprice")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${transferInstanceTotal}" />
			</div>
		</div>
	</body>
</html>

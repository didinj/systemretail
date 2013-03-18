
<%@ page import="com.djamware.Sales" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'sales.label', default: 'Sales')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-sales" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-sales" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="plu" title="${message(code: 'sales.plu.label', default: 'Plu')}" />
					
						<g:sortableColumn property="storenbr" title="${message(code: 'sales.storenbr.label', default: 'Storenbr')}" />
					
						<g:sortableColumn property="posnbr" title="${message(code: 'sales.posnbr.label', default: 'Posnbr')}" />
					
						<g:sortableColumn property="shift" title="${message(code: 'sales.shift.label', default: 'Shift')}" />
					
						<g:sortableColumn property="userid" title="${message(code: 'sales.userid.label', default: 'Userid')}" />
					
						<g:sortableColumn property="trndate" title="${message(code: 'sales.trndate.label', default: 'Trndate')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${salesInstanceList}" status="i" var="salesInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${salesInstance.id}">${fieldValue(bean: salesInstance, field: "plu")}</g:link></td>
					
						<td>${fieldValue(bean: salesInstance, field: "storenbr")}</td>
					
						<td>${fieldValue(bean: salesInstance, field: "posnbr")}</td>
					
						<td>${fieldValue(bean: salesInstance, field: "shift")}</td>
					
						<td>${fieldValue(bean: salesInstance, field: "userid")}</td>
					
						<td>${fieldValue(bean: salesInstance, field: "trndate")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${salesInstanceTotal}" />
			</div>
		</div>
	</body>
</html>

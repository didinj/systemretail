
<%@ page import="com.djamware.Sales" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'sales.label', default: 'Sales')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-sales" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-sales" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list sales">
			
				<g:if test="${salesInstance?.plu}">
				<li class="fieldcontain">
					<span id="plu-label" class="property-label"><g:message code="sales.plu.label" default="Plu" /></span>
					
						<span class="property-value" aria-labelledby="plu-label"><g:fieldValue bean="${salesInstance}" field="plu"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${salesInstance?.storenbr}">
				<li class="fieldcontain">
					<span id="storenbr-label" class="property-label"><g:message code="sales.storenbr.label" default="Storenbr" /></span>
					
						<span class="property-value" aria-labelledby="storenbr-label"><g:fieldValue bean="${salesInstance}" field="storenbr"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${salesInstance?.posnbr}">
				<li class="fieldcontain">
					<span id="posnbr-label" class="property-label"><g:message code="sales.posnbr.label" default="Posnbr" /></span>
					
						<span class="property-value" aria-labelledby="posnbr-label"><g:fieldValue bean="${salesInstance}" field="posnbr"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${salesInstance?.shift}">
				<li class="fieldcontain">
					<span id="shift-label" class="property-label"><g:message code="sales.shift.label" default="Shift" /></span>
					
						<span class="property-value" aria-labelledby="shift-label"><g:fieldValue bean="${salesInstance}" field="shift"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${salesInstance?.userid}">
				<li class="fieldcontain">
					<span id="userid-label" class="property-label"><g:message code="sales.userid.label" default="Userid" /></span>
					
						<span class="property-value" aria-labelledby="userid-label"><g:fieldValue bean="${salesInstance}" field="userid"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${salesInstance?.trndate}">
				<li class="fieldcontain">
					<span id="trndate-label" class="property-label"><g:message code="sales.trndate.label" default="Trndate" /></span>
					
						<span class="property-value" aria-labelledby="trndate-label"><g:fieldValue bean="${salesInstance}" field="trndate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${salesInstance?.trntime}">
				<li class="fieldcontain">
					<span id="trntime-label" class="property-label"><g:message code="sales.trntime.label" default="Trntime" /></span>
					
						<span class="property-value" aria-labelledby="trntime-label"><g:fieldValue bean="${salesInstance}" field="trntime"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${salesInstance?.salesqty}">
				<li class="fieldcontain">
					<span id="salesqty-label" class="property-label"><g:message code="sales.salesqty.label" default="Salesqty" /></span>
					
						<span class="property-value" aria-labelledby="salesqty-label"><g:fieldValue bean="${salesInstance}" field="salesqty"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${salesInstance?.price}">
				<li class="fieldcontain">
					<span id="price-label" class="property-label"><g:message code="sales.price.label" default="Price" /></span>
					
						<span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${salesInstance}" field="price"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${salesInstance?.tprice}">
				<li class="fieldcontain">
					<span id="tprice-label" class="property-label"><g:message code="sales.tprice.label" default="Tprice" /></span>
					
						<span class="property-value" aria-labelledby="tprice-label"><g:fieldValue bean="${salesInstance}" field="tprice"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${salesInstance?.discount}">
				<li class="fieldcontain">
					<span id="discount-label" class="property-label"><g:message code="sales.discount.label" default="Discount" /></span>
					
						<span class="property-value" aria-labelledby="discount-label"><g:fieldValue bean="${salesInstance}" field="discount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${salesInstance?.tax}">
				<li class="fieldcontain">
					<span id="tax-label" class="property-label"><g:message code="sales.tax.label" default="Tax" /></span>
					
						<span class="property-value" aria-labelledby="tax-label"><g:fieldValue bean="${salesInstance}" field="tax"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${salesInstance?.grossales}">
				<li class="fieldcontain">
					<span id="grossales-label" class="property-label"><g:message code="sales.grossales.label" default="Grossales" /></span>
					
						<span class="property-value" aria-labelledby="grossales-label"><g:fieldValue bean="${salesInstance}" field="grossales"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${salesInstance?.nettsales}">
				<li class="fieldcontain">
					<span id="nettsales-label" class="property-label"><g:message code="sales.nettsales.label" default="Nettsales" /></span>
					
						<span class="property-value" aria-labelledby="nettsales-label"><g:fieldValue bean="${salesInstance}" field="nettsales"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${salesInstance?.id}" />
					<g:link class="edit" action="edit" id="${salesInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

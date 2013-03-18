<%@ page import="com.djamware.Division" %>



<div class="fieldcontain ${hasErrors(bean: divisionInstance, field: 'divcode', 'error')} ">
	<label for="divcode">
		<g:message code="division.divcode.label" default="Divcode" />
		
	</label>
	<g:textField name="divcode" value="${divisionInstance?.divcode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: divisionInstance, field: 'divdesc', 'error')} ">
	<label for="divdesc">
		<g:message code="division.divdesc.label" default="Divdesc" />
		
	</label>
	<g:textField name="divdesc" value="${divisionInstance?.divdesc}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: divisionInstance, field: 'dept', 'error')} ">
	<label for="dept">
		<g:message code="division.dept.label" default="Dept" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${divisionInstance?.dept?}" var="d">
    <li><g:link controller="dept" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="dept" action="create" params="['division.id': divisionInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'dept.label', default: 'Dept')])}</g:link>
</li>
</ul>

</div>


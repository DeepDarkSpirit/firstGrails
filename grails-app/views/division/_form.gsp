<%@ page import="firstgrails.Division" %>



<div class="fieldcontain ${hasErrors(bean: divisionInstance, field: 'divisionID', 'error')} required form-group">
	<label for="divisionID">
		<g:message code="division.divisionID.label" default="Division ID" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="divisionID" required="" value="${divisionInstance?.divisionID}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: divisionInstance, field: 'divisionName', 'error')} required form-group">
	<label for="divisionName">
		<g:message code="division.divisionName.label" default="Division Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="divisionName" required="" value="${divisionInstance?.divisionName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: divisionInstance, field: 'groupID', 'error')} required form-group">
	<label for="groupID">
		<g:message code="division.groupID.label" default="Group ID" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="groupID" type="number" value="${divisionInstance.groupID}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: divisionInstance, field: 'groupName', 'error')} required form-group">
	<label for="groupName">
		<g:message code="division.groupName.label" default="Group Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="groupName" required="" value="${divisionInstance?.groupName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: divisionInstance, field: 'turnCandidates', 'error')}  form-group">
	<label for="turnCandidates">
		<g:message code="division.turnCandidates.label" default="Turn Candidates" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${divisionInstance?.turnCandidates?}" var="t">
    <li><g:link controller="turnCandidate" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="turnCandidate" action="create" params="['division.id': divisionInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'turnCandidate.label', default: 'TurnCandidate')])}</g:link>
</li>
</ul>


</div>


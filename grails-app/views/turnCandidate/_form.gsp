<%@ page import="firstgrails.TurnCandidate" %>



<div class="fieldcontain ${hasErrors(bean: turnCandidateInstance, field: 'candidateID', 'error')} required form-group">
	<label for="candidateID">
		<g:message code="turnCandidate.candidateID.label" default="Candidate ID" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="candidateID" type="number" value="${turnCandidateInstance.candidateID}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: turnCandidateInstance, field: 'name', 'error')} required form-group">
	<label for="name">
		<g:message code="turnCandidate.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${turnCandidateInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: turnCandidateInstance, field: 'electionYear', 'error')} required form-group">
	<label for="electionYear">
		<g:message code="turnCandidate.electionYear.label" default="Election Year" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="electionYear" maxlength="4" required="" value="${turnCandidateInstance?.electionYear}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: turnCandidateInstance, field: 'pass', 'error')}  form-group">
	<label for="pass">
		<g:message code="turnCandidate.pass.label" default="Pass" />
		
	</label>
	<g:textField name="pass" maxlength="1" value="${turnCandidateInstance?.pass}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: turnCandidateInstance, field: 'age', 'error')} required form-group">
	<label for="age">
		<g:message code="turnCandidate.age.label" default="Age" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="age" type="number" value="${turnCandidateInstance.age}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: turnCandidateInstance, field: 'disciplines', 'error')} required form-group">
	<label for="disciplines">
		<g:message code="turnCandidate.disciplines.label" default="Disciplines" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="disciplines" required="" value="${turnCandidateInstance?.disciplines}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: turnCandidateInstance, field: 'division', 'error')} required form-group">
	<label for="division">
		<g:message code="turnCandidate.division.label" default="Division" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="division" name="division.id" from="${firstgrails.Division.list()}" optionKey="id" required="" value="${turnCandidateInstance?.division?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: turnCandidateInstance, field: 'nominationID', 'error')} required form-group">
	<label for="nominationID">
		<g:message code="turnCandidate.nominationID.label" default="Nomination ID" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nominationID" required="" value="${turnCandidateInstance?.nominationID}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: turnCandidateInstance, field: 'organization', 'error')} required form-group">
	<label for="organization">
		<g:message code="turnCandidate.organization.label" default="Organization" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="organization" required="" value="${turnCandidateInstance?.organization}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: turnCandidateInstance, field: 'turnID', 'error')} required form-group">
	<label for="turnID">
		<g:message code="turnCandidate.turnID.label" default="Turn ID" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="turnID" type="number" value="${turnCandidateInstance.turnID}" required=""/>

</div>


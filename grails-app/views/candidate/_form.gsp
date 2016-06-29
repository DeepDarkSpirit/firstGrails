<%@ page import="firstgrails.Candidate" %>



<div class="fieldcontain ${hasErrors(bean: candidateInstance, field: 'candidateID', 'error')} required form-group">
	<label for="candidateID">
		<g:message code="candidate.candidateID.label" default="Candidate ID" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="candidateID" type="number" value="${candidateInstance.candidateID}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidateInstance, field: 'name', 'error')} required form-group">
	<label for="name">
		<g:message code="candidate.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${candidateInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidateInstance, field: 'electionYear', 'error')}  form-group">
	<label for="electionYear">
		<g:message code="candidate.electionYear.label" default="Election Year" />
		
	</label>
	<g:textField name="electionYear" maxlength="4" value="${candidateInstance?.electionYear}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidateInstance, field: 'division', 'error')}  form-group">
	<label for="division">
		<g:message code="candidate.division.label" default="Division" />
		
	</label>
	<g:textField name="division" value="${candidateInstance?.division}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidateInstance, field: 'idType', 'error')}  form-group">
	<label for="idType">
		<g:message code="candidate.idType.label" default="Id Type" />
		
	</label>
	<g:textField name="idType" value="${candidateInstance?.idType}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidateInstance, field: 'idnum', 'error')}  form-group">
	<label for="idnum">
		<g:message code="candidate.idnum.label" default="Idnum" />
		
	</label>
	<g:textField name="idnum" value="${candidateInstance?.idnum}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidateInstance, field: 'ethnicity', 'error')}  form-group">
	<label for="ethnicity">
		<g:message code="candidate.ethnicity.label" default="Ethnicity" />
		
	</label>
	<g:textField name="ethnicity" value="${candidateInstance?.ethnicity}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidateInstance, field: 'state', 'error')}  form-group">
	<label for="state">
		<g:message code="candidate.state.label" default="State" />
		
	</label>
	<g:textField name="state" value="${candidateInstance?.state}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidateInstance, field: 'degree', 'error')}  form-group">
	<label for="degree">
		<g:message code="candidate.degree.label" default="Degree" />
		
	</label>
	<g:textField name="degree" value="${candidateInstance?.degree}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidateInstance, field: 'groupNum', 'error')}  form-group">
	<label for="groupNum">
		<g:message code="candidate.groupNum.label" default="Group Num" />
		
	</label>
	<g:textField name="groupNum" value="${candidateInstance?.groupNum}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidateInstance, field: 'age', 'error')} required form-group">
	<label for="age">
		<g:message code="candidate.age.label" default="Age" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="age" type="number" value="${candidateInstance.age}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidateInstance, field: 'disciplines', 'error')} required form-group">
	<label for="disciplines">
		<g:message code="candidate.disciplines.label" default="Disciplines" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="disciplines" required="" value="${candidateInstance?.disciplines}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidateInstance, field: 'nation', 'error')} required form-group">
	<label for="nation">
		<g:message code="candidate.nation.label" default="Nation" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nation" required="" value="${candidateInstance?.nation}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidateInstance, field: 'nominationID', 'error')} required form-group">
	<label for="nominationID">
		<g:message code="candidate.nominationID.label" default="Nomination ID" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nominationID" required="" value="${candidateInstance?.nominationID}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidateInstance, field: 'organization', 'error')} required form-group">
	<label for="organization">
		<g:message code="candidate.organization.label" default="Organization" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="organization" required="" value="${candidateInstance?.organization}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidateInstance, field: 'turnID', 'error')} required form-group">
	<label for="turnID">
		<g:message code="candidate.turnID.label" default="Turn ID" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="turnID" type="number" value="${candidateInstance.turnID}" required=""/>

</div>


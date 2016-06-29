<%@ page import="firstgrails.Academician" %>



<div class="fieldcontain ${hasErrors(bean: academicianInstance, field: 'candidateID', 'error')} required form-group">
	<label for="candidateID">
		<g:message code="academician.candidateID.label" default="Candidate ID" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="candidateID" type="number" value="${academicianInstance.candidateID}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: academicianInstance, field: 'name', 'error')} required form-group">
	<label for="name">
		<g:message code="academician.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${academicianInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: academicianInstance, field: 'electionYear', 'error')}  form-group">
	<label for="electionYear">
		<g:message code="academician.electionYear.label" default="Election Year" />
		
	</label>
	<g:textField name="electionYear" maxlength="4" value="${academicianInstance?.electionYear}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: academicianInstance, field: 'division', 'error')}  form-group">
	<label for="division">
		<g:message code="academician.division.label" default="Division" />
		
	</label>
	<g:textField name="division" value="${academicianInstance?.division}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: academicianInstance, field: 'idType', 'error')}  form-group">
	<label for="idType">
		<g:message code="academician.idType.label" default="Id Type" />
		
	</label>
	<g:textField name="idType" value="${academicianInstance?.idType}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: academicianInstance, field: 'idnum', 'error')}  form-group">
	<label for="idnum">
		<g:message code="academician.idnum.label" default="Idnum" />
		
	</label>
	<g:textField name="idnum" value="${academicianInstance?.idnum}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: academicianInstance, field: 'ethnicity', 'error')}  form-group">
	<label for="ethnicity">
		<g:message code="academician.ethnicity.label" default="Ethnicity" />
		
	</label>
	<g:textField name="ethnicity" value="${academicianInstance?.ethnicity}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: academicianInstance, field: 'state', 'error')}  form-group">
	<label for="state">
		<g:message code="academician.state.label" default="State" />
		
	</label>
	<g:textField name="state" value="${academicianInstance?.state}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: academicianInstance, field: 'degree', 'error')}  form-group">
	<label for="degree">
		<g:message code="academician.degree.label" default="Degree" />
		
	</label>
	<g:textField name="degree" value="${academicianInstance?.degree}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: academicianInstance, field: 'death', 'error')}  form-group">
	<label for="death">
		<g:message code="academician.death.label" default="Death" />
		
	</label>
	<g:textField name="death" value="${academicianInstance?.death}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: academicianInstance, field: 'deathDay', 'error')}  form-group">
	<label for="deathDay">
		<g:message code="academician.deathDay.label" default="Death Day" />
		
	</label>
	<g:textField name="deathDay" value="${academicianInstance?.deathDay}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: academicianInstance, field: 'recall', 'error')}  form-group">
	<label for="recall">
		<g:message code="academician.recall.label" default="Recall" />
		
	</label>
	<g:textField name="recall" value="${academicianInstance?.recall}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: academicianInstance, field: 'age', 'error')} required form-group">
	<label for="age">
		<g:message code="academician.age.label" default="Age" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="age" type="number" value="${academicianInstance.age}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: academicianInstance, field: 'disciplines', 'error')} required form-group">
	<label for="disciplines">
		<g:message code="academician.disciplines.label" default="Disciplines" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="disciplines" required="" value="${academicianInstance?.disciplines}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: academicianInstance, field: 'nation', 'error')} required form-group">
	<label for="nation">
		<g:message code="academician.nation.label" default="Nation" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nation" required="" value="${academicianInstance?.nation}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: academicianInstance, field: 'nominationID', 'error')} required form-group">
	<label for="nominationID">
		<g:message code="academician.nominationID.label" default="Nomination ID" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nominationID" required="" value="${academicianInstance?.nominationID}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: academicianInstance, field: 'organization', 'error')} required form-group">
	<label for="organization">
		<g:message code="academician.organization.label" default="Organization" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="organization" required="" value="${academicianInstance?.organization}"/>

</div>


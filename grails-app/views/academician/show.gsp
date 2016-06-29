
<%@ page import="firstgrails.Academician" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'academician.label', default: 'Academician')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>

		<div id="show-academician" class="content scaffold-show box box-primary" role="main">
			<g:link class="list" action="index">
				<button type="button" class="btn btn-primary"><g:message code="default.list.label" args="[entityName]" /></button>
			</g:link>
			<g:link class="create" action="create">
				<button type="button" class="btn btn-primary"><g:message code="default.new.label" args="[entityName]" /></button>
			</g:link>

			<div class="box-header with-border">
				<h1 style="margin:0px"><g:message code="default.show.label" args="[entityName]" /></h1>
			</div>

			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list academician">
			
				<g:if test="${academicianInstance?.candidateID}">
				<li class="fieldcontain">
					<span id="candidateID-label" class="property-label"><g:message code="academician.candidateID.label" default="Candidate ID" />:</span>
					
						<span class="property-value" aria-labelledby="candidateID-label"><g:fieldValue bean="${academicianInstance}" field="candidateID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${academicianInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="academician.name.label" default="Name" />:</span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${academicianInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${academicianInstance?.electionYear}">
				<li class="fieldcontain">
					<span id="electionYear-label" class="property-label"><g:message code="academician.electionYear.label" default="Election Year" />:</span>
					
						<span class="property-value" aria-labelledby="electionYear-label"><g:fieldValue bean="${academicianInstance}" field="electionYear"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${academicianInstance?.division}">
				<li class="fieldcontain">
					<span id="division-label" class="property-label"><g:message code="academician.division.label" default="Division" />:</span>
					
						<span class="property-value" aria-labelledby="division-label"><g:fieldValue bean="${academicianInstance}" field="division"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${academicianInstance?.idType}">
				<li class="fieldcontain">
					<span id="idType-label" class="property-label"><g:message code="academician.idType.label" default="Id Type" />:</span>
					
						<span class="property-value" aria-labelledby="idType-label"><g:fieldValue bean="${academicianInstance}" field="idType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${academicianInstance?.idnum}">
				<li class="fieldcontain">
					<span id="idnum-label" class="property-label"><g:message code="academician.idnum.label" default="Idnum" />:</span>
					
						<span class="property-value" aria-labelledby="idnum-label"><g:fieldValue bean="${academicianInstance}" field="idnum"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${academicianInstance?.ethnicity}">
				<li class="fieldcontain">
					<span id="ethnicity-label" class="property-label"><g:message code="academician.ethnicity.label" default="Ethnicity" />:</span>
					
						<span class="property-value" aria-labelledby="ethnicity-label"><g:fieldValue bean="${academicianInstance}" field="ethnicity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${academicianInstance?.state}">
				<li class="fieldcontain">
					<span id="state-label" class="property-label"><g:message code="academician.state.label" default="State" />:</span>
					
						<span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${academicianInstance}" field="state"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${academicianInstance?.degree}">
				<li class="fieldcontain">
					<span id="degree-label" class="property-label"><g:message code="academician.degree.label" default="Degree" />:</span>
					
						<span class="property-value" aria-labelledby="degree-label"><g:fieldValue bean="${academicianInstance}" field="degree"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${academicianInstance?.death}">
				<li class="fieldcontain">
					<span id="death-label" class="property-label"><g:message code="academician.death.label" default="Death" />:</span>
					
						<span class="property-value" aria-labelledby="death-label"><g:fieldValue bean="${academicianInstance}" field="death"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${academicianInstance?.deathDay}">
				<li class="fieldcontain">
					<span id="deathDay-label" class="property-label"><g:message code="academician.deathDay.label" default="Death Day" />:</span>
					
						<span class="property-value" aria-labelledby="deathDay-label"><g:fieldValue bean="${academicianInstance}" field="deathDay"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${academicianInstance?.recall}">
				<li class="fieldcontain">
					<span id="recall-label" class="property-label"><g:message code="academician.recall.label" default="Recall" />:</span>
					
						<span class="property-value" aria-labelledby="recall-label"><g:fieldValue bean="${academicianInstance}" field="recall"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${academicianInstance?.age}">
				<li class="fieldcontain">
					<span id="age-label" class="property-label"><g:message code="academician.age.label" default="Age" />:</span>
					
						<span class="property-value" aria-labelledby="age-label"><g:fieldValue bean="${academicianInstance}" field="age"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${academicianInstance?.disciplines}">
				<li class="fieldcontain">
					<span id="disciplines-label" class="property-label"><g:message code="academician.disciplines.label" default="Disciplines" />:</span>
					
						<span class="property-value" aria-labelledby="disciplines-label"><g:fieldValue bean="${academicianInstance}" field="disciplines"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${academicianInstance?.nation}">
				<li class="fieldcontain">
					<span id="nation-label" class="property-label"><g:message code="academician.nation.label" default="Nation" />:</span>
					
						<span class="property-value" aria-labelledby="nation-label"><g:fieldValue bean="${academicianInstance}" field="nation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${academicianInstance?.nominationID}">
				<li class="fieldcontain">
					<span id="nominationID-label" class="property-label"><g:message code="academician.nominationID.label" default="Nomination ID" />:</span>
					
						<span class="property-value" aria-labelledby="nominationID-label"><g:fieldValue bean="${academicianInstance}" field="nominationID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${academicianInstance?.organization}">
				<li class="fieldcontain">
					<span id="organization-label" class="property-label"><g:message code="academician.organization.label" default="Organization" />:</span>
					
						<span class="property-value" aria-labelledby="organization-label"><g:fieldValue bean="${academicianInstance}" field="organization"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:academicianInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<div class="box-footer">
					<g:link class="edit btn btn-primary" action="edit" resource="${academicianInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-primary" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					</div>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

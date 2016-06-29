
<%@ page import="firstgrails.TurnCandidate" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'turnCandidate.label', default: 'TurnCandidate')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>

		<div id="show-turnCandidate" class="content scaffold-show box box-primary" role="main">
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
			<ol class="property-list turnCandidate">
			
				<g:if test="${turnCandidateInstance?.candidateID}">
				<li class="fieldcontain">
					<span id="candidateID-label" class="property-label"><g:message code="turnCandidate.candidateID.label" default="Candidate ID" />:</span>
					
						<span class="property-value" aria-labelledby="candidateID-label"><g:fieldValue bean="${turnCandidateInstance}" field="candidateID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${turnCandidateInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="turnCandidate.name.label" default="Name" />:</span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${turnCandidateInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${turnCandidateInstance?.electionYear}">
				<li class="fieldcontain">
					<span id="electionYear-label" class="property-label"><g:message code="turnCandidate.electionYear.label" default="Election Year" />:</span>
					
						<span class="property-value" aria-labelledby="electionYear-label"><g:fieldValue bean="${turnCandidateInstance}" field="electionYear"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${turnCandidateInstance?.pass}">
				<li class="fieldcontain">
					<span id="pass-label" class="property-label"><g:message code="turnCandidate.pass.label" default="Pass" />:</span>
					
						<span class="property-value" aria-labelledby="pass-label"><g:fieldValue bean="${turnCandidateInstance}" field="pass"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${turnCandidateInstance?.age}">
				<li class="fieldcontain">
					<span id="age-label" class="property-label"><g:message code="turnCandidate.age.label" default="Age" />:</span>
					
						<span class="property-value" aria-labelledby="age-label"><g:fieldValue bean="${turnCandidateInstance}" field="age"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${turnCandidateInstance?.disciplines}">
				<li class="fieldcontain">
					<span id="disciplines-label" class="property-label"><g:message code="turnCandidate.disciplines.label" default="Disciplines" />:</span>
					
						<span class="property-value" aria-labelledby="disciplines-label"><g:fieldValue bean="${turnCandidateInstance}" field="disciplines"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${turnCandidateInstance?.division}">
				<li class="fieldcontain">
					<span id="division-label" class="property-label"><g:message code="turnCandidate.division.label" default="Division" />:</span>
					
						<span class="property-value" aria-labelledby="division-label"><g:link controller="division" action="show" id="${turnCandidateInstance?.division?.id}">${turnCandidateInstance?.division?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${turnCandidateInstance?.nominationID}">
				<li class="fieldcontain">
					<span id="nominationID-label" class="property-label"><g:message code="turnCandidate.nominationID.label" default="Nomination ID" />:</span>
					
						<span class="property-value" aria-labelledby="nominationID-label"><g:fieldValue bean="${turnCandidateInstance}" field="nominationID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${turnCandidateInstance?.organization}">
				<li class="fieldcontain">
					<span id="organization-label" class="property-label"><g:message code="turnCandidate.organization.label" default="Organization" />:</span>
					
						<span class="property-value" aria-labelledby="organization-label"><g:fieldValue bean="${turnCandidateInstance}" field="organization"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${turnCandidateInstance?.turnID}">
				<li class="fieldcontain">
					<span id="turnID-label" class="property-label"><g:message code="turnCandidate.turnID.label" default="Turn ID" />:</span>
					
						<span class="property-value" aria-labelledby="turnID-label"><g:fieldValue bean="${turnCandidateInstance}" field="turnID"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:turnCandidateInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<div class="box-footer">
					<g:link class="edit btn btn-primary" action="edit" resource="${turnCandidateInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-primary" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					</div>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>


<%@ page import="firstgrails.Candidate" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'candidate.label', default: 'Candidate')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>

		<div id="show-candidate" class="content scaffold-show box box-primary" role="main">
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
			<ol class="property-list candidate">
			
				<g:if test="${candidateInstance?.candidateID}">
				<li class="fieldcontain">
					<span id="candidateID-label" class="property-label"><g:message code="candidate.candidateID.label" default="Candidate ID" />:</span>
					
						<span class="property-value" aria-labelledby="candidateID-label"><g:fieldValue bean="${candidateInstance}" field="candidateID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidateInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="candidate.name.label" default="Name" />:</span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${candidateInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidateInstance?.electionYear}">
				<li class="fieldcontain">
					<span id="electionYear-label" class="property-label"><g:message code="candidate.electionYear.label" default="Election Year" />:</span>
					
						<span class="property-value" aria-labelledby="electionYear-label"><g:fieldValue bean="${candidateInstance}" field="electionYear"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidateInstance?.division}">
				<li class="fieldcontain">
					<span id="division-label" class="property-label"><g:message code="candidate.division.label" default="Division" />:</span>
					
						<span class="property-value" aria-labelledby="division-label"><g:fieldValue bean="${candidateInstance}" field="division"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidateInstance?.idType}">
				<li class="fieldcontain">
					<span id="idType-label" class="property-label"><g:message code="candidate.idType.label" default="Id Type" />:</span>
					
						<span class="property-value" aria-labelledby="idType-label"><g:fieldValue bean="${candidateInstance}" field="idType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidateInstance?.idnum}">
				<li class="fieldcontain">
					<span id="idnum-label" class="property-label"><g:message code="candidate.idnum.label" default="Idnum" />:</span>
					
						<span class="property-value" aria-labelledby="idnum-label"><g:fieldValue bean="${candidateInstance}" field="idnum"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidateInstance?.ethnicity}">
				<li class="fieldcontain">
					<span id="ethnicity-label" class="property-label"><g:message code="candidate.ethnicity.label" default="Ethnicity" />:</span>
					
						<span class="property-value" aria-labelledby="ethnicity-label"><g:fieldValue bean="${candidateInstance}" field="ethnicity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidateInstance?.state}">
				<li class="fieldcontain">
					<span id="state-label" class="property-label"><g:message code="candidate.state.label" default="State" />:</span>
					
						<span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${candidateInstance}" field="state"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidateInstance?.degree}">
				<li class="fieldcontain">
					<span id="degree-label" class="property-label"><g:message code="candidate.degree.label" default="Degree" />:</span>
					
						<span class="property-value" aria-labelledby="degree-label"><g:fieldValue bean="${candidateInstance}" field="degree"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidateInstance?.groupNum}">
				<li class="fieldcontain">
					<span id="groupNum-label" class="property-label"><g:message code="candidate.groupNum.label" default="Group Num" />:</span>
					
						<span class="property-value" aria-labelledby="groupNum-label"><g:fieldValue bean="${candidateInstance}" field="groupNum"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidateInstance?.age}">
				<li class="fieldcontain">
					<span id="age-label" class="property-label"><g:message code="candidate.age.label" default="Age" />:</span>
					
						<span class="property-value" aria-labelledby="age-label"><g:fieldValue bean="${candidateInstance}" field="age"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidateInstance?.disciplines}">
				<li class="fieldcontain">
					<span id="disciplines-label" class="property-label"><g:message code="candidate.disciplines.label" default="Disciplines" />:</span>
					
						<span class="property-value" aria-labelledby="disciplines-label"><g:fieldValue bean="${candidateInstance}" field="disciplines"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidateInstance?.nation}">
				<li class="fieldcontain">
					<span id="nation-label" class="property-label"><g:message code="candidate.nation.label" default="Nation" />:</span>
					
						<span class="property-value" aria-labelledby="nation-label"><g:fieldValue bean="${candidateInstance}" field="nation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidateInstance?.nominationID}">
				<li class="fieldcontain">
					<span id="nominationID-label" class="property-label"><g:message code="candidate.nominationID.label" default="Nomination ID" />:</span>
					
						<span class="property-value" aria-labelledby="nominationID-label"><g:fieldValue bean="${candidateInstance}" field="nominationID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${candidateInstance?.organization}">
				<li class="fieldcontain">
					<span id="organization-label" class="property-label"><g:message code="candidate.organization.label" default="Organization" />:</span>
					
						<span class="property-value" aria-labelledby="organization-label"><g:fieldValue bean="${candidateInstance}" field="organization"/></span>
					
				</li>
				</g:if>

			
			</ol>
			<g:form url="[resource:candidateInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<div class="box-footer">
					<g:link class="edit btn btn-primary" action="edit" resource="${candidateInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-primary" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					</div>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

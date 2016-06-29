
<%@ page import="firstgrails.Division" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'division.label', default: 'Division')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>

		<div id="show-division" class="content scaffold-show box box-primary" role="main">
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
			<ol class="property-list division">
			
				<g:if test="${divisionInstance?.divisionID}">
				<li class="fieldcontain">
					<span id="divisionID-label" class="property-label"><g:message code="division.divisionID.label" default="Division ID" />:</span>
					
						<span class="property-value" aria-labelledby="divisionID-label"><g:fieldValue bean="${divisionInstance}" field="divisionID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${divisionInstance?.divisionName}">
				<li class="fieldcontain">
					<span id="divisionName-label" class="property-label"><g:message code="division.divisionName.label" default="Division Name" />:</span>
					
						<span class="property-value" aria-labelledby="divisionName-label"><g:fieldValue bean="${divisionInstance}" field="divisionName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${divisionInstance?.groupID}">
				<li class="fieldcontain">
					<span id="groupID-label" class="property-label"><g:message code="division.groupID.label" default="Group ID" />:</span>
					
						<span class="property-value" aria-labelledby="groupID-label"><g:fieldValue bean="${divisionInstance}" field="groupID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${divisionInstance?.groupName}">
				<li class="fieldcontain">
					<span id="groupName-label" class="property-label"><g:message code="division.groupName.label" default="Group Name" />:</span>
					
						<span class="property-value" aria-labelledby="groupName-label"><g:fieldValue bean="${divisionInstance}" field="groupName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${divisionInstance?.turnCandidates}">
				<li class="fieldcontain">
					<span id="turnCandidates-label" class="property-label"><g:message code="division.turnCandidates.label" default="Turn Candidates" />:</span>
					
						<g:each in="${divisionInstance.turnCandidates}" var="t">
						<span class="property-value" aria-labelledby="turnCandidates-label"><g:link controller="turnCandidate" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:divisionInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<div class="box-footer">
					<g:link class="edit btn btn-primary" action="edit" resource="${divisionInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-primary" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					</div>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

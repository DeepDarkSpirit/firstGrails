<%@ page import="firstgrails.TurnCandidate" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'turnCandidate.label', default: 'TurnCandidate')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="edit-turnCandidate" class="content scaffold-edit box box-primary" role="main">
			<g:link class="list" action="index">
				<button type="button" class="btn btn-primary"><g:message code="default.list.label" args="[entityName]" /></button>
			</g:link>
			<g:link class="create" action="create">
				<button type="button" class="btn btn-primary"><g:message code="default.new.label" args="[entityName]" /></button>
			</g:link>
			<div class="box-header with-border">
				<h1 style="margin:0px"><g:message code="default.edit.label" args="[entityName]" /></h1>
			</div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${turnCandidateInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${turnCandidateInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:turnCandidateInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${turnCandidateInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save btn btn-primary" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

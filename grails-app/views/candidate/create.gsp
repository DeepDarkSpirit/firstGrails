<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'candidate.label', default: 'Candidate')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="create-candidate" class="content scaffold-create box box-primary" role="main">
			<g:link class="list" action="index">
				<button type="button" class="btn btn-primary"><g:message code="default.list.label" args="[entityName]" /></button>
			</g:link>
			<div class="box-header with-border">
				<h1 style="margin:0px"><g:message code="default.create.label" args="[entityName]" /></h1>
			</div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${candidateInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${candidateInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:candidateInstance, action:'save']" >
				<fieldset class="form">
					<div class="box-body">
					<g:render template="form"/>
					</div>
				</fieldset>
				<fieldset class="buttons">
					<div class="box-footer">
					<g:submitButton name="create" class="save btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
					</div>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

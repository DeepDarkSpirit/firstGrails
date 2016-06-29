<%@ page import="firstgrails.BallotContent" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'ballotContent.label', default: 'BallotContent')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="edit-ballotContent" class="content scaffold-edit box box-primary" role="main">
			<g:link class="list" action="index">
				<button type="button" class="btn btn-primary">选票列表</button>
			</g:link>
			<g:link class="create" action="create">
				<button type="button" class="btn btn-primary">设置新选票</button>
			</g:link>
			<div class="box-header with-border">
				<h1 style="margin:0px">编辑选票设置</h1>
			</div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${ballotContentInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${ballotContentInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:ballotContentInstance, action:'update']" onsubmit="return validate_form(this)" method="PUT" >
				<g:hiddenField name="version" value="${ballotContentInstance?.version}" />
				<fieldset class="form">
					<div class="box-body">
					<g:render template="form"/>
					</div>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save btn btn-primary" action="update" value="更新" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

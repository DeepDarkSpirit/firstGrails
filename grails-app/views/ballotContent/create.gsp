<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'ballotContent.label', default: 'BallotContent')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="create-ballotContent" class="content scaffold-create box box-primary" role="main">
			<g:link class="list" action="index">
				<button type="button" class="btn btn-primary">选票列表</button>
			</g:link>
			<div class="box-header with-border">
				<h1 style="margin:0px">选票设置</h1>
				（本页所有选项都为必填项）
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
			<form action="/firstGrails/ballotContent/save" onsubmit="return validate_form(this)" method="post">
				<fieldset class="form">
					<div class="box-body">
					<g:render template="form"/>
					</div>
				</fieldset>
				<fieldset class="buttons">
					<div class="box-footer">
					<g:submitButton name="create" class="save btn btn-primary" value="创建" />
					</div>
				</fieldset>
				</form>

		</div>
	</body>
</html>

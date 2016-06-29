
<%@ page import="firstgrails.Division" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'division.label', default: 'Division')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="list-division" class="content scaffold-list" role="main">
			<g:link class="create" action="create">
				<button type="button" class="btn btn-primary"><g:message code="default.new.label" args="[entityName]" /></button>
			</g:link>
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<div class="box">
				<div class="box-body">
					<table class="table table-bordered">
						<thead>
								<tr>
								
									<g:sortableColumn property="divisionID" title="${message(code: 'division.divisionID.label', default: 'Division ID')}" />
								
									<g:sortableColumn property="divisionName" title="${message(code: 'division.divisionName.label', default: 'Division Name')}" />
								
									<g:sortableColumn property="groupID" title="${message(code: 'division.groupID.label', default: 'Group ID')}" />
								
									<g:sortableColumn property="groupName" title="${message(code: 'division.groupName.label', default: 'Group Name')}" />
								
								</tr>
							</thead>
							<tbody>
							<g:each in="${divisionInstanceList}" status="i" var="divisionInstance">
								<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
								
									<td><g:link action="show" id="${divisionInstance.id}">${fieldValue(bean: divisionInstance, field: "divisionID")}</g:link></td>
								
									<td>${fieldValue(bean: divisionInstance, field: "divisionName")}</td>
								
									<td>${fieldValue(bean: divisionInstance, field: "groupID")}</td>
								
									<td>${fieldValue(bean: divisionInstance, field: "groupName")}</td>
								
								</tr>
							</g:each>
							</tbody>
					</table>
				</div>
			</div>
			<div class="pagination">
				<g:paginate total="${divisionInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>


<%@ page import="firstgrails.TurnCandidate" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'turnCandidate.label', default: 'TurnCandidate')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="list-turnCandidate" class="content scaffold-list" role="main">
			<g:link action="importCandidate">
				<button type="button" class="btn btn-primary">导入候选人</button>
			</g:link>
			<h1>轮候选人</h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<div class="box">
				<div class="box-body">
					<table class="table table-bordered">
						<thead>
								<tr>
								
									<g:sortableColumn property="candidateID" title="ID" />

									<g:sortableColumn property="electionYear" title="选举年" />

									<g:sortableColumn property="turnID" title="轮" />

									<g:sortableColumn property="name" title="姓名" />
								
									<g:sortableColumn property="age" title="年龄" />
								
									<g:sortableColumn property="disciplines" title="专业" />

									<g:sortableColumn property="pass" title="通过" />
								
								</tr>
							</thead>
							<tbody>
							<g:each in="${turnCandidateInstanceList}" status="i" var="turnCandidateInstance">
								<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
								
									<td><g:link action="show" id="${turnCandidateInstance.id}">${fieldValue(bean: turnCandidateInstance, field: "candidateID")}</g:link></td>

									<td>${fieldValue(bean: turnCandidateInstance, field: "electionYear")}</td>

									<td>${fieldValue(bean: turnCandidateInstance, field: "turnID")}</td>

									<td>${fieldValue(bean: turnCandidateInstance, field: "name")}</td>
								
									<td>${fieldValue(bean: turnCandidateInstance, field: "age")}</td>
								
									<td>${fieldValue(bean: turnCandidateInstance, field: "disciplines")}</td>

									<td>${fieldValue(bean: turnCandidateInstance, field: "pass")}</td>
								
								</tr>
							</g:each>
							</tbody>
					</table>
				</div>
			</div>
			<div class="pagination">
				<g:paginate total="${turnCandidateInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>

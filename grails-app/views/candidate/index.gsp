
<%@ page import="firstgrails.Candidate" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'candidate.label', default: 'Candidate')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="list-candidate" class="content scaffold-list" role="main">
			<h1>候选人列表</h1>
			<div class="box">
				<div class="box-body">
					<table class="table table-bordered">
						<thead>
								<tr>
									<g:sortableColumn property="name" title="姓名" />
									<g:sortableColumn property="age" title="年龄" />

									<g:sortableColumn property="nominationID" title="提名书号" />
								
									<g:sortableColumn property="divisionName" title="学部" />
									<g:sortableColumn property="disciplines" title="学科专业" />
									<g:sortableColumn property="organization" title="工作单位" />
								
									<g:sortableColumn property="idType" title="证件类型" />

									<g:sortableColumn property="idnum" title="证件号码" />
									<g:sortableColumn property="ethnicity" title="民族" />
									<g:sortableColumn property="nation" title="国籍" />
									<g:sortableColumn property="state" title="省市" />
									<g:sortableColumn property="degree" title="学历" />
								
								</tr>
							</thead>
							<tbody>
							<g:each in="${candidateInstanceList}" status="i" var="candidateInstance">
								<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
									<td>${fieldValue(bean: candidateInstance, field: "name")}</td>

									<td>${fieldValue(bean: candidateInstance, field: "age")}</td>

									<td>${fieldValue(bean: candidateInstance, field: "nominationID")}</td>
								
									<td>${fieldValue(bean: candidateInstance, field: "divisionName")}</td>

									<td>${fieldValue(bean: candidateInstance, field: "disciplines")}</td>

									<td>${fieldValue(bean: candidateInstance, field: "organization")}</td>
								
									<td>${fieldValue(bean: candidateInstance, field: "idType")}</td>

									<td>${fieldValue(bean: candidateInstance, field: "idnum")}</td>

									<td>${fieldValue(bean: candidateInstance, field: "ethnicity")}</td>

									<td>${fieldValue(bean: candidateInstance, field: "nation")}</td>

									<td>${fieldValue(bean: candidateInstance, field: "state")}</td>

									<td>${fieldValue(bean: candidateInstance, field: "degree")}</td>
								
								</tr>
							</g:each>
							</tbody>
					</table>
				</div>
			</div>
			<div class="pagination">
				<g:paginate total="${candidateInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>

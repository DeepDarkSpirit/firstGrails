
<%@ page import="firstgrails.Academician" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'academician.label', default: 'Academician')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="list-academician" class="content scaffold-list" role="main">
			<h1>院士信息</h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<div class="box">
				<div class="box-body">
					<table class="table table-bordered">
						<thead>
								<tr>
									<g:sortableColumn property="name" title="姓名" />
									<g:sortableColumn property="age" title="年龄" />

									<g:sortableColumn property="nominationID" title="提名书号" />

									<g:sortableColumn property="disciplines" title="学科专业" />
									<g:sortableColumn property="organization" title="工作单位" />

									<g:sortableColumn property="idType" title="证件类型" />

									<g:sortableColumn property="idnum" title="证件号码" />
									<g:sortableColumn property="ethnicity" title="民族" />
									<g:sortableColumn property="nation" title="国籍" />
									<g:sortableColumn property="state" title="省市" />
									<g:sortableColumn property="degree" title="学历" />
									<g:sortableColumn property="death" title="是否去世" />
									<g:sortableColumn property="recall" title="是否罢免" />
								
								</tr>
							</thead>
							<tbody>
							<g:each in="${academicianInstanceList}" status="i" var="academicianInstance">
								<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

									<td>${fieldValue(bean: academicianInstance, field: "name")}</td>

									<td>${fieldValue(bean: academicianInstance, field: "age")}</td>

									<td>${fieldValue(bean: academicianInstance, field: "nominationID")}</td>

									<td>${fieldValue(bean: academicianInstance, field: "disciplines")}</td>

									<td>${fieldValue(bean: academicianInstance, field: "organization")}</td>

									<td>${fieldValue(bean: academicianInstance, field: "idType")}</td>

									<td>${fieldValue(bean: academicianInstance, field: "idnum")}</td>

									<td>${fieldValue(bean: academicianInstance, field: "ethnicity")}</td>

									<td>${fieldValue(bean: academicianInstance, field: "nation")}</td>

									<td>${fieldValue(bean: academicianInstance, field: "state")}</td>

									<td>${fieldValue(bean: academicianInstance, field: "degree")}</td>

									<td>${fieldValue(bean: academicianInstance, field: "death")}</td>

									<td>${fieldValue(bean: academicianInstance, field: "recall")}</td>
								
								</tr>
							</g:each>
							</tbody>
					</table>
				</div>
			</div>
			<div class="pagination">
				<g:paginate total="${academicianInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>

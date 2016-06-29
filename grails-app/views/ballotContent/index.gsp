
<%@ page import="firstgrails.BallotContent" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'ballotContent.label', default: 'BallotContent')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="list-ballotContent" class="content scaffold-list" role="main">
			<g:link class="create" action="create">
				<button type="button" class="btn btn-primary">新建选票</button>
			</g:link>
			<h1>选票列表</h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<div class="box">
				<div class="box-body">
					<table class="table table-bordered">
						<thead>
								<tr>
								
									<g:sortableColumn property="id" title="${message(code: 'ballotContent.id.label', default: 'id')}" />

									<g:sortableColumn property="divisionID" title="部门代码" />

									<g:sortableColumn property="groupID" title="分组方式" />

									<g:sortableColumn property="type" title="选票类型" />
								
									<g:sortableColumn property="roundID" title="轮数" />

									<g:sortableColumn property="times" title="次数" />

									<g:sortableColumn property="status" title="状态" />

									<g:sortableColumn property="way" title="计票方式" />
									<th >操作</th>


								</tr>
							</thead>
							<tbody>
							<g:each in="${ballotContentInstanceList}" status="i" var="ballotContentInstance">
								<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
								
									<td>${fieldValue(bean: ballotContentInstance, field: "id")}</td>

									<td>${fieldValue(bean: ballotContentInstance, field: "divisionID")}</td>

									<td>${fieldValue(bean: ballotContentInstance, field: "groupID")}</td>
								
									<td>${fieldValue(bean: ballotContentInstance, field: "type")}</td>
								
									<td>${fieldValue(bean: ballotContentInstance, field: "roundID")}</td>

									<td>${fieldValue(bean: ballotContentInstance, field: "times")}</td>

									<td>${fieldValue(bean: ballotContentInstance, field: "status")}</td>

									<td>${fieldValue(bean: ballotContentInstance, field: "way")}</td>

									<td>
										<g:link action="show" id="${ballotContentInstance.id}">查看</g:link>
										<g:if test="${ballotContentInstance.status != "准备"}">
											<g:link action="result" id="${ballotContentInstance.id}">结果</g:link>
										</g:if>

										<g:if test="${ballotContentInstance.status == "准备"}">
											<g:link action="begin" id="${ballotContentInstance.id}">开始选举</g:link>
										</g:if>
									</td>
								
								</tr>
							</g:each>
							</tbody>
					</table>
				</div>
			</div>
			<div class="pagination">
				<g:paginate total="${ballotContentInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>

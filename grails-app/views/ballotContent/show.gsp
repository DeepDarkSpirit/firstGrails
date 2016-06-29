
<%@ page import="firstgrails.BallotContent" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'ballotContent.label', default: 'BallotContent')}" />
		<title><g:message code="default.show.la	bel" args="[entityName]" /></title>
	</head>
	<body>

		<div id="show-ballotContent" class="content scaffold-show box box-primary" role="main">
			<g:link class="list" action="index">
				<button type="button" class="btn btn-primary">选票列表</button>
			</g:link>
			<g:link class="create" action="create">
				<button type="button" class="btn btn-primary">新建选票</button>
			</g:link>
			<br>
			<br>

			<div class="box">
					<h1 style="TEXT-ALIGN: center;">
						${ballotContentInstance.electionYear}年
						<% def counter = 1 %>
						<g:each in="${divisionName.split(" ")}"  status="i" var="num">
							<% counter++ %>
						</g:each>
						<% if(counter) %>
						<g:if test="${counter == 2}">
							${divisionName}
						</g:if>
						<g:if test="${counter > 2}">
							多部门
						</g:if>
						第${ballotContentInstance.roundID}轮
						${ballotContentInstance.type}
						第${ballotContentInstance.times}次</h1>
				<div class="box-body">
					<table class="table table-bordered" style="text-align:center;" >
						<tr>
							<g:if test="${ballotContentInstance.way == "表决"}">
								<th >提名书号</th>
								<th >姓名</th>
								<th >年龄</th>
								<th >学科专业</th>
								<th >工作单位</th>
								<th >同意</th>
								<th >不同意</th>
								<g:if test="${ballotContentInstance.columns == 1}">
									<th >弃权</th>
								</g:if>
                                <th style="border-style:none;">▇</th>
							</g:if>
							<g:if test="${ballotContentInstance.way == "计分"}">
								<th rowspan="2">提名书号</th>
								<th rowspan="2">姓名</th>
								<th rowspan="2">年龄</th>
								<th rowspan="2">学科专业</th>
								<th rowspan="2">工作单位</th>
								<g:if test="${ballotContentInstance.columns == 3}">
									<th colspan="3">圈选栏</th>
                                    <th style="border-style:none;">▇</th>
								</g:if>
								<g:if test="${ballotContentInstance.columns == 4}">
									<th colspan="4" align="center">圈选栏</th>
                                    <th style="border-style:none;">▇</th>
								</g:if>
								<g:if test="${ballotContentInstance.columns == 5}">
									<th colspan="5" align="center">圈选栏</th>
                                    <th style="border-style:none;">▇</th>
								</g:if>
							</g:if>
						</tr>
						<g:if test="${ballotContentInstance.columns == 3}">
							<tr>
							<td >A</td>
							<td >B</td>
							<td >C</td>
                            <td style="border-style:none;">▇</td>
							</tr>
						</g:if>
						<g:if test="${ballotContentInstance.columns == 4}">
							<tr>
							<td >A</td>
							<td >B</td>
							<td >C</td>
							<td >D</td>
                            <td style="border-style:none;">▇</td>
							</tr>
						</g:if>
						<g:if test="${ballotContentInstance.columns == 5}">
							<tr>
							<td >A</td>
							<td >B</td>
							<td >C</td>
							<td >D</td>
							<td >E</td>
                            <td style="border-style:none;">▇</td>
							</tr>
						</g:if>
						<g:each in="${turnCandidatelist}" var="divisionlistInstance">
							<g:each in="${divisionlistInstance}"var="num">
								<tr>
								<td>${num?.nominationID}</td>
								<td>${num?.name}</td>
								<td>${num?.age}</td>
								<td>${num?.disciplines}</td>
								<td>${num?.organization}</td>
									<td></td>
									<td></td>
									<g:if test="${ballotContentInstance.columns == 1}">
										<td ></td>
									</g:if>
									<g:if test="${ballotContentInstance.columns == 3}">
										<td ></td>
									</g:if>
									<g:if test="${ballotContentInstance.columns == 4}">
										<td ></td>
										<td ></td>
									</g:if>

									<g:if test="${ballotContentInstance.columns == 5}">
										<td ></td>
										<td ></td>
										<td ></td>
									</g:if>
                                    <td style="border-style:none;">▇</td>
								</tr>
							</g:each>
						</g:each>
						<g:if test="${ballotContentInstance.columns == 1}">
							<tr>
								<td colspan="5" style="border-style:none;"></td>
								<td style="border-style:none;">▇</td>
								<td style="border-style:none;">▇</td>
								<td style="border-style:none;">▇</td>
								<td style="border-style:none;">▇</td>
							</tr>
						</g:if>
						<g:if test="${ballotContentInstance.columns == 2}">
							<tr>
								<td colspan="5" style="border-style:none;"></td>
								<td style="border-style:none;">▇</td>
								<td style="border-style:none;">▇</td>
								<td style="border-style:none;">▇</td>
							</tr>
						</g:if>
						<g:if test="${ballotContentInstance.columns == 3}">
							<tr>
								<td colspan="5" style="border-style:none;"></td>
								<td style="border-style:none;">▇</td>
								<td style="border-style:none;">▇</td>
								<td style="border-style:none;">▇</td>
								<td style="border-style:none;">▇</td>
							</tr>
						</g:if>
						<g:if test="${ballotContentInstance.columns == 4}">
							<tr>
								<td colspan="5" style="border-style:none;"></td>
								<td style="border-style:none;">▇</td>
								<td style="border-style:none;">▇</td>
								<td style="border-style:none;">▇</td>
								<td style="border-style:none;">▇</td>
								<td style="border-style:none;">▇</td>
							</tr>
						</g:if>
						<g:if test="${ballotContentInstance.columns == 5}">
							<tr>
								<td colspan="5" style="border-style:none;"></td>
								<td style="border-style:none;">▇</td>
								<td style="border-style:none;">▇</td>
								<td style="border-style:none;">▇</td>
								<td style="border-style:none;">▇</td>
								<td style="border-style:none;">▇</td>
								<td style="border-style:none;">▇</td>
							</tr>
						</g:if>
					</table>
				</div>
				<div style="width:100px;margin:auto"><p style="width:45px;margin:auto">第${page}页</p></div>
				<br>
				<div id="bcTarget" style="margin:auto"></div>
			</div>

			<div class="pagination" >
				<g:paginate total="${total}" id="${ballotContentInstance.id}" />
			</div>
			<div class="box-footer">
				<g:form url="[resource:ballotContentInstance, action:'delete']" method="DELETE">
					<fieldset class="buttons">
							<g:if test="${ballotContentInstance.status == "准备"}">
								<g:link class="edit btn btn-primary" action="edit" resource="${ballotContentInstance}">编辑</g:link>
							</g:if>
						<g:actionSubmit class="delete btn btn-primary" action="delete" resource="${ballotContentInstance}" value="删除" onclick="return confirm('确定删除?');" />
						<g:if test="${ballotContentInstance.status != "结束"}">
							<g:link class="save btn btn-primary" onclick="printdiv()">打印</g:link>
						</g:if>
					</fieldset>
				</g:form>
			</div>
		</div>

	<script>
	$("th,p,td").css("text-align","center");
	function printdiv()
	{
		var printData = $(".box")[1].innerHTML;//获取待打印选票内容
		var oldstr = document.body.innerHTML;//存储原始页面
		document.body.innerHTML = printData;//页面body置换为打印内容
		window.print();//打印页面
		document.body.innerHTML = oldstr;//页面内容置换为原始页面
		return false;
	}
	//	条形码
	function pad(num, n) {
		var len = num.toString().length;
		while(len < n) {
			num = "0" + num;
			len++;
		}
		return num;
	}
	var ballotid = pad(${ballotContentInstance.id}, 4);
	<g:if test="${counter == 2}">
	var ballotdivisionID = pad(${ballotContentInstance.divisionID}, 2);
	</g:if>
	<g:if test="${counter > 2}">
	var ballotdivisionID = 99;
	</g:if>
	var ballotroundID = pad(${ballotContentInstance.roundID}, 2);
	var ballottimes = pad(${ballotContentInstance.times}, 2);
	var ballotpage = pad(${page}, 2);
	$("#bcTarget").barcode(ballotid+ballotdivisionID+ballotroundID+ballottimes+ballotpage, 2,60);
	</script>
	</body>
</html>

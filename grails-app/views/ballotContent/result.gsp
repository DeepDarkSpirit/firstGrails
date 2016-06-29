
<%@ page import="firstgrails.BallotContent" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'ballotContent.label', default: 'BallotContent')}" />
		<title><g:message code="default.show.la	bel" args="[entityName]" /></title>
	</head>
	<body>
	<g:if test="${errors !=""}">
		<g:link class="list" action="index">
			<button type="button" class="btn btn-primary">选票列表</button>
		</g:link>
		<g:link class="create" action="create">
			<button type="button" class="btn btn-primary">新建选票</button>
		</g:link>
		<p>${errors}</p>
	</g:if>
	<g:else>
		<div id="show-ballotContent" class="content scaffold-show box box-primary" role="main">
			<g:link class="list" action="index">
				<button type="button" class="btn btn-primary">选票列表</button>
			</g:link>
			<g:link class="create" action="create">
				<button type="button" class="btn btn-primary">新建选票</button>
			</g:link>
			<br>
			<br>
			<div class="box" style="text-align:center">
				<h1 style="TEXT-ALIGN: center;">
					${ballotContentInstance.electionYear}年
					<% def counter = 1 %>
					<g:each in="${ballotContentInstance.divisionID.split(",")}"  status="i" var="num">
						<% counter++ %>
					</g:each>
					<% if(counter) %>
					<g:if test="${counter == 2}">
						${ballotContentInstance.divisionID}
					</g:if>
					<g:if test="${counter > 2}">
						多部门
					</g:if>
					第${ballotContentInstance.roundID}轮
					${ballotContentInstance.type}
					第${ballotContentInstance.times}次</h1>
				<div class="box-body">
					<table class="table table-bordered" style="text-align:center;">
						<tr>
							<g:if test="${ballotContentInstance.way == "表决"}">
								<th>候选人ID</th>
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
								<th>同意数量</th>
							</g:if>
							<g:if test="${ballotContentInstance.way == "计分"}">
								<th rowspan="2">候选人ID</th>
								<th rowspan="2">提名书号</th>
								<th rowspan="2">姓名</th>
								<th rowspan="2">年龄</th>
								<th rowspan="2">学科专业</th>
								<th rowspan="2">工作单位</th>
								<g:if test="${ballotContentInstance.columns == 3}">
									<th colspan="3">圈选栏</th>
									<th rowspan="2">得分</th>
								</g:if>
								<g:if test="${ballotContentInstance.columns == 4}">
									<th colspan="4" align="center">圈选栏</th>
									<th rowspan="2">得分</th>
								</g:if>
								<g:if test="${ballotContentInstance.columns == 5}">
									<th colspan="5" align="center">圈选栏</th>
									<th rowspan="2">得分</th>
								</g:if>
							</g:if>
						</tr>
						<g:if test="${ballotContentInstance.columns == 3}">
							<tr>
							<td >A</td>
							<td >B</td>
							<td >C</td>
							</tr>
						</g:if>
						<g:if test="${ballotContentInstance.columns == 4}">
							<tr>
							<td >A</td>
							<td >B</td>
							<td >C</td>
							<td >D</td>
							</tr>
						</g:if>
						<g:if test="${ballotContentInstance.columns == 5}">
							<tr>
							<td >A</td>
							<td >B</td>
							<td >C</td>
							<td >D</td>
							<td >E</td>
							</tr>
						</g:if>
						<g:each in="${resultCandidatePOST}" var="resultCandidateInstance">
							<g:each in="${resultCandidateInstance}" var="num">
								<tr>
								<td>${num.candidateID}</td>
								<td>${num.nominationID}</td>
								<td>${num.name}</td>
								<td>${num.age}</td>
								<td>${num.disciplines}</td>
								<td>${num.organization}</td>
									<td>${num.aNum}</td>
									<td>${num.bNum}</td>
									<g:if test="${ballotContentInstance.columns == 1}">
										<td >${num.cNum}</td>
									</g:if>
									<g:if test="${ballotContentInstance.columns == 3}">
										<td >${num.cNum}</td>
										</g:if>
									<g:if test="${ballotContentInstance.columns == 4}">
										<td >${num.cNum}</td>
										<td >${num.dNum}</td>
									</g:if>
									<g:if test="${ballotContentInstance.columns == 5}">
										<td >${num.cNum}</td>
										<td >${num.dNum}</td>
										<td >${num.eNum}</td>
									</g:if>
									<td >${num.score}</td>
								</tr>
							</g:each>
						</g:each>
					</table>
				</div>
				<div style="width:100px;margin:auto"><p style="width:45px;margin:auto">第${page}页</p></div>
				<br>

				<div class="pagination" style="width:100px;margin:auto">
					<g:paginate total="${total}" id="${ballotContentInstance.id}" />
				</div>
			</div>


			<g:if test="${ballotContentInstance.status != "结束"}">
				<g:if test="${ballotContentInstance.way == "表决"}">
					同意至少：
				</g:if>
				<g:if test="${ballotContentInstance.way == "计分"}">
					通过分数：
				</g:if>
				<input name="score" id = "score" type="number" min="0" max="9999" value=""/>
				<div id="realman"></div>
				<script>
					$("#score").blur(function(){
						var minScore = $("#score").val();
						$.ajax({
							type:"POST",
							async:false,
							url:"/firstGrails/ballotContent/showRealMan",///?minScore="+minScore+"&ballot=
							data:{minScore:minScore,ballot:${ballotContentInstance.id}},
							datatype:"JSON",
							success:function(data){
								var showhtml="<table><tr><td style='width: 80px'>名字</td><td style='width: 80px'>结果</td></tr>"
								for(i in data){
									showhtml += "<tr><td>"+data[i].name+"</td><td>"+data[i].score+"</td></tr>"
								}
								showhtml += "</table>"
								showhtml += "<a href='/firstGrails/ballotContent/finalshow/${ballotContentInstance.id}?minScore="+minScore+" 'class='btn btn-primary'>结束本轮</a>"
								showhtml += "<a href='/firstGrails/ballotContent/finalshow/${ballotContentInstance.id}?minScore="+minScore+"&end="+1+"'class='btn btn-primary'>结束选举</a>"
								$("#realman").html(showhtml)
								if(data[0]==null){
									$("#realman").html("无相符结果")
								}
							},
							error: function (xmlhttp,state,msg){
								$("#realman").html(state+":"+msg)
							}


						})
					})
				</script>
				%{--<g:form url="[resource:ballotContentInstance,params:[redact:'index'],action:'updatewithaction']"  method="PUT" >--}%
					%{--<g:hiddenField name="status" value="结束" />--}%
					%{--<fieldset class="buttons">--}%
						%{--<div class="box-footer">--}%
							%{--<g:actionSubmit class="save btn btn-primary" action="updatewithaction" onclick="return confirm('确定结束本次?');" value="结束本次" />--}%
						%{--</div>--}%
					%{--</fieldset>--}%
				%{--</g:form>--}%
			</g:if>
			<g:if test="${ballotContentInstance.status == "结束"}">
				<p>投票已结束</p>
				<g:if test="${ballotContentInstance.minAgree?0:1}">
					<p>分数线为${ballotContentInstance.minAgree}</p>
				</g:if>
			</g:if>
		</div>
	</g:else>
		<script>
			$("th p").css("text-align","center");
			$("td").css("width","100px");
		</script>

	</body>
</html>

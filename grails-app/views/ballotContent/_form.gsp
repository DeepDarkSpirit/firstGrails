<%@ page import="firstgrails.BallotContent" %>

<table class="table table-bordered">
	<tr>
		<td>
			<div class="fieldcontain ${hasErrors(bean: ballotContentInstance, field: 'way', 'error')} required">
				<label for="way">
					计票方式：
				</label>
				<g:radio name="way" value="计分" checked="checked"/>计分<g:radio name="way" value="表决"/>表决
			</div>
		</td>
		<td>
			<div class="fieldcontain ${hasErrors(bean: ballotContentInstance, field: 'way', 'error')} required">
				<label for="way">
					分组情况：
				</label>
				<g:radio name="groupID" id ="groupID" value="分组" checked="checked"/>分组<g:radio name="groupID" value="不分组"/>不分组
			</div>
		</td>
		<td>
			<div class="fieldcontain ${hasErrors(bean: ballotContentInstance, field: 'way', 'error')} required">
				<label for="way">
					选票类型：
				</label>
				<g:radio name="type" value="预选" checked="checked"/>预选<g:radio name="type" value="正式"/>正式
			</div>
		</td>
	</tr>
</table>
<table class="table table-bordered">
	<tr>
		<td id="divisionGroup">
			<div  class="fieldcontain ${hasErrors(bean: ballotContentInstance, field: 'divisionID', 'error')}">
				<label for="divisionID">
					学部分组：
				</label>
				<g:hiddenField name="divisionID" required="" value="" />
                <select  id="division1" class="easyui-combogrid" style="width:250px" data-options="
					panelWidth: 450,
					panelHeight:200,
					required:true,
					multiple: true,
					editable:false,
					idField: 'id',
					textField: 'groupName',
					url: 'list',
					method: 'get',
					columns: [[
						{field:'ck',checkbox:true},
						{field:'divisionID',title:'学部代码',width:65,align:'center'},
						{field:'divisionName',title:'学部名字',width:200,align:'center'},
						{field:'groupID',title:'小组代码',width:65,align:'center'},
						{field:'groupName',title:'小组名字',width:100,align:'center'},
					]],
					fitColumns: true
				">
                </select>
			</div>
		</td>
		<td id="divisionNoGroup" disabled="ture" style="display:none">
			<div class="fieldcontain ${hasErrors(bean: ballotContentInstance, field: 'divisionID', 'error')}">
				<label>
					学部不分组：
				</label>
				<select  id="division2" class="easyui-combogrid" style="width:250px" data-options="
					panelWidth: 300,
					multiple: true,
					required:true,
					editable:false,
					idField: 'divisionID',
					textField: 'divisionName',
					url: 'list2',
					method: 'get',
					columns: [[
						{field:'ck',checkbox:true},
						{field:'divisionID',title:'学部代码',width:60,align:'center'},
						{field:'divisionName',title:'学部名字',width:200,align:'center'},
					]],
					fitColumns: true
				">
				</select>
			</div>
		</td>

		<td>
			<div class="fieldcontain ${hasErrors(bean: ballotContentInstance, field: 'roundID', 'error')} required">
				<label for="roundID">
					轮：
				</label>
				<g:field name="roundID" type="number" min="1" max="999" value="${ballotContentInstance?.roundID?:1}" required=""/>

			</div>
		</td>
		<td>
			<div class="fieldcontain ${hasErrors(bean: ballotContentInstance, field: 'times', 'error')} required">
				<label for="times">
					次：
				</label>
				<g:field name="times" type="number" min="1" max="999" value="${ballotContentInstance?.times?:1}" required=""/>

			</div>
		</td>
	</tr>
</table>

<div id="voteSets" disabled="ture" style="display:none">
	<h3>表决设置</h3>
	<div class="fieldcontain ${hasErrors(bean: ballotContentInstance, field: 'columns', 'error')}  form-group">
		<label for="columns">
			弃权选项
		</label>：
		<g:radio name="columns" value="1" disabled="ture" checked="checked"/>可弃权<g:radio name="columns" disabled="ture" value="2"/>不可弃权
	</div>
<table  class="table table-bordered" >
	<tr>
		<td>
				<label>
					同意上限
				</label>
		</td>
		<td>
			<div class="fieldcontain ${hasErrors(bean: ballotContentInstance, field: 'aMax', 'error')} required">
				<g:field name="aMax" type="number" min="0" max="999" disabled="ture" value="${ballotContentInstance?.aMax?:999}" required=""/>
			</div>
		</td>
		<td>
				<label for="roundID">
					同意下限
				</label>
		</td>
		<td>
			<div class="fieldcontain ${hasErrors(bean: ballotContentInstance, field: 'aMin', 'error')}">
				<g:field name="aMin" type="number" min="0" max="999" disabled="ture" value="${ballotContentInstance?.aMin?:0}" required=""/>
				<g:hiddenField name="aScore" type="number" value="1" />
			</div>
		</td>
	</tr>
	<tr>
		<td>
				<label>
					不同意上限
				</label>
		</td>
		<td>
			<div class="fieldcontain ${hasErrors(bean: ballotContentInstance, field: 'bMax', 'error')}">
				<g:field name="bMax" type="number" min="0" max="999" disabled="ture" value="${ballotContentInstance?.bMax?:999}" required=""/>
			</div>
		</td>
		<td>
				<label for="roundID">
					不同意下限
				</label>
		</td>
		<td>
			<div class="fieldcontain ${hasErrors(bean: ballotContentInstance, field: 'bMin', 'error')}">
				<g:field name="bMin" type="number" min="0" max="999" disabled="ture" value="${ballotContentInstance?.bMin?:0}" required=""/>
			</div>
		</td>
	</tr>
</table>
</div>
<div id="countSets">
<table  class="table table-bordered">
	<h3>计分设置</h3>
	<div class="fieldcontain ${hasErrors(bean: ballotContentInstance, field: 'columns', 'error')}  form-group">
		<label for="columns">
			选票分栏数
		</label>：
		<g:select id="columnsSelect" name="columns" from="${3..5}"  value="${ballotContentInstance?.columns}" />
	</div>
	<tr id = "trA">
		<td>
			<div class="fieldcontain ${hasErrors(bean: ballotContentInstance, field: 'aMax', 'error')}  form-group">
				<label for="aMax">
					A数量上限：
				</label>
				<g:field name="aMax" type="number" min="0" max="999" value="${ballotContentInstance?.aMax?:999}" required=""/>
			</div>
		</td>
		<td>
			<div class="fieldcontain ${hasErrors(bean: ballotContentInstance, field: 'aMin', 'error')}  form-group">
				<label for="aMin">
					A数量下限：
				</label>
				<g:field name="aMin" type="number" min="0" max="999" value="${ballotContentInstance?.aMin?:0}" required=""/>
			</div>
		</td>
		<td>
			<div class="fieldcontain ${hasErrors(bean: ballotContentInstance, field: 'aScore', 'error')}  form-group">
				<label for="aScore">
					A分数：
				</label>
				<g:field name="aScore" type="number" min="0" max="999" value="${ballotContentInstance?.aScore?:1}" required=""/>
			</div>
		</td>
	</tr>
	<tr id = "trB">
		<td>
			<div class="fieldcontain ${hasErrors(bean: ballotContentInstance, field: 'bMax', 'error')}  form-group">
				<label for="bMax">
					B数量上限：
				</label>
				<g:field name="bMax" type="number" min="0" max="999" value="${ballotContentInstance?.bMax?:999}" required=""/>
			</div>
		</td>
		<td>
			<div class="fieldcontain ${hasErrors(bean: ballotContentInstance, field: 'bMin', 'error')}  form-group">
				<label for="bMin">
					B数量下限：
				</label>
				<g:field name="bMin" type="number" min="0" max="999" value="${ballotContentInstance?.bMin?:0}" required=""/>
			</div>
		</td>
		<td>
			<div class="fieldcontain ${hasErrors(bean: ballotContentInstance, field: 'bScore', 'error')}  form-group">
				<label for="bScore">
					B分数：
				</label>
				<g:field name="bScore" type="number" min="0" max="999" value="${ballotContentInstance?.bScore?:1}" required=""/>
			</div>
		</td>
	</tr>
	<tr id = "trC">
		<td>
			<div class="fieldcontain ${hasErrors(bean: ballotContentInstance, field: 'cMax', 'error')}  form-group">
				<label for="cMax">
					C数量上限：
				</label>
				<g:field name="cMax" type="number" min="0" max="999" value="${ballotContentInstance?.cMax?:999}" required=""/>
			</div>
		</td>
		<td>
			<div class="fieldcontain ${hasErrors(bean: ballotContentInstance, field: 'cMin', 'error')}  form-group">
				<label for="cMin">
					C数量下限：
				</label>
				<g:field name="cMin" type="number" min="0" max="999" value="${ballotContentInstance?.cMin?:0}" required=""/>
			</div>
		</td>
		<td>
			<div class="fieldcontain ${hasErrors(bean: ballotContentInstance, field: 'cScore', 'error')}  form-group">
				<label for="cScore">
					C分数：
				</label>
				<g:field name="cScore" type="number" min="0" max="999" value="${ballotContentInstance?.cScore?:1}" required=""/>
			</div>
		</td>
	</tr>
	<tr id = "trD" disabled="ture" style="display:none">
		<td>
			<div class="fieldcontain ${hasErrors(bean: ballotContentInstance, field: 'dMax', 'error')}  form-group">
				<label for="dMax">
					D数量上限：
				</label>
				<g:field name="dMax" disabled="ture" type="number" min="0" max="999" value="${ballotContentInstance?.dMax?:999}" required=""/>
			</div>
		</td>
		<td>
			<div class="fieldcontain ${hasErrors(bean: ballotContentInstance, field: 'dMin', 'error')}  form-group">
				<label for="dMin">
					D数量下限：
				</label>
				<g:field name="dMin" disabled="ture" type="number" min="0" max="999" value="${ballotContentInstance?.dMin?:0}" required=""/>
			</div>
		</td>
		<td>
			<div class="fieldcontain ${hasErrors(bean: ballotContentInstance, field: 'dScore', 'error')}  form-group">
				<label for="dScore">
					D分数：
				</label>
				<g:field name="dScore" disabled="ture" type="number" min="0" max="999" value="${ballotContentInstance?.dScore?:1}" required=""/>
			</div>
		</td>
	</tr>
	<tr id = "trE" disabled="ture" style="display:none">
		<td>
			<div class="fieldcontain ${hasErrors(bean: ballotContentInstance, field: 'eMax', 'error')}  form-group">
				<label for="eMax">
					E数量上限：
				</label>
				<g:field name="eMax" disabled="ture" type="number" min="0" max="999" value="${ballotContentInstance?.eMax?:999}" required=""/>
			</div>
		</td>
		<td>
			<div class="fieldcontain ${hasErrors(bean: ballotContentInstance, field: 'eMin', 'error')}  form-group">
				<label for="eMin">
					E数量下限：
				</label>
				<g:field name="eMin" disabled="ture" type="number" min="0" max="999" value="${ballotContentInstance?.eMin?:0}" required=""/>
			</div>
		</td>
		<td>
			<div class="fieldcontain ${hasErrors(bean: ballotContentInstance, field: 'eScore', 'error')}  form-group">
				<label for="eScore">
					E分数：
				</label>
				<g:field name="eScore" disabled="ture" type="number" min="0" max="999" value="${ballotContentInstance?.eScore?:1}" required=""/>
			</div>
		</td>
	</tr>
	</table>
</div>

<div style="display: none;" >
	<g:datePicker name="createTime" precision="day" value="${ballotContentInstance?.createTime}"/>
	<g:textField name="electionYear" required="" value="${ballotContentInstance?.electionYear?:formatDate(format:'yyyy',date:new Date())}"/>
	<g:datePicker name="modifyTime" precision="day" value=""/>
	<g:textField name="status" required="" value="${ballotContentInstance?.status?:"准备"}"/>
</div>





<script>
	$("input[name='groupID']").change(function() {     //radio值变化函数
		var groupID = $("input[name='groupID']:checked").val();           // 获取当前选中radio的值
		if (groupID == "不分组") {
			$("#division1").combogrid('disable');
			$("#division2").combogrid("enable");
			$("#divisionNoGroup").show()
			$("#divisionGroup").hide()
		}
		if (groupID == "分组") {
			$("#division2").combogrid('disable');
			$("#division1").combogrid("enable");
			$("#divisionGroup").show()
			$("#divisionNoGroup").hide()
		}
	})

	$("input[name='way']").change(function() {
		var way = $("input[name='way']:checked").val();
		if (way == "表决") {
			$("#voteSets").show()
			$("#countSets").hide()
			$("#voteSets").find("input").attr("disabled", false)
//			$("#hiddenBScore").attr("disabled", false)
//			$("#hiddenCScore").attr("disabled", false)
			$("#countSets").find("input").attr("disabled", true);
			$("#countSets").find("select").attr("disabled", true);
		}
		if (way == "计分") {
			$("#countSets").show()
			$("#voteSets").hide()
			$("#countSets").find("input").attr("disabled", false)
			$("#countSets").find("select").attr("disabled", false);
			$("#voteSets").find("input").attr("disabled", true);
//			$("#hiddenBScore").attr("disabled", true)
//			$("#hiddenCScore").attr("disabled", true)
		}
	})
	$("#columnsSelect").change(function() {
		var columnsSelect = $("#columnsSelect").children('option:selected').val()
		if (columnsSelect == "3") {
			$("#trD").hide()
			$("#trE").hide()
			$("#trD").find("input").attr("disabled", true);
			$("#trE").find("select").attr("disabled", true);
		}
		if (columnsSelect == "4") {
			$("#trD").show()
			$("#trE").hide()
			$("#trD").find("input").attr("disabled", false)
			$("#trE").find("input").attr("disabled", true);
		}
		if (columnsSelect == "5") {
			$("#trD").show()
			$("#trE").show()
			$("#trD").find("input").attr("disabled", false)
			$("#trE").find("input").attr("disabled", false);
		}
	})

	function validate_required(field,alerttxt)
	{
		with (field)
		{
			if (value==null||value=="")
			{alert(alerttxt);return false}
			else {return true}
		}
	}
	function validate_form(thisform)
	{
		var groupIDValues;
		if($("input[name='groupID']:checked").val()=="分组"  ){
			groupIDValues = $("#division1").combobox('getValues').join(",");
		}else{
			groupIDValues = $("#division2").combobox('getValues').join(",");
		}
		$("input[name='divisionID']").val(groupIDValues);
		with (thisform)
		{
			if (validate_required(divisionID,"必须选择学部")==false)
			{divisionID.focus();return false}
		}
	}
</script>



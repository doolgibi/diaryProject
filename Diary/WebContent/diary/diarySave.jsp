<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<div class="data_list">
	<div class="data_list_title">
		<img src="${pageContext.request.contextPath}/images/diary_add_icon.png"/>
		创建行程
	</div>
	
	<form action="diary?action=save" method="post" onsubmit="return checkForm()">
		<div>
			<div class="diary_title">
			    <input type="text" id="title"  name="title" value="${diary.title }" class="input-xlarge"  style="margin-top:5px;width:206px;height:30px;"  placeholder="请填写行程标题..."/>
			    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="text" name="releaseDate" class="demo-input" value="${diary.releaseDate }" placeholder="请选择行程日期..." id="releaseDate" style="margin-top:5px;height:30px;">
			</div>
			<div>
				<textarea class="ckeditor" id="content" name="content">${diary.content }</textarea>
			</div>
			<div class="diary_type">
				<select id="typeId" name="typeId">
					<option value="">请选择行程类别...</option>
					<c:forEach var="diaryTypeCount" items="${diaryTypeCountList }">
						<option value="${diaryTypeCount.diaryTypeId }" ${diaryTypeCount.diaryTypeId==diary.typeId?'selected':'' }>${diaryTypeCount.typeName }</option>
					</c:forEach>
				</select>
			</div>
			<div>
				<input type="hidden" id="diaryId" name="diaryId" value="${diary.diaryId }"/>
				<input type="submit" class="btn btn-primary" value="保存"/>
				<button class="btn btn-primary" type="button" onclick="javascript:history.back()">返回</button>
				<font id="error" color="red">${error }</font>  
			</div>
		</div>
	</form>
</div>

<script src="${pageContext.request.contextPath}/laydate/laydate.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap/js/jQuery.js"></script>
<script type="text/javascript">

	lay('#version').html('-v'+ laydate.v);
	
	//时间选择器
	laydate.render({
	  elem: '#releaseDate'
	  ,type: 'datetime'
	});



	function checkForm(){
		var title=document.getElementById("title").value;
		var content=CKEDITOR.instances.content.getData();
		var typeId=document.getElementById("typeId").value;
		if(title==null||title==""){
			document.getElementById("error").innerHTML="标题不能为空！";
			return false;
		}
		if(content==null||content==""){
			document.getElementById("error").innerHTML="内容不能为空！";
			return false;
		}
		if(typeId==null||typeId==""){
			document.getElementById("error").innerHTML="请选择日志类别！";
			return false;
		}
		return true;
	}
</script>

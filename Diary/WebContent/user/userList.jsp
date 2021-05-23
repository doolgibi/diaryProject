<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script type="text/javascript">
	function userDelete(userId){
		if(confirm("您确定要删除这个用户吗？")){
			window.location="user?action=deleteUser&userId="+userId;
		}
	}
</script>

<div class="data_list">
		<div class="data_list_title">
		<img src="${pageContext.request.contextPath}/images/list_icon.png"/>
		用户列表
		</div>
		
		<table class="table table-hover table-striped">
			  <tr>
			  	<th>编号</th>
			  	<th>用户名</th>
			  	<th>操作</th>
			  </tr>
			  <c:forEach var="user" items="${userList }">
			  	<tr>
			  		<td>${user.userId }</td>
			  		<td>${user.userName }</td>
			  		<td>
			  			<button class="btn btn-mini btn-danger" type="button" onclick="userDelete(${user.userId })">删除</button>
			  		</td>
			  	</tr>
			  </c:forEach>
			</table>
</div>

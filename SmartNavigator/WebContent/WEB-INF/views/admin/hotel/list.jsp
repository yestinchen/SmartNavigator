<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
	<%@ include file="/common/global.jsp"%>
	<%@ include file="/common/meta.jsp"%>
	<%@ include file="/common/common.jsp"%>
	<link rel="stylesheet" type="text/css" href="${ctx }/css/admin/style.css">
	<style>
		#place-list-table{padding-top:30px;}
		#place-list-table th{padding:10px;}
	</style>
	<title>控制台首页</title>
</head>
<body>
<div class="body-container">
	<c:set var="topnavselect" value="2"/>
	<%@include file="/WEB-INF/views/admin/menu.jsp" %>
	
	
	<div class="main-container">
		
		<c:set var="leftnavselect" value="1"/>
		<%@include file="/WEB-INF/views/admin/hotel/menu.jsp" %>
		<div class="content-container">
		<form method="get" action="${ctx }/admin/hotel/delete/handle">
			<table id="place-list-table">
				<tr>
					<th>选择</th>
					<th>名称</th>
					<th>显示等级</th>
					<th>描述</th>
					<th>经度</th>
					<th>纬度</th>
					<th>修改</th>
					<th>优惠信息</th>
				</tr>
				<c:forEach items="${list}" var="hotel">
				<tr>
					<td><input type="checkbox" name="${hotel.id }"></td>
					<td>${hotel.name }</td>
					<td>${hotel.level }</td>
					<td>${hotel.description }</td>
					<td>${hotel.latitude }</td>
					<td>${hotel.longitude }</td>
					<td><a href="${ctx }/admin/hotel/modify?id=${hotel.id}">修改</a></td>
					<td><a href="${ctx }/admin/discount/list?placeid=${hotel.id}">优惠</a></td>
				</tr>
				</c:forEach>
			</table>
			<div id="table-menu">
				<ul>
					<li><input type="submit" value="删除"></li>
				</ul>
			</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>

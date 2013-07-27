<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/common/global.jsp"%>
<%@ include file="/common/meta.jsp"%>
<title>智慧导航管理登录</title>
<script type="text/javascript" src="${ctx }/js/common/jquery-1.10.2.min.js" ></script>
<script type="text/javascript">
$(document).ready(function(){
	var error = ${not empty param.error};
	if(error){
		alert("用户名或密码错误");
	}
});
</script>
<link rel="stylesheet" type="text/css" href="${ctx }/css/admin/login.css" />
</head>

<body>
	<form id="login-form" action="" method="post">
  <fieldset>
	  <legend>登录</legend>
	  <label for="login">用户名</label>
	  <input type="text" id="login" name="name"/>
	  <div class="clear"></div>
	  <label for="password">密码</label>
	  <input type="password" id="password" name="password"/>
	  <div class="clear"></div>
	  <br />
	  <input type="submit" style="margin: -20px 0 0 287px;" class="button" name="commit" value="登录"/>
  </fieldset>
</form>
</body>

</html>
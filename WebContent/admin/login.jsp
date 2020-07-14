﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
    pageContext.setAttribute("path", path);
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎登录跳蚤市场后台管理系统</title>
<link href="${path}/admin/css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="${path}/admin/js/jquery.js"></script>
<script src="js/cloud.js" type="text/javascript"></script>

<script language="javascript">
	$(function(){
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
	$(window).resize(function(){  
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
    })  
});  
</script> 

</head>

<body style="background-color:#1c77ac; background-image:url(images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">
    <div id="mainBody">
      <div id="cloud1" class="cloud"></div>
      <div id="cloud2" class="cloud"></div>
    </div>  
<div class="logintop">    
    <span>欢迎登录后台管理平台</span>    
    <ul>
    <li><a href="${path}/index.jsp">回首页</a></li>
    </ul>    
    </div>
    <div class="loginbody">
    <span class="systemlogo"></span> 
    <div class="loginbox">
    <form action="${path}/userServlet?method=adminLogin" method="post">
	    <ul>
		    <li>
			    <font style="color: red">${msg }</font><br/>
			    <input name="username" type="text" class="loginuser"  />
			</li>
		    <li>
	    		<input name="password" type="password" class="loginpwd" />
	   		 </li>
	    	<li>
		    	<input type="submit" class="loginbtn" value="登录" />
		    	<label>
		    		<input name="" type="checkbox" value="" checked="checked" />记住密码
		    	</label>
		    	<label><a href="#">忘记密码？</a></label>
	    	</li>
	    </ul>
    </form>
    </div>
    </div>
    
</body>
</html>

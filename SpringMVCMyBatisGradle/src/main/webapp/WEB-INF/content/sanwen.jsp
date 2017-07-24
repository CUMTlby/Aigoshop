<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Aigoshop</title>

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

  </head>
  <body>

    <div class="container-fluid">
	   <div class="container-fluid">
	<div class="row">
        <br>
        
		<div class="col-md-6">
			<h3 class="text-danger">
				Aigoshop
			</h3>
		</div>
		<div class="col-md-6">
			<ul class="nav nav-tabs">
				<li >
					<a href="index">首页</a>
				</li>
				<li>
					<a href="login">登录</a>
				</li>
				<li>
					<a href="register">注册</a>
				</li>
				<li>
					<a href="changepassword">修改密码</a>
				</li>
				<li>
					<a href="forgetpwd">忘记密码</a>
				</li>
				<li >
					<a href="shopping">购物车</a>
				</li>
				<li >
					<a href="order">我的订单</a>
				</li>
				
				<li>
					<a href="collect?loginname=${sessionScope.user.loginname}">收藏</a>
				</li>
					
				<li class="divider">
				</li>
						
			</ul>
				
			
		</div>
	</div>
	<div class="row">
        <br>
		<div class="col-md-4">
			<div class="row">
				<div class="col-md-6">
					<a href="sheke">社科</a>
				</div>
				<div class="col-md-6">
					 <a href="xiaoshuo">小说</a>
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="row">
				<div class="col-md-6">
					 <a href="sanwen">散文</a>
				</div>
				<div class="col-md-6">
					 <a href="shaoer">少儿</a>
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="row">
				<div class="col-md-6">
					 <a href="lizhi">励志</a>
				</div>
				<div class="col-md-6">
					 <a href="zazhi">杂志</a>
				</div>
			</div>
		</div>
	</div>
    <div class="row">
        <br>
        <br>
        <br>
        <c:forEach items="${requestScope.book_list }" var="book">
		<div class="col-md-4">
		 
			<img alt="Bootstrap Image Preview" src="images/${book.image }" />
			<h3>
			    <a href="details">${book.name}</a>
			</h3> 
			<button type="button" class=class="btn btn-default btn-inverse">
				<a href="details?book_id=${book.id }">详情>></a>
			</button>
		
		</div>
	</c:forEach>
			</div>
</div>
</body>
</html>
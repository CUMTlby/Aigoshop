<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>首页</title>

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

  </head>
  <body>
欢迎[${sessionScope.user.loginname }]访问,当前在线人数：${applicationScope.count}
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
					<a href="shop">购物车</a>
				</li>
				<li  >
					<a href="order">我的订单</a>
				</li>
				
				<li class="active">
					<a href="collect?loginname=${sessionScope.user.loginname}">收藏</a>
				</li>
					
				<li class="divider">
				</li>
						
			</ul>
				
			
		</div>
	</div>
		<br>
		<br>
		<div class="row clearfix">
			<div class="col-md-12 column">
		<div class="row clearfix">
			<div class="col-md-3 column">
			</div>
			<div class="col-md-6 column">
			
				<table class="table">
					<thead>
						<tr>
							<th>
							图片
							</th>
							<th>
							商品
							</th>
							<th>
							价格
							</th>
							<th>
							删除收藏
							</th>
						</tr>
					</thead>
					
					<c:forEach items="${requestScope.collect_list }" var="collect">
				<tbody>
					<tr>
						<td>
							<img alt="Bootstrap Image Preview" src="images/${collect.image }" />
						</td>
						<td>
							${collect.name}
						</td>
						
						<td>
							${collect.price}
						</td>
						<td>
							<a href="removecollect?book_id=${collect.book_id}&loginname=${sessionScope.user.loginname}"><font size=3>删除</font></a>
						</td>
					</tr>
					</tbody>
					</c:forEach>
					
				 </table>
		
				<div class="col-md-3 column">
			</div>
			</div>
			</div>
			</div>
			
			<script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
</body>
</html>
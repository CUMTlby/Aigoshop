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
				<li  class="active">
					<a href="shop">购物车</a>
				</li>
				<li >
					<a href="order">我的订单</a>
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
				<li>
					<a href="collect">收藏</a>
				</li>
					
				<li class="divider">
				</li>
						
			</ul>
				
			
		</div>
	</div>
		<br>
		<br>
		<div class="row clearfix">
			<div class="col-md-1 column">
			</div>
			<div class="col-md-10 column">
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
							数量
							</th>
							<th>
							增加商品
							</th>
							<th>
							减少商品
							</th>
							<th>
							删除商品
							</th>
							<th>
							立即购买
							</th>
						</tr>
					</thead>
				<tbody>
				<c:forEach items="${requestScope.shop_list }" var="shop">
					<c:forEach items="${shop.book }" var="book">
					<tr>
						<td>
							<img alt="Bootstrap Image Preview" src="images/${book.image}"/>
						</td>
		
						<td>
							<font size=5>${book.name}</font>
						</td>
							
						<td>
							${book.price}
						</td>
						<td>
							${shop.count}
						</td>
						<td>
							<a href="increase?book_id=${book.id}"><font size=7>+</font></a>
						</td>
						<td>
							<a href="reduce?book_id=${book.id}"><font size=7>-</font></a>
						</td>
						<td>
							<a href="remove?book_id=${book.id}"><font size=5>删除</font></a>
						</td>
						<td>
							<a href="order?book_id=${book.id }"><font size=5>立即购买</font></a>
						</td>
					</tr>
						</c:forEach>
					</c:forEach>
					
					</tbody>
				 </table>
				</div>
				<div class="col-md-1 column">
			</div>
			</div>
	
</body>
</html>
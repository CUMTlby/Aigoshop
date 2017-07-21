<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     
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
    
    <link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">


<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">


<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

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
				<li >
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
	<div class="row clearfix">
   			 <br>
    		<br>
   			 <br>
    			<br>
	
	<div class="col-md-6 column">
	<div class="row clearfix">
        <br>
        <br>
        <div class="col-md-8 column"></div>
        <div class="col-md-4 column">
        	<div id="myCarousel" class="carousel slide">
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active">
					<li data-target="#myCarousel" data-slide-to="1">
					<li data-target="#myCarousel" data-slide-to="2">
				</ol>
				<div class="carousel-inner">
					<div class="item active">
						<img src="images/${book.image}" alt="First slide">
						<div class="carousel-caption">1</div>
					</div>
					<div class="item">
						<img src="images/${book.fimage}" alt="Second slide">
						<div class="carousel-caption"> 2</div>
					</div>
					<div class="item">
						<img src="images/${book.simage}" alt="Third slide">
						<div class="carousel-caption"> 3</div>
					</div>
				</div>
				<a class="carousel-control left" href="/demo/bootstrap3-plugin-carousal-caption.htm#myCarousel" data-slide="prev">‹</a>
				<a class="carousel-control right" href="/demo/bootstrap3-plugin-carousal-caption.htm#myCarousel" data-slide="next">›</a>
			</div>
		</div>	
	</div>
	</div>	
		<div class="col-md-6 column">
          <br>
          <br>
			<dl>
				<dt>
				<font size=5>
				${book.name}
				</font>
				</dt>
				<dd>
				${book.author} &nbsp;&nbsp;著
				</dd>
			</dl>
		<h3>
			<font color=red size=6>
			售价： ${book.price}
			</font>
		</h3>
			<div class="row clearfix">
			<br>
				<div class="col-md-2 column">
					 <button type="button" class="btn btn-default btn-warning">收藏</button>
				</div>
				<div class="col-md-3 column">
					 <button type="button" class="btn btn-default btn-success">
					 	<a href="save?book_id=${book.id}">添加购物车</a>
					 </button>
				</div>
				<div class="col-md-5 column">
					 <button type="button" class="btn btn-default btn-success">购买</button>
				</div>
			</div>
		</div>
		
	</div>
	
	



<!-- Placed at the end of the document so the pages load faster -->
<script src="twitter-bootstrap-v2/docs/assets/js/jquery.js"></script>
<script src="twitter-bootstrap-v2/docs/assets/js/bootstrap-carousel.js"></script>
</body>
</html>
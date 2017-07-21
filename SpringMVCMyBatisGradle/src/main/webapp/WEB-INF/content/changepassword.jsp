<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>修改密码</title>

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
				<li >
					<a href="shop">购物车</a>
				</li>
				<li >
					<a href="order">我的订单</a>
				</li>
				<li>
					<a href="register">注册</a>
				</li>
				<li  class="active">
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
		<div class="col-md-12">
			<form class="form-horizontal" role="form" action="changepassword">
			
				<div class="form-group">
					 <br>
					 <br>
					<label for="inputEmail3" class="col-sm-2 control-label">
						登录名
					</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" name="loginname">
					</div>
				</div>
				
				<div class="form-group">
					 
					<label for="inputPassword3" class="col-sm-2 control-label">
						修改后密码
					</label>
					<div class="col-sm-4">
						<input type="password" class="form-control" name="rewpassword">
					</div>
				</div>
				<div class="form-group">
					 
					<label for="inputPassword3" class="col-sm-2 control-label">
						确认修改密码
					</label>
					<div class="col-sm-4">
						<input type="password" class="form-control" name="rewpsd">
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-sm-offset-3 col-sm-10">
						 
						<button type="submit" class="btn btn-default">
							<a>修改</a>
						</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
</body>
</html>
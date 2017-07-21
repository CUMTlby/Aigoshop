<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>登录页面</title>

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

  </head>
  <body>

    <div class="container-fluid">
    <div class="row">
        <br>
        <div class="col-md-3">
        </div>
		<div class="col-md-3">
			<h3 class="text-danger">
				Aigoshop
			</h3>
		</div>
	<div class="row">
		<div class="col-md-12">
		
			<form class="form-horizontal" role="form" action="login" method="post">
			
				<div class="form-group">
					 <br>
					 <br>
					<label for="inputEmail3" class="col-sm-2 control-label">
						登录名
					</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" name="loginname">
					</div>
				</div>
				<div class="form-group">
					 
					<label for="inputPassword3" class="col-sm-2 control-label">
						密码
					</label>
					<div class="col-sm-4">
						<input type="password" class="form-control" name="password">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<div class="checkbox">
							 
							
							<br>
						</div>
						<div class="col-sm-6">
						    <a href="forgetpwd">忘记密码？&nbsp;&nbsp;</ a>
							<a href="register">注册</ a>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-3 col-sm-10">
						 
						<button type="submit" class="btn btn-default">
						        登录
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
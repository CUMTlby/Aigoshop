<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="js/jquery.min.js"></script>

    <title>登录页面</title>

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

	<script language="javascript" type="text/javascript">  
	function addCookie(name,value,days,path){   /**添加设置cookie**/  
    var name = escape(name);  
    var value = escape(value);  
    var expires = new Date();  
    expires.setTime(expires.getTime() + days * 3600000 * 24);  
    //path=/，表示cookie能在整个网站下使用，path=/temp，表示cookie只能在temp目录下使用  
    path = path == "" ? "" : ";path=" + path;  
    //GMT(Greenwich Mean Time)是格林尼治平时，现在的标准时间，协调世界时是UTC  
    //参数days只能是数字型  
    var _expires = (typeof days) == "string" ? "" : ";expires=" + expires.toUTCString();  
    document.cookie = name + "=" + value + _expires + path;  
}  
function getCookieValue(name){  /**获取cookie的值，根据cookie的键获取值**/  
    //用处理字符串的方式查找到key对应value  
    var name = escape(name);  
    //读cookie属性，这将返回文档的所有cookie  
    var allcookies = document.cookie;         
    //查找名为name的cookie的开始位置  
    name += "=";  
    var pos = allcookies.indexOf(name);      
    //如果找到了具有该名字的cookie，那么提取并使用它的值  
    if (pos != -1){                                             //如果pos值为-1则说明搜索"version="失败  
        var start = pos + name.length;                  //cookie值开始的位置  
        var end = allcookies.indexOf(";",start);        //从cookie值开始的位置起搜索第一个";"的位置,即cookie值结尾的位置  
        if (end == -1) end = allcookies.length;        //如果end值为-1说明cookie列表里只有一个cookie  
        var value = allcookies.substring(start,end); //提取cookie的值  
        return (value);                           //对它解码        
    }else{  //搜索失败，返回空字符串  
        return "";  
    }  
}  
function deleteCookie(name,path){   /**根据cookie的键，删除cookie，其实就是设置其失效**/  
    var name = escape(name);  
    var expires = new Date(0);  
    path = path == "" ? "" : ";path=" + path;  
    document.cookie = name + "="+ ";expires=" + expires.toUTCString() + path;  
}  
  
/**实现功能，保存用户的登录信息到cookie中。当登录页面被打开时，就查询cookie**/  
window.onload = function(){  
    var loginnameValue = getCookieValue("loginname");  
    document.getElementById("loginname").value = loginnameValue;  
    var passwordValue = getCookieValue("password");  
    document.getElementById("password").value =passwordValue;  
}  
  
function userLogin(){   /**用户登录，其中需要判断是否选择记住密码**/  
    //简单验证一下  
    var loginname = document.getElementById("loginname").value;  
    if(loginname == ''){  
        alert("请输入用户名。");  
        return;  
    }  
    var password = document.getElementById("password").value;  
    if(password == ''){  
        alert("请输入密码。");  
        return;  
    }  
    var objChk = document.getElementById("chkRememberPass");  
    if(objChk.checked){  
        //添加cookie  
        addCookie("loginname",loginname,7,"/");  
        addCookie("password",password,7,"/");  
        alert("记住了你的密码登录。");  
        window.location.href = "http://www.baidu.com";  
    }else{  
        alert("不记密码登录。");  
        window.location.href = "http://www.baidu.com";  
    }  
}  
</script> 

  </head>

  <body>

    <div class="container-fluid">
	<div class="row">
	<div class="col-md-3">
        </div>
	<div class="col-md-6">
			<h3 class="text-danger">
				Aigoshop
			</h3>
		</div>
		<div class="col-md-12">
			<form class="form-horizontal" role="form" action="login" method="post">
				<div class="form-group">
					 <br>
					 <br>
					<label for="inputEmail3" class="col-sm-2 control-label">
						用户名
					</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" name="loginname" id="loginname" value="${user.loginname}">
					</div>
				</div>
				<div class="form-group">
					 
					<label for="inputPassword3" class="col-sm-2 control-label">
						密码
					</label>
					<div class="col-sm-4">
						<input type="password" class="form-control" name="password" id="password" value="${user.password}">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<div class="checkbox">
							 
							<label class="rember-me">
								<input type="checkbox" id="chkRememberPass" name="chkRememberPass"> 记住密码
							</label>
							<br>
						</div>
						<div class="col-sm-6">
						    <a href="repwd">忘记密码？&nbsp;&nbsp;</ a>
							<a href="register">注册</ a>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-3 col-sm-10">
						 
						<button type="submit" class="btn btn-default" onclick="userLogin()">
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
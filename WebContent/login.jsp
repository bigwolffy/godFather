<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>老干爹火锅--登录</title>
	<meta charset="utf-8">
</head>
<style type="text/css">
	body{
		position: absolute;
		width: 100%;
		height: 100%;
		min-width: 1500px;
		background-image: url(images/login_bg.jpg);

	}
	div{
		float: left;
	}
</style>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    
<body>
		<div style="margin-left: 380px;width: 200px">
			<div>
			<img class="img-circle" style="width: 150px;height: 150px;margin-top: 40px" src="images/login_host.jpg">
			</div>
			<div>
			<span style="writing-mode: vertical-rl; color: #742c31; font-size: 120px; font-weight: bolder;font-family: 方正舒体;margin-top: 20px ">老 干 爹</span>
			</div>
		</div>
		<div style="position: absolute;top: 180px;right: 15%;background: rgba(255,255,255,0.3);height: 400px;width: 300px">
			<span style="color: #742c31; font-size: 50px; font-weight: bolder;font-family: 方正舒体;margin-left: 30%">登录</span>
			<form action="" method="post">
				<div class="input-group" style="width: 200px;margin-left: 50px;">
  					<span class="input-group-addon" >账号</span>
  					<input type="text" name="userName" class="form-control" placeholder="请输入账号" aria-describedby="sizing-addon3">
				</div><br><br><br>
				<div class="input-group" style="width: 200px;margin-left: 50px">
  					<span class="input-group-addon" >密码</span>
  					<input type="text" name="userPass" class="form-control" placeholder="请输入密码" aria-describedby="sizing-addon3">
				</div><br><br><br>
				<div class="input-group" style="width: 200px;margin-left: 50px">
					<span class="input-group-addon" >验证码</span>
  					<input type="text" name="userPass" class="form-control" placeholder="请输入验证码" aria-describedby="sizing-addon3">
				</div><br><br><br>
				<div style="width: 200px;margin-left: 50px;opacity: 0.9">
					<input class="form-control" type="submit" name="login" value="登录" style="width: 100%;"><br>
					<a href="#">没有账户？点这里注册</a>
				</div>
				<div  style="width: 200px;margin-left: 50px;margin-top:10px ">
					<a href="#"><img style="width: 40px;height: 40px;margin-left: 20px" class="img-circle" src="images/login_qq.jpg"></a>&nbsp
					<a href="#"><img class="img-circle" style="width: 40px;height: 40px;margin-left: 50px" src="images/login_wc.jpg"></a>
				</div>
			</form>
		</div>
</body>

<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
</html>
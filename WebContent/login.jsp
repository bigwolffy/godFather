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
			
				<div class="input-group" style="width: 200px;margin-left: 50px;">
  					<span class="input-group-addon" >账号</span>
  					<input type="text" id="userName" class="form-control" placeholder="请输入账号" aria-describedby="sizing-addon3">
				</div><br><br><br><br>
				<div class="input-group" style="width: 200px;margin-left: 50px">
  					<span class="input-group-addon" >密码</span>
  					<input type="text" id="userPass" class="form-control" placeholder="请输入密码" aria-describedby="sizing-addon3">
				</div><br><br><br>
				<div class="input-group" style="width: 200px;margin-left: 50px">
					<a id="checkCode" onclick="createCode()" class="input-group-addon" style="width: 53.6px"></a> 
  					<input type="text" name="userPass" class="form-control" placeholder="请输入验证码" aria-describedby="sizing-addon3">
				</div><br><br><br>
				<div style="width: 200px;margin-left: 50px;opacity: 0.9">
					<input class="form-control" type="button" id="login" value="登录" style="width: 100%;" onclick="validate();">
					<a href="#">没有账户？点这里注册</a>
				</div>
				<div  style="width: 200px;margin-left: 50px;margin-top:10px ">
					<a href="#"><img style="width: 40px;height: 40px;margin-left: 20px" class="img-circle" src="images/login_qq.png"></a>&nbsp;
					<a href="#"><img class="img-circle" style="width: 40px;height: 40px;margin-left: 50px" src="images/login_wc.png"></a>
				</div>
			
		</div>
</body>

<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/login.js"></script>
	<script>
    var code="" ; //在全局 定义验证码
    function createCode(){
    code = "";
    var codeLength = 6;//验证码的长度
    var checkCode = document.getElementById("checkCode");
    checkCode.value = "";
    var selectChar = new Array(0,1,2,3,4,5,6,7,8,9,'A','B','C','D','E','F','G','H','J','K','L','M','N','P','Q','R','S','T','U','V','W','X','Y','Z');
 
 
    for(var i=0;i<codeLength;i++) {
       var charIndex = Math.floor(Math.random()*35);
       code +=selectChar[charIndex];
    }
    if(code.length != codeLength){
       createCode();
    }
    document.getElementById("checkCode").innerHTML = code;
    }
 
    function validate () {
    var inputCode = document.getElementById("checkNum").value.toUpperCase();
 
 
    if(inputCode.length <=0) {
       alert("请输入验证码！");
       return false;
    }
    else if(inputCode != code ){
       alert("验证码输入错误！");
       createCode();
       return false;
    }
    else {
       alert("验证码通过！");
       return true;
    }
    }
    </script>
</html>
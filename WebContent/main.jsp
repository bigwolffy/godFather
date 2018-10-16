<%@ page language="java" contentType="text/html; charset=UTF-8"	 pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<title>首页</title>
	<meta charset="utf-8">
</head>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link href="css/iconfont.css" rel="stylesheet"> 
	<style type="text/css">
	*{
		padding: 0;
		margin: 0;
	}
    body{
        height: 100%;
        width: 100%;
        position: absolute;
        background: url(images/all_bg1.jpg);
        background-size: cover; 
	}
    #main{
        height: 100%;
        width: 100%;
        position: absolute;
        top:0;right:0;
        background: url(images/all_bg1.jpg);
        background-size: cover;
    }
	#head_1{
        width: 100%;
        height: 58px;
        background-color: rgba(138,60,63,0.8);
    }
    #head_2{
        width: 250px;
        height: 150px;
        margin-left: 60px;
        margin-top: 30px;
        float: left;
        border: 2px solid black;
    }
    #head_3{
        width: 250px;
        height: 150px;
        margin-left: 60px;
        margin-top: 30px;
        float: left;
        border: 2px solid black;
    }
}
</style>
<body>
    <div id="main">
	<div id="head_1"> 
        <div id="feather" style="margin-left: 10px;margin-top:30px;float: left;height: 25px;width: 350px;">
     <iframe name="weather_inc" src="http://i.tianqi.com/index.php?c=code&id=1" width="330" height="35" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"></iframe>
            </div>
        <div class="dropdown" style="margin-left: 1120px;" >
  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
    ${sessionScope.userName}
   <span class="caret"></span>
  </button>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
    <li><a href="#">个人信息</a></li>
    <li><a href="#">修改信息</a></li>
    <li><a href="#">查看订单</a></li>
    <li role="separator" class="divider"></li>
    <li><a href="#">退出</a></li>
  </ul>
		</div>
    </div>
    <div>
        <a href="#" style="color: green;font-size: 36px;font-family: 隶书">首&nbsp页</a><span style="font-family: 隶书;font-size: 20px">//老干爹火锅，想到不到的刺激！</span>
                <!-- <span>&gt;</span> <a href="#">chinese</a>
                <span>&gt;</span> fsf -->
    </div>
    <div>
    <div id="head_2">就餐已有</div>
    <div id="head_2">今日生日</div>
    <div id="head_2">营业利润</div>
    <div id="head_2">员工人数</div>
    </div>
    <div>
    <div style="width: 800px;height: 350px;margin-left: 60px;margin-top: 30px;float: left;border: 2px solid black;">就餐已有</div>
    <div style="width: 300px;height: 350px;margin-left: 80px;margin-top: 30px;float: left;border: 2px solid black;">今日生日</div>
    </div>
    </div>
</body>
 <script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
</html>
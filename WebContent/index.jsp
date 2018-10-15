<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>老干爹火锅-主界面</title>
	<meta charset="utf-8">
</head>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link href="css/iconfont.css" rel="stylesheet">
     <link href="css/nav.css" rel="stylesheet">

	<style type="text/css">
    *{
        padding: 0;
        margin: 0;
    }
	body{
		position: absolute;
		width: 100%;
		height: 100%;
		min-width: 1500px;
        background-image: url(images/login_bg.jpg);
       
	}
    #main{
        height: 100%;
        width: 85%;
        position: absolute;
        top:0;right:0;
        background: url(images/all_bg1.jpg);
        background-size: cover;
    }
    #head_1{
        opacity: 0.8;
        width: 100%;
        height: 58px;
        background-color: rgba(138,60,63,0.8);
    }
</style>
<body>
		<div class="nav" >
    <div class="nav-top">
        <div id="mini" style="border-bottom:1px solid rgba(255,255,255,0.1)"><img src="images/mini.png"  id="menu"><span style="color: #abb1b7;font-size: 20px;">老干爹火锅</span> </div>
    </div>
    <ul>  
        <li class="nav-item">
            <a href="javascript:;"><i class="my-icon nav-icon icon_1"></i><span>首页</span><i class="my-icon nav-more"></i></a>
        </li>
        <li class="nav-item">
            <a href="javascript:;"><i class="my-icon nav-icon icon_2"></i><span>买单结算</span><i class="my-icon nav-more"></i></a>
        </li>
        <li class="nav-item">
            <a href="javascript:;"><i class="my-icon nav-icon icon_3"></i><span>前台服务</span><i class="my-icon nav-more"></i></a>
        </li>
        <li class="nav-item">
            <a href="javascript:;"><i class="my-icon nav-icon icon_3"></i><span>菜品管理</span><i class="my-icon nav-more"></i></a>
            <ul>
                <li><a href="javascript:;"><span>订单列表</span></a></li>
                <li><a href="javascript:;"><span>打个酱油</span></a></li>
                <li><a href="javascript:;"><span>也打酱油</span></a></li>
            </ul>
        </li>
        <li class="nav-item">
            <a href="javascript:;"><i class="my-icon nav-icon icon_3"></i><span>会员管理</span><i class="my-icon nav-more"></i></a>
            <ul>
                <li><a href="javascript:;"><span>订单列表</span></a></li>
                <li><a href="javascript:;"><span>打个酱油</span></a></li>
                <li><a href="javascript:;"><span>也打酱油</span></a></li>
            </ul>
        </li>
        <li class="nav-item">
            <a href="javascript:;"><i class="my-icon nav-icon icon_3"></i><span>财务管理</span><i class="my-icon nav-more"></i></a>
            <ul>
                <li><a href="javascript:;"><span>订单列表</span></a></li>
                <li><a href="javascript:;"><span>打个酱油</span></a></li>
                <li><a href="javascript:;"><span>也打酱油</span></a></li>
            </ul>
        </li>
        <li class="nav-item">
            <a href="javascript:;"><i class="my-icon nav-icon icon_3"></i><span>库存管理</span><i class="my-icon nav-more"></i></a>
            <ul>
                <li><a href="javascript:;"><span>订单列表</span></a></li>
                <li><a href="javascript:;"><span>打个酱油</span></a></li>
                <li><a href="javascript:;"><span>也打酱油</span></a></li>
            </ul>
        </li>
        <li class="nav-item">
            <a href="javascript:;"><i class="my-icon nav-icon icon_3"></i><span>员工管理</span><i class="my-icon nav-more"></i></a>
            <ul>
                <li><a href="javascript:;"><span>订单列表</span></a></li>
                <li><a href="javascript:;"><span>打个酱油</span></a></li>
                <li><a href="javascript:;"><span>也打酱油</span></a></li>
            </ul>
        </li>
    </ul>
</div>

<div  id="main">
    <!--页面head-->
    <div id="head_1">
        
        <div class="dropdown" style="background: rgba(138,60,63,0.8);margin-left: 1120px;">
  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
    陈伟
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
    <div >
        <a href="#" style="color: green;font-size: 36px;font-family: 隶书">首&nbsp;页</a><span style="font-family: 隶书;font-size: 20px">//老干爹火锅，想到不到的刺激！</span>
                <!-- <span>&gt;</span> <a href="#">chinese</a>
                <span>&gt;</span> fsf -->
            </div>
    
</div>

</body>


 <script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/nav.js"></script>
<script type="text/javascript"  src="js/index.js"></script>
</html>
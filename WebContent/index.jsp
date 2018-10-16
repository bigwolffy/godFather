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
* {
	padding: 0;
	margin: 0;
}

body {
	position: absolute;
	width: 100%;
	height: 100%;
	min-width: 1500px;
	background-image: url(images/login_bg.jpg);
}

#main {
	height: 100%;
	width: 85%;
	position: absolute;
	top: 0;
	right: 0;
	border: 0px;
}
</style>
<body>
	<div class="nav">
		<div class="nav-top">
			<div id="mini"
				style="border-bottom: 1px solid rgba(255, 255, 255, 0.1)">
				<img src="images/mini.png" id="menu"><span
					style="color: #abb1b7; font-size: 20px;">老干爹火锅</span>
			</div>
		</div>
		<ul>
			<li class="nav-item"><a href="main.jsp" target="iframe"><i
					class="my-icon nav-icon icon_1"></i><span>首页</span></a></li>
			<li class="nav-item"><a href="check.jsp" target="iframe"><i
					class="my-icon nav-icon icon_2"></i><span onclick="jiesuan()">买单结算</span></a></li>
			<li class="nav-item"><a href="serviceHelp.jsp" target="iframe"><i
					class="my-icon nav-icon icon_3"></i><span onclick="canzhuo()">前台服务</span></a></li>
			<li class="nav-item"><a href="javascript:;"><i
					class="my-icon nav-icon icon_3"></i><span>菜品管理</span><i
					class="my-icon nav-more"></i></a>
				<ul>
					<li><a href="menuList.jsp" target="iframe"><span  onclick="caiguanli()">菜品列表</span></a></li>
					<li><a href="menuAdd.html" target="iframe"><span>添加菜品</span></a></li>
				</ul></li>
			<li class="nav-item"><a href="javascript:;"><i
					class="my-icon nav-icon icon_3"></i><span>会员管理</span><i
					class="my-icon nav-more"></i></a>
				<ul>
					<li><a href="vipList.html" target="iframe"><span>会员列表</span></a></li>
					<li><a href="vipAdd.html" target="iframe"><span>添加会员</span></a></li>
				</ul></li>
			<li class="nav-item"><a href="javascript:;"><i
					class="my-icon nav-icon icon_3"></i><span>财务管理</span><i
					class="my-icon nav-more"></i></a>
				<ul>
					<li><a href="accoutList.html" target="iframe"><span>订单列表</span></a></li>
					<li><a href="accoutDay.html" target="iframe"><span>日结算</span></a></li>
					<li><a href="accoutAll.html" target="iframe"><span>总结算</span></a></li>
				</ul></li>
			<li class="nav-item"><a href="javascript:;"><i
					class="my-icon nav-icon icon_3"></i><span>库存管理</span><i
					class="my-icon nav-more"></i></a>
				<ul>
					<li><a href="stockinput.html" target="iframe"><span>在线订货</span></a></li>
					<li><a href="stockout.html" target="iframe"><span>导入入库单</span></a></li>
				</ul></li>
			<li class="nav-item"><a href="javascript:;"><i
					class="my-icon nav-icon icon_3"></i><span>员工管理</span><i
					class="my-icon nav-more"></i></a>
				<ul>
					<li><a href="employList.html" target="iframe"><span>员工列表</span></a></li>
					<li><a href="employAdd.html" target="iframe"><span>添加员工</span></a></li>
					<li><a href="employSalary.html" target="iframe"><span>发放薪资</span></a></li>
				</ul></li>
		</ul>
	</div>


	<div>
		<!--页面head-->
		<iframe src="main.jsp" name="iframe" scrolling="no" id="main"></iframe>

	</div>

</body>
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/nav.js"></script>

<script type="text/javascript">
  function jiesuan(){
		$.ajax({
			   type: "post",
			   url: "userorder/selectAll.god",
			   async:false,
			   success: function(data){

				},
				error:function(){
					alert("出错啦");
				}
		});
		

  }
  
  
  function canzhuo(){
		$.ajax({
			   type: "post",
			   url: "user/getAllTableInfo.god",
			   async:false,

		});
		

}
  
  
  function caiguanli(){
		$.ajax({
			   type: "post",
			   url: "user/getAllDish.god",
			   async:false,

		});
		

}
  
</script>

</html>
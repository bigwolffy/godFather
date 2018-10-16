<%@ page language="java" contentType="text/html; charset=UTF-8"	 pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<title>首页</title>
	<meta charset="utf-8">
</head>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link href="css/iconfont.css" rel="stylesheet"> 
    <link href="css/nav.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/normalize.css">
<link rel="stylesheet" type="text/css" href="css/default.css">
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
        background: url(images/4.jpg);
        background-size: cover;
    }
    #head_1{
        opacity: 0.8;
        width: 100%;
        height: 58px;
        background-color: rgba(138,60,63,0.8);
        background: url(images/3.jpg);
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
                
    </div>
<div>
    <div id="head_2" style="background: #DB7093;">
      <div style="float: left; margin-top: 20px;margin-left: 5px;"><span class="glyphicon glyphicon-cutlery" aria-hidden="true" style="color: white;font-size: 80px;"></span>
        <div style="float: right;margin-left: 10px;margin-top: 10px;color: white;">就餐已有
            <div style="font-size: 30px">5</div>
            
        </div>
        </div>
    <div class="progress" style="width: 240px;margin-left: 5px;">
    <div class="progress-bar progress-bar-success" style="width: 35%">
    <span class="sr-only">35% Complete (success)</span>
    </div>
    <div class="progress-bar progress-bar-warning progress-bar-striped" style="width: 20%">
        <span class="sr-only">20% Complete (warning)</span>
    </div>
    <div class="progress-bar progress-bar-danger" style="width: 10%">
     <span class="sr-only">10% Complete (danger)</span>
    </div>
    </div>
      
      
    </div>
    <div id="head_2" style="background: #6495ED;">
        <div style="float: left; margin-top: 20px;margin-left: 5px;"><span class="glyphicon glyphicon-glass" aria-hidden="true" style="color: white;font-size: 80px;"></span>
        <div style="float: right;margin-left: 10px;margin-top: 10px;color: white;">今日生日
            <div style="font-size: 30px">1</div>
            
        </div>
        </div>
    <div class="progress" style="width: 240px;margin-left: 5px;">
 <div class="progress-bar progress-bar-info progress-bar-striped" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
    <span class="sr-only">20% Complete</span>
  </div>
</div>
    </div>
    <div id="head_2" style="background:     #2E8B57">
        <div style="float: left; margin-top: 20px;margin-left: 5px;"><span class="glyphicon glyphicon-usd" aria-hidden="true" style="color: white;font-size: 80px;"></span>
        <div style="float: right;margin-left: 10px;margin-top: 10px;color: white;">今日收益
            <div style="font-size: 30px">1000</div>
            
        </div>
        </div>
    <div class="progress" style="width: 240px;margin-left: 5px;">
    <div class="progress-bar progress-bar-warning progress-bar-striped" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
    <span class="sr-only">60% Complete (warning)</span>
  </div>
    </div></div>
    <div id="head_2" style="background: #556B2F">
    <div style="float: left; margin-top: 20px;margin-left: 5px;"><span class="glyphicon glyphicon-user" aria-hidden="true" style="color: white;font-size: 80px;"></span>
        <div style="float: right;margin-left: 10px;margin-top: 10px;color: white;">员工人数
            <div style="font-size: 30px">33</div>
            
        </div>
        </div>
    <div class="progress" style="width: 240px;margin-left: 5px;">
    <div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
    <span class="sr-only">40% Complete (success)</span>
  </div>
    </div>
    </div>
    </div>

    <div>
    <div style="width: 800px;height: 350px;margin-left: 60px;margin-top: 30px;float: left;">
        <canvas id="canvas" height="300" width="638" style="width: 638px; height:250px;background-image: url(images/2.jpg);"></canvas>
       <script type="text/javascript">
           
    var randomScalingFactor = function(){ return Math.round(Math.random()*100)};

    var barChartData = {
        labels : ["January","February","March","April","May","June","July"],
        datasets : [
            {
                fillColor : "grey",
                strokeColor : "rgba(220,220,220,0.8)",
                highlightFill: "rgba(220,220,220,0.75)",
                highlightStroke: "rgba(220,220,220,1)",
                data : [randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor()]
            },
            {
                fillColor : "rgba(151,187,205,0.5)",
                strokeColor : "rgba(151,187,205,0.8)",
                highlightFill : "rgba(151,187,205,0.75)",
                highlightStroke : "rgba(151,187,205,1)",
                data : [randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor()]
            }
        ]

    }
    window.onload = function(){
        var ctx = document.getElementById("canvas").getContext("2d");
        window.myBar = new Chart(ctx).Bar(barChartData, {
            responsive : true
        });
    }

    
       </script>

    </div>
    <div style=" border-radius: 5px;color: white; background-image: url(images/5.jpg); width: 350px;height: 325px;margin-left: 50px;margin-top: 30px;float: left;">优秀员工展示
       <img src="images/xc.jpg" style="width: 280px;height: 300px;margin-left: 35px"></div>
    </div>
</div>

</body>
 <script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/nav.js"></script>
	<script src="js/Chart.js"></script>
</html>
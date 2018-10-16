<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<title>买单结算</title>
	<meta charset="utf-8">
</head>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link href="css/iconfont.css" rel="stylesheet">
    <link href="css/nav.css" rel="stylesheet">
    <span id="spanFirstt">第一页</span> <span id="spanPret">上一页</span> <span id="spanNextt">下一页</span> <span id="spanLastt">最后一页</span> 第<span id="spanPageNumt"></span>页/共<span id="spanTotalPaget"></span>页                  

	<style type="text/css">
    *{
        padding: 0;
        margin: 0;
    }
	body{
		position: absolute;
		width: 100%;
		height: 100%;
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
    #tab{
        height: 500px;
        width: 1000px;
        color: black;
        font-size: 16px;
        font-family: 宋体;
        border-width: 1px;
        float: left;
        margin-left: 10px;
    }
    .td{
        width: 180px;
        height: 80px;
    }
    .tr{
         height: 80px;
         width: 180px;
    }
    .anniu{
        background-image: url(images/4.jpg);
        border-width: 1px;
        font-family: 楷体;
        border-radius: 5px;
        font-size: 20px;
    }
</style>

<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>


<body>
<div  id="main">
    <!--页面head-->
    <div id="head_1">
        <div id="feather" style="margin-left: 10px;margin-top:30px;float: left;height: 25px;width: 350px;">
     <iframe name="weather_inc" src="http://i.tianqi.com/index.php?c=code&id=1" width="330" height="35" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"></iframe>
            </div>
        <div class="dropdown" style="margin-left: 1120px;">
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
    <br>
    <p style="font-size: 30px;color: #bb1a1a;font-family: 楷体">&nbsp买单结算</p>
    <p>&nbsp&nbsp首页>买单结算</p>
</div>
   <div id="tab">
   
        <table border="1" style="background-image: url(images/2.jpg);text-align: center;">
            
            <tr class="tr"><td class="td">id</td><td class="td">时间</td><td class="td">餐桌</td><td class="td">金额</td><td class="td">是否付款</td><td class="td">操作</td></tr>
            <tbody id="tablelsw">

					<c:forEach items="${maidan}" var="u">
						<tr>
							<td>${u.id}</td>
							<td>${u.time}</td>
							<td>${u.dintable}</td>
							<td>${u.price}</td>
							<td>${u.ispay}</td>
							<td><input type="button" value="结算"  onclick="jiesuan(this)">
							    <input type="button" value="查看详情"></td>
						</tr>
					</c:forEach>



					
           </tbody>
        </table>
    <span id="spanFirst">第一页</span> 
    <span id="spanPre">上一页</span> 
    <span id="spanNext">下一页</span> 
    <span id="spanLast">最后一页</span> 
    第<span id="spanPageNum"></span>页/共<span id="spanTotalPage"></span>页 

   </div>

</div>

</body>


 <script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/nav.js"></script>
</html>
<script>  
// JavaScript Document By lishewen   
var theTable = document.getElementById("tablelsw");   
var totalPage = document.getElementById("spanTotalPage");   
var pageNum = document.getElementById("spanPageNum");   
  
var spanPre = document.getElementById("spanPre");   
var spanNext = document.getElementById("spanNext");   
var spanFirst = document.getElementById("spanFirst");   
var spanLast = document.getElementById("spanLast");   
  
var totalPaget = document.getElementById("spanTotalPaget");   
var pageNumt = document.getElementById("spanPageNumt");   
  
var spanPret = document.getElementById("spanPret");   
var spanNextt = document.getElementById("spanNextt");   
var spanFirstt = document.getElementById("spanFirstt");   
var spanLastt = document.getElementById("spanLastt");   
  
var numberRowsInTable = theTable.rows.length;   
var pageSize = 5;   
var page = 1;   
  
//下一页   
function next(){   
  
    hideTable();   
       
    currentRow = pageSize * page;   
    maxRow = currentRow + pageSize;   
    if ( maxRow > numberRowsInTable ) maxRow = numberRowsInTable;   
    for ( var i = currentRow; i< maxRow; i++ ){   
        theTable.rows[i].style.display = '';   
    }   
    page++;   
       
    if ( maxRow == numberRowsInTable ) { nextText(); lastText(); }   
    showPage();   
    preLink();   
    firstLink();   
}   
  
//上一页   
function pre(){   
  
    hideTable();   
       
    page--;   
       
    currentRow = pageSize * page;   
    maxRow = currentRow - pageSize;   
    if ( currentRow > numberRowsInTable ) currentRow = numberRowsInTable;   
    for ( var i = maxRow; i< currentRow; i++ ){   
        theTable.rows[i].style.display = '';   
    }   
       
       
    if ( maxRow == 0 ){ preText(); firstText(); }   
    showPage();   
    nextLink();   
    lastLink();   
}   
  
//第一页   
function first(){   
    hideTable();   
    page = 1;   
    for ( var i = 0; i<pageSize; i++ ){   
        theTable.rows[i].style.display = '';   
    }   
    showPage();   
       
    preText();   
    nextLink();   
    lastLink();   
}   
  
//最后一页   
function last(){   
    hideTable();   
    page = pageCount();   
    currentRow = pageSize * (page - 1);   
    for ( var i = currentRow; i<numberRowsInTable; i++ ){   
        theTable.rows[i].style.display = '';   
    }   
    showPage();   
       
    preLink();   
    nextText();   
    firstLink();   
}   
  
function hideTable(){   
    for ( var i = 0; i<numberRowsInTable; i++ ){   
        theTable.rows[i].style.display = 'none';   
    }   
}   
  
function showPage(){   
    pageNum.innerHTML = page;   
    pageNumt.innerHTML = page;   
}   
  
//总共页数   
function pageCount(){   
    var count = 0;   
    if ( numberRowsInTable%pageSize != 0 ) count = 1;    
    return parseInt(numberRowsInTable/pageSize) + count;   
}   
  
//显示链接   
function preLink(){ spanPre.innerHTML = "<a href='javascript:pre();'>上一页</a>"; spanPret.innerHTML = "<a href='javascript:pre();'>上一页</a>";}   
function preText(){ spanPre.innerHTML = "上一页"; spanPret.innerHTML = "上一页"; }   
  
function nextLink(){ spanNext.innerHTML = "<a href='javascript:next();'>下一页</a>"; spanNextt.innerHTML = "<a href='javascript:next();'>下一页</a>";}   
function nextText(){ spanNext.innerHTML = "下一页"; spanNextt.innerHTML = "下一页";}   
  
function firstLink(){ spanFirst.innerHTML = "<a href='javascript:first();'>第一页</a>"; spanFirstt.innerHTML = "<a href='javascript:first();'>第一页</a>";}   
function firstText(){ spanFirst.innerHTML = "第一页"; spanFirstt.innerHTML = "第一页";}   
  
function lastLink(){ spanLast.innerHTML = "<a href='javascript:last();'>最后一页</a>"; spanLastt.innerHTML = "<a href='javascript:last();'>最后一页</a>";}   
function lastText(){ spanLast.innerHTML = "最后一页"; spanLastt.innerHTML = "最后一页";}   
  
//隐藏表格   
function hide(){   
    for ( var i = pageSize; i<numberRowsInTable; i++ ){   
        theTable.rows[i].style.display = 'none';   
    }   
       
    totalPage.innerHTML = pageCount();   
    pageNum.innerHTML = '1';   
       
    totalPaget.innerHTML = pageCount();   
    pageNumt.innerHTML = '1';   
       
    nextLink();   
    lastLink();   
}   
  
hide();  












  function jiesuan(index){
	 var id=index.parentNode.parentNode.firstElementChild.innerHTML;

	  $.ajax({
		   type: "post",
		   url: "user//billById.god",
		   async:false,
		   data:"id="+id,
		   success: function(data){

			},
			error:function(){
				alert("出错啦");
			}
	});

	  index.parentNode.previousElementSibling.innerHTML="已付款";
	   
  }







</script> 
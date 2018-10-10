$("#login").click(function(){
	var jsonData={"name":$("#userName").val(),
			      "password":$("#userPass").val()
			      };
	console.log(JSON.stringify(jsonData));
	$.ajax({
		   type: "post",
		   url: "user/login.god",
		   contentType:"application/json;charset=utf-8",
		   data: JSON.stringify(jsonData),
		   success: function(data){
			   
			  if(data.msg==true){
					
					window.location.href="index.html";
					
				}else{
					alert("账号密码错误");
				}
			},
			error:function(){
				alert("出错啦");
			}
	});
	});
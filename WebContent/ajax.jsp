<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="js/jquery-2.1.1.js"></script>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<!-- <script type="text/javascript">
  function register(){
	  var mobile = document.getElementById("mobile").value;
	  XmlHttpRequest = new XMLHttpRequest();
	  XmlHttpRequest.onreadystatechange=callBack;
	  XmlHttpRequest.open("post","ajaxServlet",true);
	  XmlHttpRequest.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
	  XmlHttpRequest.send("mob="+mobile);  
  }
  function callBack(){
	  if(XmlHttpRequest.readyState==4 && XmlHttpRequest.status==200){
		  var date=XmlHttpRequest.responseText;
		  if(date=="true"){
			  alert("手机号重复,请重新输入");}
		  else {alert("注册成功！");
		  }
	  }
	  
  }
 </script> -->
<title>Insert title here</title>
</head>
<body>
     手机:<input  id="mobile"/>
  <input type="button" onclick="register()" value="注册"/>
  <span id="result"></span>
<script type="text/javascript">
function register(){
	var mobile = $("#mobile").val();
/* $.ajax({
	url:"ajaxServlet",
	type:"post",
	data:"mob="+mobile,
	success:function(result,testStatus){
		if(result=="true"){
			alert("手机号重复 ,请重新输入");
		}else{
			alert("注册成功!");
		}
	},
	error:function(xhr,errorMessage,e){
		alert("系统出错！");
	},
	}); */
	$.getJSON(
		"ajaxServlet",
		 {"mob":mobile},
		 function(result){
			 if(result.mob=="true"){
					alert("手机号重复 ,请重新输入");
				}else{
					alert("注册成功!");
				}
			
		 }
	);
/* $("#result").load(
		"ajaxServlet",
		 "mob="+mobile
	 );
 */
}
</script>
</body>
</html>
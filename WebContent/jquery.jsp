<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/jquery-ui.css">
<script src="js/jquery-2.1.1.js"></script>
<script src="js/jquery-ui.js"></script>
<script src="js/jquery.validate.js"></script>
<style>
.error{
 color:red;
}
</style>
</head>
<body>
<div id="accord">
<h3>这是个标题</h3>
<h4>这也是个标题</h4>
<div>这是个div</div>
<p>这是个p</p>
<form id="myform" action="#">
 <input type="text" name="pname" required minlength="6">
 <input type="submit" value="提交">
</form>
</div>
<div><input id="autocomplete" type="text"></div>
<p id="pid">楼下有个隐藏标签</p>
<p id="pd" style="display:none">楼下有s个隐藏标签</p>
<div id="dd" style="width:300px;height:300px;background-color:red"></div>
<script> 
	 $("#accord").accordion();
	   var arr = ['admin','address'];
	   $("#autocomplete").autocomplete({   
		      source : arr
		 });
$("#pid").hover(function(){
$("#dd").css("background-color","black");
$("#pd").css({"display":"inline",
	'background-color':'red'});
})
$("#pid").mouseleave(function(){
	$("#pd").css("display","none"),
	$("#dd").css("display","none")
})

</script>

</body>
</html>
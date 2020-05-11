<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-2.1.1.js"></script>
</head>
<body>
<button>求你了</button>
<script>
 $(function(){
	 $("button").click(function(){
		$.ajax({
			url:"response.jsp",
			type:"post",
			data:{"name":"阿萨斯","age":20,"school":"桂林理工高中"},
		    success:function(data){
		    	$("body").html(data);
		    }
		});
	 })
 })
</script>
</body>
</html>
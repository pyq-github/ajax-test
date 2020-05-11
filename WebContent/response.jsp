<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title> 
<script src="js/jquery-2.1.1.js"></script>
</head>
<body>
<p id="ajaxp">i can hear you</p>
<p >i can fly</p>

<%
	String str = request.getParameter("name");
    int age = Integer.parseInt(request.getParameter("age"));
    request.setAttribute("str", "老师的");
    out.print(str+age);
%>
<p>${requestScope.str}</p> 
<p>${requestScope.name}</p> 
<script>	
</script>
</body> 
</html>
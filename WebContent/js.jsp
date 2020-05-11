<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src = "js/jquery-2.1.1.js"></script>
<style>
	span{
	display:none;
	}
</style>
</head>
<body>
  <p id="p">点我笑死</p>
  <p class="test">点我笑死le</p>
  <p>点我笑死a</p>
  <input>
  <span>clickme</span>
  <script>
  $(function(){
	  $(window).keypress(function(even){
		    //event.which是获取ASCII码，前面的函数是将ASCII码转换成字符，空格键和Enter键输出均为空白。
		    console.log(String.fromCharCode(even.which));
		    //从event对象中key属性获取字符，但是Enter键的key值为"Enter"，空白键还是空白" "。
		    console.log(even.key);
		});
	   $("input").focus(function(){
		   setInterval(function(){$("span").css("display","inline").fadeOut(2000);},2000);
	   });  
	$(".test").dblclick(function(){alert("xxxxxxx");})   
   });
  </script>
  <p id = "demo">这是被隐藏和显示的标签</p>
  <button class="button">点我把它弄回来</button>
   <p id = "dem">标签</p>
  <script>
  	$(function(){
  		$("#demo").click(function(){
  			$("#demo").hide();
  		});
  		$(".button").click(function(){
  			$("#demo").toggle(1000,e());
  		});
  		function e(){
  		 document.getElementById("dem").innerHTML = Date();	
  		}
  	});
  
  </script>
  <button id="bt">点我有惊喜</button>
  <div id="div1" style="width:100px;height:100px;background-color:red;display:none"></div>
  <div id="div2" style="width:100px;height:100px;background-color:blue;display:none"></div>
  <div id="div3" style="width:100px;height:100px;background-color:black;display:none"></div>
  <script>
     $(function(){
    	 $("#bt").click(function(){
    		 $("#div1").fadeToggle(1000);
    		 $("#div2").fadeToggle(2000);
    		 $("#div3").fadeToggle(3000);
    	 });
    	 
     });
  </script>
  <div id="slide2"style="width:800px;height:100px;background-color:blue">给你康点好康的</div>
  <div id="slide" style="width:800px;height:20px;background-color:yellow">点我下滑</div>
  <div id="slide1"style="width:800px;height:100px;background-color:blue;display:none">给你康点好康的
  <p id = "sp"></p>
    <button id="stop">stop</button>
  </div>
  <script>
     $(function(){
    	 $("#slide").click(function(){
    	
    	 $("#slide1").slideDown(2000);	 
    	 $("#slide2").slideUp(5000);	 
    	 });
 
     });
  </script>

  <div id="acg"style="width:100px;height:100px;background-color:blue"></div>
  
  <script>
  		$(function(){
  			$("#acg").dblclick(function(){
  				setInterval(function(){
  					var div = $("#acg");
   	  				div.animate({opacity:'0.5',width:'50px',height:'50px'},1000);
   	  				div.animate({bottom:'+=500px',opacity:'1',width:'10px',height:'10px'},1000);
   	  				div.animate({right:'-=500px',opacity:'0.5',width:'200px',height:'200px'},1000);
   	  				div.animate({bottom:'-=500px',opacity:'1',width:'100px',height:'100px'},1000);
  	  				
  				},1000);
  				
  			})
  			 $("#stop").click(function(){
 				$("#slide2").stop();
 			});
  		});
  </script>
</body>
</html>
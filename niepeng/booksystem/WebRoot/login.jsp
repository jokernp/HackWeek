<%@ page language="java" import="java.util.*" %>
<%@ page contentType="text/html;charset=GBK" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<style type="text/css">
	#main{
	width:550px;
	height:306px;
	margin-top:90px;
	margin-left:120px;
	
	}
	#pic{
	width:600px;
	height:380px;
	margin-top:50px;
	
	background:url(images/13.jpg);
	
	}
	#image{
	width:310px;
	height:300px;
	position: fixed;
	top:230px;
	left:700px;
	
	background:url(images/denglu.jpg);
	}
	
	 #login{
  	width:280px;
  	height:180px;
  	
  	}
  	#login ul{
	margin: 0px; 
	padding: 0px; 
	margin-left:20px;
	margin-top:30px;
	}
	#login ul li{
	list-style:none;
	line-height:50px;
	font-size:16px;
	background:none;
	}
	#login ul li.a{
	font-size:30px;
	}
	</style>

  </head>
  
  <body>
	<div style="text-align: center;">
	<font size="36"> 
	ͼ�����ϵͳ 
	</font>
	</div>
	<div id="main">
	<div id="pic"></div>
	<div id="image">
	 <div id="login">
<ul>
<li class="a">�û���¼</li>
  <form action="helpLogin" method="post" style="background:none;">
  <li>�� �� ����<input type="text" name="username" style="height:34px;background:none;"> </li>
  <li>�û����룺<input type="password" name="psd" style="height:34px;background:none;"></li>
  <li><input type="submit" name="tijiao" value="��   ¼" style="width:150px;height:40px;">
<a href="zhuce.jsp" target="content"> ���û�ע��</a>
  </li>
  <center><a href="helpTiaozhuan">�ο͵�¼</a></center>
  </form>
  </ul>
</div>
	</div>
	</div>
	
   
  </body>
</html>

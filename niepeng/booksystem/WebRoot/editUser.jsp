<%@ page language="java" import="java.util.*"%>
<%@ page contentType="text/html;charset=GBK" %>
<% request.setCharacterEncoding("GBK") ;%>
<jsp:useBean id="user" class="bean.Users" scope="request" />
<jsp:useBean id="borrow" class="bean.Borrow" scope="request"  />
<jsp:useBean id="book" class="bean.Books" scope="request"  />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>�޸��û���Ϣ</title>
<style type="text/css">
#main{
width:1060px;
height:460px;
background:url(images/aa.png);
}
.input {  
    color: #003399; 
    font-family: "����"; 
    font-style: normal; 	
    border-color: #93BEE2 #93BEE2 #93BEE2 #93BEE2 ; 
    border: 1px #93BEE2 solid; 
    maxlength: 15;

.title{
	background-color:#B1C8F5;
}
.button {
    font-family: "Tahoma", "����";
    font-size: 9pt; color: #003399;
    border: 1px #003399 solid;
    color:#006699;
    border-bottom: #93bee2 1px solid; 
    border-left: #93bee2 1px solid; 
    border-right: #93bee2 1px solid; 
    border-top: #93bee2 1px solid;
    background-color: #e8f4ff;
    cursor: hand;
    font-style: normal ;
}
a {
  background-color: transparent;
  color:#000;  
  font-size: 18px;
  font-weight:bolder;  
  padding-left: 15px;
  text-decoration: none;
}

    
</style>
</head>
<body>
<div id="main">
<table cellSpacing=0 cellPadding=0 width=1024 align="center" bgColor=#ffffff background=pic/top1bg.jpg border=0>
				<tbody>
					<tr>
						<td width=1024>
							&nbsp;
						</td>
					</tr>
					</tbody>
			</table>
<table width="150" valign="center" align="center"><strong><font size="4" color="blue"><br>�޸��û���Ϣ</font></strong></table><br>
	<form method="post" action="helpEditUser">
<table width="1024" height="48" border="1" cellpadding="0" cellspacing="0" align="center">
 <tr>
		<td height="45" align="center">��&nbsp;��&nbsp;��:</td>
		<td width="400" align="center">�벻Ҫ�����û�����<input type="text" name="username" class="input" value="<%=user.getUsername() %>">
		</td>
	</tr>
	<tr>
		<td height="45" align="center">��&nbsp;&nbsp;&nbsp;&nbsp;��:</td>
		<td width="400" align="center">
		<input type="text" name="password" class="input" value="<%=user.getPassword()%>" ></td>
	</tr>
	<tr>
		<td height="45" align="center">��ʵ����:</td>
		<td width="400" align="center">
		<input type="text" name="name" class="input" value="<%=user.getName()%>" ></td>
	</tr>
	<tr>
		<td height="45" align="center">��&nbsp;&nbsp;&nbsp;&nbsp;��:</td>
		<td width="400" align="center">
		<input type="text" name="tel" class="input" value="<%=user.getTel()%>"></td>
	</tr>	
	<tr>
		<td height="45" align="center">Ȩ&nbsp;&nbsp;&nbsp;&nbsp;��:</td>
		<td width="400" align="center"><%=user.getLevel()==0 ? "��ͨ�û�" : "����Ա" %></td>
	</tr>
	<tr>
		<td height="45" align="center">�����¼:</td>
		<td width="400" align="center"><p>����ͼ�飺<%=book.getName() %></p>
		<p>����ʱ��:<%= borrow.getTime()%></p>
		</td>
	</tr>
	</table>
	<p></p>
	<center>
	<input type="submit" value="��&nbsp;&nbsp;��" class="button"/>
<input type="reset" value="��&nbsp;&nbsp;��" class="button"/>
</center>
	</form>
	<table cellSpacing=0 cellPadding=0 width=1024 align="center" bgColor=#ffffff background=pic/top1bg.jpg border=0>
				<tbody>
					<tr>
						<td width=1024>
							&nbsp;
						</td>
					</tr>
					</tbody>
			</table>		
	</div>
</body>
</html>
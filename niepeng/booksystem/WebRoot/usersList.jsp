<%@ page language="java" import="java.util.*"%>
<%@ page contentType="text/html;charset=GBK" %>
<%@page import="help.helpControlUsers"%>
<%@ page import="database.DatabaseConn" %>
<%@ page import="bean.Users" %>
<%@ page import="mybean.data.*" %>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.util.ArrayList"%>
<% request.setCharacterEncoding("GBK") ;%>
<html>
  <head>
    <title>�û�����</title>
	<link rel="stylesheet" type="text/css" href="css/style.css"/>
  </head>
  <%Login login=(Login)session.getAttribute("login");
  if(login.getUsername()!=null&&login.getLevel()!=0){
	helpControlUsers us = new helpControlUsers(); 
	Users users = new Users();
%>  
<body><table cellSpacing=0 cellPadding=0 width=1024 align="center" bgColor=#ffffff background=pic/top1bg.jpg border=0>
				<tbody>
					<tr>
						<td width=1024>
							&nbsp;
						</td>
					</tr>
					</tbody>
			</table>
<table width="150" valign="center" align="center"><strong><font size="4" color="blue"><br>�û��б�</font></strong></table><br>
			<form method="post" action="helpControlUser">
<form method="post" action="usersList.jsp">			
<table width="1024" height="48" border="1" cellpadding="0" cellspacing="0" align="center">
<tr class="title">
    <td scope="col" align="center" width="160" height="35">��&nbsp;��&nbsp;��</td>
    <td scope="col" align="center" width="160" height="35">��&nbsp;&nbsp;&nbsp;&nbsp;��</td>
    <td scope="col" align="center" width="160" height="35">��ʵ����</td>
     <td scope="col" align="center" width="160" height="35">��ϵ�绰</td>
    <td scope="col" align="center" width="160" height="35">��&nbsp;��&nbsp;Ա</td>
    <td scope="col" align="center" width="160" height="35">�޸�Ȩ��</td>
    <td scope="col" align="center" width="160" height="35">�༭�û�</td>
    <td scope="col" align="center" width="160" height="35">ɾ&nbsp;&nbsp;��</td>
  </tr>
   <%  	  	
  	helpControlUsers hcu =new helpControlUsers();
  	ArrayList<String> arr=hcu.getUsersArrayList();
	int currPage = 1;
	if (request.getParameter("page") != null) {
    	currPage = Integer.parseInt(request.getParameter("page"));
	}
   	int totalRow = arr.size();
   	int pageSize = 7;
   	int totalPage = (totalRow % pageSize) == 0 ? totalRow / pageSize:(totalRow / pageSize) + 1;
	if (currPage == 0) {
    	currPage = 1;
   	}
   	if (currPage > totalPage) {
    	currPage = totalPage;
   	}
	int start = (currPage - 1) * pageSize;
   	int end = currPage * pageSize - 1;
   	if (currPage == totalPage) {
    	end = totalRow - 1;
   	}
    if(totalRow == 0) {
    	start = 1;
    	end = 0;
   	}
	for (int i = start; i <= end; i++) {
  %>
  <tr>
		<td align="center" height="35"><%=hcu.getAllUsers(arr.get(i)).getUsername() %></td>
		<td align="center" height="35"><%=hcu.getAllUsers(arr.get(i)).getPassword() %></td>
		<td align="center" height="35"><%=hcu.getAllUsers(arr.get(i)).getName() %></td>
		<td align="center" height="35"><%=hcu.getAllUsers(arr.get(i)).getTel() %></td>
		<td align="center" height="35"><%=hcu.getAllUsers(arr.get(i)).getLevel() == 0 ? "��" : "<font color='red'>��</font>" %></td>
		<td align="center" height="35"><a href ="helpControlUser?username=<%=hcu.getAllUsers(arr.get(i)).getUsername()%>">�޸�</a></td>
		<td align="center" height="35"><a href ="helpEditUser?username=<%=hcu.getAllUsers(arr.get(i)).getUsername()%>">�༭</a></td>
		<td align="center" height="35"><input type="checkbox" name="checkbox" value="<%=hcu.getAllUsers(arr.get(i)).getUsername()%>"></td>
	</tr>
	
	<%
	  }
	%>
</table>
<br/>
<center><input type="submit" class="button" name="Submit" value="ɾ��ѡ��"></center>
<br/>	
	<p align="center">��&nbsp;<%= totalPage%>&nbsp;ҳ ����&nbsp;&nbsp;<%= currPage %>&nbsp;&nbsp;ҳ�� ��
	<a href="usersList.jsp?page=1">��ҳ</a>
	<%	
		if (currPage <= 1) {
	   		currPage = 1;
	%>
		��һҳ 
	<% 
		} else {
	%>
		<a href="usersList.jsp?page=<%=currPage-1%>">��һҳ </a>
	<%
		}
	%>
	<%
		if (currPage >= totalPage) {
	 		currPage = totalPage;
	%>
		��һҳ 
	<% 
		}else{
	%>
		<a href="usersList.jsp?page=<%=currPage+1%>">��һҳ </a>
	<%
		}
	%>
	<a href="usersList.jsp?page=<%=totalPage %>">βҳ</a>
	</p>
	</form>
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
	<%}
	else{
   		%>
   		<script language="javascript">
  		alert("�������û���û��Ȩ�޲鿴��ҳ�棡"); 
  	</script> 
  <%} %>
  </body>
</html>

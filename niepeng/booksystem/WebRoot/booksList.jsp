<%@ page language="java" import="java.util.*"%>
<%@ page contentType="text/html;charset=GBK" %>
<%@ page import="help.helpControlBooks" %>
<%@ page import="database.DatabaseConn" %>
<%@ page import="bean.Books" %>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.util.ArrayList"%>
<% request.setCharacterEncoding("GBK") ;%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>ͼ�����</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
  </head>
    <% 	
  	helpControlBooks hcb = new helpControlBooks();
  	ArrayList<String> arr=hcb.getBooksId();	  	
  	Books books = new Books();	
  	String s[] = request.getParameterValues("checkbox");
  	if(s != null) {
  		for(int i = 0; i < s.length; i++){
  			hcb.deleteBook(s[i]);
  		}
  	}	 
  	%>
  <body>
  <table cellSpacing=0 cellPadding=0 width=1024 align="center" bgColor=#ffffff background=pic/top1bg.jpg border=0>
				<tbody>
					<tr>
						<td width=1024>
							&nbsp;
						</td>
					</tr>
					</tbody>
			</table>
<table width="150" valign="center" align="center"><strong><font size="4" color="blue"><br>ͼ���б�</font></strong></table>
			<form method="post" action="helpControlBook">
<form method="post" action="booksList.jsp">
<table width="1024" height="48" border="1" cellpadding="0" cellspacing="0" align="center">
  <tr class="title">
  	<td scope="col" align="center" width="160" height="35">���</td>
    <td scope="col" align="center" width="160" height="35">ͼ������</td>
    <td scope="col" align="center" width="160" height="35">����</td>
    <td scope="col" align="center" width="160" height="35">����</td>
    <td scope="col" align="center" width="160" height="35">������</td>
    <td scope="col" align="center" width="80" height="35">����</td>
    <td scope="col" align="center" width="160" height="35">����</td>
    <td scope="col" align="center" width="80" height="35">�ڹ�״̬</td>
    <td scope="col" align="center" width="80" height="35">�޸��ڹ�״̬</td>
    <td scope="col" align="center" width="80" height="35">�༭ͼ����Ϣ</td>    
    <td scope="col" align="center" width="80" height="35">ɾ��</td>
  </tr>
  <%     
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
		<td height="40" align="center"><%=hcb.getAllBooks(arr.get(i)).getId()%></td>
		<td align="center" height="35"><%=hcb.getAllBooks(arr.get(i)).getType()%></td>
		<td align="center" height="35"><a href=helpShowBook?id=<%=hcb.getAllBooks(arr.get(i)).getId() %>>
		<%=hcb.getAllBooks(arr.get(i)).getName()%></a></td>
		<td align="center" height="35"><%=hcb.getAllBooks(arr.get(i)).getAuthor()%></td>			
		<td align="center" height="35"><%=hcb.getAllBooks(arr.get(i)).getPress()%></td>
		<td align="center" height="35"><%=hcb.getAllBooks(arr.get(i)).getPrice()%></td>
		<td align="center" height="35"><%=hcb.getAllBooks(arr.get(i)).getNumber()%></td>		
		<td align="center" height="35"><%=hcb.getAllBooks(arr.get(i)).getState() == 0 ? "ȫ���" : "<font color='red'>���ڹ�</font>" %></td>
		<td align="center" height="35"><a href = "helpControlBook?id=<%=hcb.getAllBooks(arr.get(i)).getId()%>">�޸�</a></td>
		<td align="center" height="35"><a href = "helpEditBook?id=<%=hcb.getAllBooks(arr.get(i)).getId()%>">�༭</a></td>
		<td align="center" height="35"><input type="checkbox" name="checkbox" value="<%=hcb.getAllBooks(arr.get(i)).getId()%>"></td>
	</tr>
	<%
	  }
	%>
	</table>
	<br/>
		<center><input type="submit" class="button" name="Submit" value="ɾ��ѡ��"></center>
	<p align="center">��&nbsp;<%= totalPage%>&nbsp;ҳ ����&nbsp;&nbsp;<%= currPage %>&nbsp;&nbsp;ҳ�� ��
	<a href="booksList.jsp?page=1">��ҳ</a>
	<%	
		if (currPage <= 1) {
	   		currPage = 1;
	%>
		��һҳ 
	<% 
		} else {
	%>
		<a href="booksList.jsp?page=<%=currPage - 1%>">��һҳ </a>
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
		<a href="booksList.jsp?page=<%=currPage + 1%>">��һҳ </a>
	<%
		}
	%>
	<a href="booksList.jsp?page=<%=totalPage %>">βҳ</a>
	<br/>
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

  </body>
  
</html>

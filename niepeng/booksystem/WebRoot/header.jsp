<%@ page language="java" import="java.util.*" %>
<%@ page contentType="text/html;charset=GBK" %>
<%@page import="mybean.data.Login"  %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head><jsp:useBean id="login" class="mybean.data.Login" scope="session"/> 
  </head>
  
  <body>
   <font size="16" color="blue"> ͼ�����ϵͳ</font>
   <br/><jsp:getProperty property="backNews" name="login"/>
   <% if(login.getSuccess()==true){
    %><br/>��½��Ա���ƣ�<jsp:getProperty name="login" property="username"/>
    <% }
    else
    {
     %><br/>��½��Ա���ƣ�<jsp:getProperty property="username" name="login"/>
     <br/>��½��Ա���룺<jsp:getProperty property="psd" name="login"/>
     <% } %>
  </body>
</html>

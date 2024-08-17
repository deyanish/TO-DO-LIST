<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="list.*" %>
<%
	Connect c1=new Connect();
	String sub=request.getParameter("sub");
	c1.delRecords(sub);
	response.sendRedirect("index.jsp");
%>
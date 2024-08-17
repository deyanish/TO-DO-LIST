<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="list.Connect" %>
<%!
	Connect c1=new Connect();
%>
<%
	
	String sub=request.getParameter("subject");
	String desc=request.getParameter("description");
	int slno=Integer.parseInt(request.getParameter("slno"));
	boolean b=c1.updateRecord(sub, desc,slno);
	response.sendRedirect("index.jsp");
%>
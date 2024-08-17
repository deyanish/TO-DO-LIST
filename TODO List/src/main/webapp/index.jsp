<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="list.*" %>
    <%@ page import="java.util.ArrayList" %>
    
<%!
	Connect c1=new Connect();
%>
<%
	ArrayList<ToDo> arr=c1.getRecords();
%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<body>
	<div class="header">
	<h1>TO-DO-LIST</h1>
	</div>
	
	<div class="popup" id="popup">
		<div class="title">
		<h2>TO-DO-LIST</h2>
	</div>
	
	<form method="post" action="save.jsp" >
		<div class="field">	
			<input type="text" name="subject" placeholder="subject" required>
		</div>
		<div class="field">
			<input type="text" name="description" placeholder="description" required>
		</div>
		<div class="action-field">
			<input type="submit" value="Add ">
		</div>
		<div class="details">
		<table border="1" bordercolor="black"  width="100%" align="center" cellspacing="0" cellpadding="10">
	<tr>
	<th>SlNo</th>
	<th>Subject</th>
	<th>Description</th>
	<th>Icon</th>
	</tr>
	<%
		for(int i=0;i<arr.size();i++)
		{
			
			ToDo ob=(ToDo)arr.get(i);
	%>
		<tr>
		<td><%=(i+1) %></td>
		<td><%=ob.getSubject() %></td>
		<td><%=ob.getDescription() %></td>
		
		<td>
		<a href="edit.jsp?sub=<%=ob.getSubject()%>&desc=<%= ob.getDescription() %>&slno=<%= ob.getSlno() %>" class="edit"><i class="fa-solid fa-pen-to-square"></i></a>

		<a href="del.jsp?sub=<%=ob.getSubject()%>" class="del"><i class="fa-solid fa-trash"></i></a>
		
		</td>
		
		</tr>
	<%} %>
		
	</table>
	</div>
	</div>
		
	</form>
	
</body>
</html>
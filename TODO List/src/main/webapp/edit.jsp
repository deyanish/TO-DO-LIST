<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String sub=request.getParameter("sub");
	String desc=request.getParameter("desc");
	int slno=Integer.parseInt(request.getParameter("slno"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<body>

<div class="header">
	<h2>To<span> Do</span> Project</h2>
</div>

<div class="popup" id="popup">
		<div class="title">
		<h2>To-Do List</h2>
		</div>
	<form method="post" action="update.jsp">
	<input type="hidden" name="slno" value="<%=slno%>">
		<div class="field">
			<input type="text" name="subject" placeholder="Subject" value="<%=sub %>" required>
		</div>
		<div class="field">
			<input type="text" name="description" placeholder="Description" value="<%=desc %>" required>
		</div>
		<div class="action-field">
			<input type="submit" value="Update">
		</div>
	</form>
</div>
</body>
</html>
<%@page import="com.ssi.Student"%>
<%
		Student student=(Student)request.getAttribute("student");
%>
<html>
<body>
	<h3>Student-Details</h3>
	<hr>
		<table border="1">
		<tr>
		<td>RollNo</td><td><%=student.getRno() %></td>
		</tr>
		<tr>
		<td>Name</td><td><%=student.getName() %></td>
		</tr>
		<tr>
		<td>Mobile</td><td><%=student.getMobile() %></td>
		</tr>
		<tr>
		<td>Email</td><td><%=student.getEmail() %></td>
		</tr>
		</table>
	<hr>
	<a href="searchform">Search-More</a><br>
	<a href="index.jsp">Home</a>
</body>
</html>
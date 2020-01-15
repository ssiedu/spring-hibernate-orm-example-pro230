<%@page import="java.util.List,com.ssi.Student" %>

<%
	List<Student> students=(List<Student>)request.getAttribute("slist");
%>
<html>
<body>
	<h3>Student-List</h3>
	<hr>
	<table border="2">
	<tr>
		<th>RollNo</th><th>Name</th><th>Email</th><th>Mobile</th>
	<tr>
	<%
		for(Student student:students){
	%>
		<tr>
			<td><%=student.getRno()%></td>
			<td><%=student.getName()%></td>
			<td><%=student.getEmail()%></td>
			<td><%=student.getMobile()%></td>
			<td><a href=>[X]</a></td>
			<td><a href=>[Edit]</a></td>
		</tr>
	<%
		}
	%>
	</table>
	<hr>
	<a href="index.jsp">Home</a>
</body>
</html>
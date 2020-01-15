<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl" %>
<%@page isELIgnored="false" %>

<%@page import="java.util.List,com.ssi.Student" %>

<html>
<body>
	<h3>Student-List</h3>
	<hr>
	<table border="2">
	<tr>
		<th>RollNo</th><th>Name</th><th>Email</th><th>Mobile</th>
	</tr>
	
		<jstl:forEach items="${slist}" var="student">
	
		<tr>
			<td>${student.rno}</td>
			<td>${student.name}</td>
			<td>${student.email}</td>
			<td>${student.mobile}</td>
			<td><a href="delete?id=${student.rno}">[x]</a></td>
			<td><a href="updateform?id=${student.rno}">[edit]</a></td>
		</tr>
		
		</jstl:forEach>
		
	</table>
	<hr>
	<a href="index.jsp">Home</a>
</body>
</html>
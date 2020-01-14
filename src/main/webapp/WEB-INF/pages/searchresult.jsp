<%@page isELIgnored="false" %>

<html>
<body>
	<h3>Student-Detailed-Information</h3>
	<hr>
		<table border="1">
		<tr>
		<td>RollNo</td><td>${student.rno}</td>
		</tr>
		<tr>
		<td>Name</td><td>${student.name}</td>
		</tr>
		<tr>
		<td>Mobile</td><td>${student.mobile}</td>
		</tr>
		<tr>
		<td>Email</td><td>${student.email}</td>
		</tr>
		</table>
	<hr>
	<a href="searchform">Search-More</a><br>
	<a href="index.jsp">Home</a>
</body>
</html>
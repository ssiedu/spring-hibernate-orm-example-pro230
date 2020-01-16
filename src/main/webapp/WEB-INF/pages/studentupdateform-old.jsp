<%@page isELIgnored="false" %>
<html>
<body>
	<h3>Student-Update-Form</h3>
	<hr>
		<form action="updatestudent">
		<pre>
		RollNo	<input type="text" name="rno" value="${student.rno}"/>
		Name	<input type="text" name="name" value="${student.name}"/>
		Email	<input type="text" name="email" value="${student.email}"/>
		Mobile	<input type="text" name="mobile" value="${student.mobile}"/>
			<input type="submit" value="Update-Data"/>
		</pre>			
		</form>
	<hr>
</body>
</html>
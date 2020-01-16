<%@taglib uri="http://www.springframework.org/tags/form" prefix="fr" %>
<html>
<body>
	<h3>Student-Update-Form</h3>
	<hr>
		<fr:form action="updatestudent" modelAttribute="stud">
		<pre>
		RollNo	<fr:input path="rno"/>
		Name	<fr:input path="name"/>
		Email	<fr:input path="email"/>
		Mobile	<fr:input path="mobile"/>
			<input type="submit" value="Update-Data"/>
		</pre>			
		</fr:form>
	<hr>
</body>
</html>
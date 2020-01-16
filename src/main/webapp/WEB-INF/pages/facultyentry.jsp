<%@page isELIgnored="false" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<html>
<body>
	<h3>Faculty-Registration-Form</h3>
	<hr>
		<sf:form action="savefaculty" modelAttribute="faculty">
		<pre>
		FCode	<sf:input path="fcode"/>
		FName	<sf:input path="fname"/>
		Qualf	<sf:checkboxes path="qualification" items="${degreedata}" />
		Subct	<sf:select path="subject" items="${subjectdata}"/>
					
			<input type="submit" value="Save"/>
		</pre>			
		</sf:form>
	<hr>
</body>
</html>
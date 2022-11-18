<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Course</title>
</head>

<body>
		<h1 align = "center" style="color : orange"><i>Edit Course Fee And Duration</i></h1>

		<h4 align = "center" style = "color : red">* marked items entry is compulsory</h4>
		
		<div align = "center">
		
		<form:form action="/save" method="post" modelAttribute="courses">
		
			<table border="0" cell padding="4">

				<tr>
				
					<td><i>The Course Number:</i></td>
					<td><input type="text" name="courseId" value= "${courses.courseId}"></td>
					
				</tr>

				<tr>
				
					<td><i>The Course Name:</i></td>
					<td><input type="text" name="courseName" value= "${courses.courseName}"></td>
					
				</tr>

				<tr>
					<td><i>*Enter New Fees:</i></td>
					<td><input type="text" name="fees"></td>
					
				</tr>

				<tr>
				
					<td><i>*Enter New Duration:</i></td>
					<td><input type="text" name="duration"></td>
					
				</tr>

				<tr>
					
					<td><input type="submit" value="submit" style="width:80px; margin:0 50%; position:relative; left:-1px;"></td>
					
				</tr>

			</table>
			
		</form:form>
		
	</div>
	
</body>
</html>

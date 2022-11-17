<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add New Course</title>
</head>

<body>

		<h1 align = "center" style="color : orange"><i>Add New Course</i></h1>

		<h4 align = "center" style="color : red">* marked items entry is compulsory</h4>
		
		<div align = "center">

		<form:form action="/save" method="post" modelAttribute="courses">

			<table border="0" cellpadding = "4">

				<tr>
				
					<td><i>The Course Number:</i></td>
					<td><input type="text" name="courseId"></td>
					
				</tr>

				<tr>
				
					<td><i>*Enter Course Name:</i></td>
					<td><input type="text" name="courseName"></td>
					
				</tr>

				<tr>
				
					<td><i>*Enter Course Fees:</i></td>
					<td><input type="text" name="fees"></td>
					
				</tr>

				<tr>
				
					<td><i>*Enter Course Duration:</i></td>
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
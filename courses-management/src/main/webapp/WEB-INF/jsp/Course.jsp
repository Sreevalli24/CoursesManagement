<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Course Details</title>
</head>
<body>
    <h1 align="center" style="color : orange;"><i><u>The Global Education Center</u></i></h1>
    <br>
    <h3 align="center"><a href = "/newCourse" class="btn btn-sm-btn-danger"><i>Create New Course</i></a></h3>
    
    <div align = "center">
    
       <table border="2" width="40%" cellpadding="2" style="margin-left: auto; margin-right: auto;">
         <thead>
            <tr>
				<th>CODE</th>
				<th>NAME</th>
				<th>FEES</th>
				<th>DURATION(Month)</th>
				<th>ACTIONS</th>
			</tr>
		 </thead>
		 
		 <c:forEach var="course" items="${courses}">
			<tr>
				<td>${course.courseId}</td>
				<td>${course.courseName}</td>
				<td>${course.fees}</td>
				<td>${course.duration}</td>
				
				<td><a href="/editCourse?id=${course.courseId}"
					class="btn btn-sm btn-danger">Edit</a> &nbsp; &nbsp; 
					<a href="/removeCourse=${course.courseId}" class="btn btn-sm btn-danger">Remove</a></td>
			</tr>
			
			</c:forEach>
			
		</table>
		
	</div>
	
</body>
</html>
<%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Read</title>
</head>
<body>
	<h2>Spring MVC Create, Read, Update and Delete (CRUD) Example</h2>
	<p><strong>Student List is Here | <a href="/create">Click for Create</a></strong></p>
	<table border="1">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Email</th>
			<th>Course</th>
			<th>Action</th>
		</tr>
		<c:forEach var="student" items="${listStudent}">
			<tr>
				<td>${student.id}</td>
				<td>${student.name}</td>
				<td>${student.email}</td>
				<td>${student.course}</td>
				<td><a href="/update/${student.id}">Update</a> | <a
					href="/delete/${student.id}">Delete</a></td>
			</tr>

		</c:forEach>
	</table>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">


<title>Students Directory</title>
</head>
<body>

<div class="container">
<h3>Student-List</h3>
<hr>
<a href="/studentManagement/student/showFormForAdd"
class="btn btn-primary btn-sn mb-3">

Add Student</a>


<table class="table table bordered table stripped">
<thead class ="thead-dark">

<tr>
<th>FirstName</th>
<th>lastName</th>
<th>course</th>
<th>country</th>
<th>Action</th>

</tr>
</thead>
<tbody>

     <c:forEach items="${Students}" var="tempStudent">
     <tr>      
     <td><c:out value="${tempStudent.firstName }"/></td>
     <td><c:out value="${tempStudent.lastName }"/></td>
     <td><c:out value="${tempStudent.course }"/></td>
     <td><c:out value="${tempStudent.country }"/></td>
     
     
     <td>
     <a href="/studentManagement/student/showFormForUpdate?id=${tempStudent.id}"
     class="btn btn-Info btn-sn" >update</a>
     
     <a href="/studentManagement/student/delete?id=${tempStudent.id}"
     class="btn btn-danger btn-sn" 
      onclick="if(!(confirm('Are you Sure you want to delete'))) return false">
      delete</a>
    
     </td>
     </tr> 

</c:forEach>

</tbody>



</table>

</div>

</body>
</html>
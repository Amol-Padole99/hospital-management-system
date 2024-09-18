<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored = "false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type ="text/css"> 
.paint-card {
  box-shadow: 0 0 10px 0 rgba(0,0,0,0.3);
}
</style>
</head>
<body>


<c:if test="${empty doctObj }">
<c:redirect url="../doctorlogin.jsp"></c:redirect>
</c:if>


<%@include file = "navbar.jsp" %>
<div class="container p-3">
<div class ="row">
<div class="col-md-12">
<div class="card paint-card">
<div class="card-body">
<p class="fs-3 text-center">Patient Details</p>
<c:if test = "${not empty errorMsg }">
<p class="fs-4 text-center text-danger">${errorMsg}</p>
<c:remove var="errorMsg" scope="session" />
</c:if>

<c:if test = "${not empty sucMsg }">
<p class="fs-4 text-center text-success">${sucMsg}</p>
<c:remove var="sucMsg" scope="session" />
</c:if>

<table class="table">
<thead>
<tr>
<th>Full Name</th>
<th>Gender</th>
<th>Age</th>
<th>Appointment Date</th>
<th>email</th>
<th>Mob No</th>
<th>Diseasess</th>

</tr>
</thead>
</table>
</div>
</div>
</div>
</div>
</div>

</body>
</html>










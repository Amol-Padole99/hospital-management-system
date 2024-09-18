<%@page import="com.entity.Doctor"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.DoctorDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored = "false" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Appointment</title>
<%@include file = "component/allcss.jsp" %>
<style type="text/css">
.paint-card {
box-shodow: 0 0 8px 0 rgba(0,0,0,0.3);
}

.backImg{
background: linear-gradient(rgba(0, 0, 0,4) rgba(0 ,0, 0, 4)),
url("img/hospital.avif");
height: 20vh;
width :100%;
background-size: cover;
background-repeat : no-repeat;
}
</style>
</head>
<body>

<%@include file = "component/Navbar.jsp" %>
<div class = "container-fulid backImg p-5">
<p class="text-center fs-2 text-white"></p>
</div>
<div class = "container p-3">
<div class ="row">
<div class ="col-md-6 p-5">
<img alt = "" src= "img/doc3.jpg">
</div>

<div class = "col-md-6">
<div class =" card paint-card">
<div class ="card-body">
<p class ="text-center fs-3"> User Appointment</p>
<c:if test ="${ not empty errorMsg }">
<p class = "fs-4 text-center text-danger">${errorMsg}</p>
<c:remove var= "errorMsg" scope="session" />
</c:if>

<c:if test ="${ not empty sucMsg }">
<p class = "fs-4 text-center text-success">${sucMsg}</p>
<c:remove var= "errorMsg" scope="session" />
</c:if>
<from class = "row g-3" action= "appointmentsever" method = "post">
<input type= "hidden" name = "userid" value = "${userObj.id }"></input>
<div class = "col-md-6">
<label for="inputEmail4" class ="from-label"> Full Name</label>
<input required type = "text" class = "from-control" name = "fullname">
</div>

<div class = "col-md-6">
<label >Gender</label>
<select class ="from-control" name= "gender" required>
<option value = "male">Male</option>
<option value = "female">female</option>
<option value = "other">other</option>
</select>
</div>
<div  class = "col-md-6">
<label for = "inputEmail4" class = "from-label">Age</label>
<input required type = "number " class = "from-control" name = "age">
</div>

<div  class = "col-md-6">
<label for = "inputEmail4" class = "from-label">Appointment Date</label>
<input  type = "date " class = "from-control" required name = "appoint_date">
</div>

<div  class = "col-md-6">
<label for = "inputEmail4" class = "from-label">Email </label>
<input reqired type = "email " class = "from-control"  name = "email">
</div>

<div  class = "col-md-6">
<label for = "inputEmail4" class = "from-label">Mobile No</label>
<input  maxlength = "10" required type = "number" class = "from-control" required name = "phono">
</div>

<div  class = "col-md-6">
<label for = "inputEmail4" class = "from-label">Diseases</label>
<input  required type = "text " class = "from-control" name = "dieseases">
</div>


<div  class = "col-md-6">
<label for = "inputEmail4" class = "from-label"> Doctor</label>
<select required class = "from-control" name = "doctorId">
<option value = "">---select---</option>
<% DoctorDao  dao = new DoctorDao(DBConnect.getconn()) ;
		List<Doctor> list = dao.getAllDoctor();
		for(Doctor d : list){
			%>
			
<option value = "<%=d.getId()%>"> <%=d.getFullName() %> (<%=d.getSpecialist() %>)</option>
			<% 
		}
			
%>


 </select>
</div>

<div  class = "col-md-6">
<label for = "inputEmail4" class = "from-label">Address</label>
<textarea required name = "address" class = "from-control" rows= "3" cols =""></textarea>
</div>
<c:if test = "${empty userObj }">
<a href="userLogin.jsp"
class = "col-md-6 offset-md-3 btn btn-success"> submit</a>
</c:if>

<c:if test = "${empty userObj }">

<button class = "col-md-6 offset-md-3 btn btn-success"> submit</button>
</c:if>

</from>
</div>
</div>
</div>


</div>
</div>

</body>
</html>


















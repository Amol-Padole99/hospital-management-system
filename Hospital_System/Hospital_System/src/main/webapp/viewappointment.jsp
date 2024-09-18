<%@page import="com.entity.User"%>
<%@page import="com.entity.Doctor"%>
<%@page import="com.entity.Appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.dao.appointmentDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shodow: 0 0 8px 0 rgba(0, 0, 0, 0.3);
}

.backImg {
	background: linear-gradient(rgba(0, 0, 0, 4) rgba(0, 0, 0, 4)),
		url("img/hospital.avif");
	height: 20vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}
</style>
</head>
<body>
	<%@include file="component/Navbar.jsp"%>

	<div class="container-fluid backImg p-5">
		<p class="text-center fs-2 text-white"></p>
	</div>

	<div class="container p-3">
		<div class="row">
			<div class="col-md-9">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 fw-bold text-center text-success">Appointment
							List</p>
						<table class="table">
							<thead>
								<tr>
									<th scope="col">Full Name</th>
									<th scope="col">Gender</th>
									<th scope="col">Age</th>
									<th scope="col">Appoint Date</th>
									<th scope="col">Diseases</th>
									<th scope="col">Doctor Name</th>
									<th scope="col">Status</th>
								</tr>
							</thead>
							<tbody>
								<%
								User user = (User) session.getAttribute("userObj");
								appointmentDao dao = new appointmentDao(DBConnect.getconn());
								DoctorDao dao2 = new DoctorDao(DBConnect.getconn());
								List<Appointment> list = dao.getAllAppointmentByLoginUser(user.getId());
								for (Appointment ap : list) {
									Doctor d = dao2.getDoctorById(ap.getDoctorId());
								%>
								<tr>
									<th><%=ap.getFullName()%></th>
									<th><%=ap.getGender()%></th>
									<th><%=ap.getAge()%></th>
									<th><%=ap.getAppoindate()%></th>
									<th><%=ap.getDiseases()%></th>
									<th><%=d.getFullName()%></th>
									<th>
										<%
										if ("pending".equals(ap.getStatus())) {
										%> <a href="#"
										class="btn btn-sm btn-warning">pending</a> <%
 } else {
 %> <%=ap.getStatus()%>

										<%
										}
										%>
									</th>
								</tr>
								<%
								}
								%>
							</tbody>
						</table>

					</div>
				</div>
			</div>
			<div class="col-md-3 p-3">
				<img alt="" src="img/doc4.png">
			</div>

		</div>
	</div>

</body>
</html>





















<%@page import="java.util.List"%>
<%@page import="com.entity.Specalist"%>
<%@page import="com.dao.SpecalistDao"%>
<%@page import="com.db.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="adminSytle/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="navbar.jsp"%>

	<div class="container-fluid p-3">
		<div class="row">
			<div class="col-md offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Add Doctor</p>
						<c:if test="${ not empty errorMsg }">
							<p class="fs-3 text-center text-danger">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>

						<c:if test="${ not empty sucMsg }">
							<p class="fs-3 text-center text-success" role="alert">${sucMsg}</p>
							<c:remove var="sucMsg" scope="session" />
						</c:if>

						<from action="../adddoctor" method="post">
						<div class="mb-3">
							<label class="from-label">Full Name</label> <input type="text"
								required name="fullname" class="from-control">
						</div>

						<div class="mb-3">
							<label class="from-label">DOB</label> <input type="date" required
								name="dob" class="from-control">
						</div>

						<div class="mb-3">
							<label class="from-label">Qualification</label> <input
								type="text" required name="qualification" class="from-control">
						</div>

						<div class="mb-3">
							<label class="from-label"> Speacilist</label> <select name="spec"
								required class="from-control">
								<option>--select--</option>

								<%
								SpecalistDao dao = new SpecalistDao(DBConnect.getconn());
								List<Specalist> list = dao.getAllSpecialist();
								for (Specalist s : list) {
								%>

								<option>
									<%=s.getSpecalistName()%></option>

								<%
								}
								%>

							</select>
						</div>

						<div class="mb-3">
							<label class="from-label">Email</label> <input type="text"
								required name="email" class="from-control">
						</div>

						<div class="mb-3">
							<label class="from-label">Mob No</label> <input type="text"
								required name="mobno" class="from-control">
						</div>

						<div class="mb-3">
							<label class="from-label">Password</label> <input type="text"
								required name="password" class="from-control">
						</div>

						<button type="submit" class="btn btn-primary">submit</button>
						</from>


					</div>
				</div>
			</div>


		</div>

	</div>


</body>
</html>
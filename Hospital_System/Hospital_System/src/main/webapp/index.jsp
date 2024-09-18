<%@page import="com.db.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>index page</title>
<%@include file="component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>

</head>
<body>
	<%@include file="component/Navbar.jsp"%>



	<div id="carouselExampleIndicators" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/hosp3.jpg" class="d-block w-100" alt="..."
					height="500px">
			</div>
			<div class="carousel-item">
				<img src="img/hosp1.webp" class="d-block w-100" alt="..."
					height="500px">
			</div>
			<div class="carousel-item">
				<img src="img/hosp2.jpg" class="d-block w-100" alt="..."
					height="500px">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>

	<div class="container p-3">
		<p class="text-center fs-2">Key Features of our Hospital</p>
		<div class="row">
			<div class="col-md-8 p-5">
				<div class="row">
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">100% safety</p>
								<p>Keep your top two side rails up at all times. Ask for
									help to get out of bed and wear slippers or shoes with non-skid
									soles. Never use a bedside table or over bed stand for support;
									they may move. Be very careful in the bathroom; move slowly and
									use the grab bar.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Clean Enviroment</p>
								<p>Cleaning and disinfection of the physical environment in
									hospitals and health care settings is important. This reduces
									the numbers of microorganisms that may be transmitted to other
									individuals. Environmental cleaning is typically performed by
									cleaning or housekeeping services in a facility.</p>

							</div>
						</div>
					</div>

					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Friendly Doctor</p>
								<p>The term used for work environment of employees in
									healthcare. The sum of the elements, factors and conditions in
									the place of employment involves the physical geographical
									location as well as the immediate surroundings of the
									workplace.</p>

							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Medical Reserch</p>
								<p>A medical researcher's role is to research various human
									diseases using clinical trials and investigation methods to
									reach concrete findings and conclusions. The following are some
									job roles a medical researcher typically does: Conduct studies
									to investigate human diseases and find out methods to prevent
									or treat them.</p>

							</div>
						</div>
					</div>

				</div>
			</div>

			<div class="col-md-4">
				<img alt="" src="img/hosp.webp">
			</div>
		</div>

	</div>

	<hr>
	<div class="container p-2">
		<p class="text-center fs-2">Our Team</p>

		<div class="row">
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doc2.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Dr Shivani Shinde</p>
						<p class="fs-7">(CEO & Chairman)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doc1.jpeg" width="250px" height="300px">
						<p class="fw-bold fs-5">Dr Shiva Kumar</p>
						<p class="fs-7">(Chief Doctor)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doc3.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Dr Sayali Darekar</p>
						<p class="fs-7">(Cheif Doctor)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doc4.png" width="250px" height="300px">
						<p class="fw-bold fs-5">Dr Rakesh Patil</p>
						<p class="fs-7">(Cheif Doctor)</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@include file="component/footer.jsp"%>



</body>
</html>
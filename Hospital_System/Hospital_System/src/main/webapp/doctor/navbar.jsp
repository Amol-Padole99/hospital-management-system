<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored = "false"%>
<nav class ="navbar navbar-expand-lg navbar-dark bg-primary">
<div class ="container-fluid">
<a class ="navbar-brand" href="index.jsp">
<i class = "fas fa-clinic-medical">
</i> Medi Home</a>
<button class = "navbar-toggler" type = "button" data-bs-toggle="collapse"
data-bs-target = "#navbarSupportedContent"
aria-controls ="navbarSupportedContent" aria-expanded="false"
aria-label="toggle navigation">
<span class = "navbar-toggler-icon"></span>
</button>
<div class="collapse navbar-collapse" id = "navbarSupportedContend">
<ul class =" navbar-nav me-auto mb-2 mb-lg-0">
<li class ="nav-item"> <a class="nav-link" href="home.jsp">Home</a></li>
<li class ="nav-item"> <a class="nav-link" href="appoitment.jsp">Patient</a></li>
</ul>

<from class= "d-flex">
<div class = "dropdown">
<button class ="btn btn-light dropdown-toggle" type = "button"
id="dropdownMenuButton1" data-bs-toggle = "dropdown"
aria-expanded = "false">
<i class="fas fa-user-circle"></i> ${doctObj.fullName}
</button>
<ul class="dropdown-menu" aria-labelledby = "dropdownMenuButton1">
<li> <a class="dropdown-item" href="profile.jsp">Edit Profile</a></li>
<li> <a class="dropdown-item" href="../doctorlogout"> Logout</a></li>
</ul>
</div>
</from>


</div>
</div>
</nav>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>


<html lang="en">


<head>


<meta charset="UTF-8">


<title>Employee Management</title>


<!-- Bootstrap 5 Navbar -->


<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">





<!-- Google Font -->


<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap"
	rel="stylesheet">


<style>

/* Modern Navbar Styling */
.custom-navbar {
	background-color: #ffffff;
	border-bottom: 1px solid #dee2e6;
	box-shadow: 0 2px 8px rgba(0, 0, 0, 0.06);
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	padding: 10px 20px;
	z-index: 1000;
}

.custom-navbar .navbar-brand {
	font-weight: 600;
	font-size: 1.6rem;
	color: #2c3e50;
}

.custom-navbar .navbar-nav .nav-link {
	font-weight: 500;
	color: #34495e;
	margin-left: 10px;
	padding: 8px 12px;
	border-radius: 4px;
	transition: background-color 0.3s, color 0.3s;
}

.custom-navbar .navbar-nav .nav-link:hover {
	background-color: #e8f0fe;
	color: #1a237e;
}

.custom-navbar .navbar-toggler {
	border: none;
}

.custom-navbar .navbar-toggler:focus {
	box-shadow: none;
}

@media ( max-width : 991.98px) {
	.custom-navbar .navbar-nav {
		text-align: center;
		margin-top: 10px;
	}
	.custom-navbar .navbar-nav .nav-link {
		margin-left: 0;
	}
}
</style>


</head>


<body>








	<nav class="navbar navbar-expand-lg custom-navbar sticky-top">


		<div class="container-fluid">


			<a class="navbar-brand" href="./home">EmployeeDesk</a>


			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup">


				<span class="navbar-toggler-icon"></span>


			</button>





			<div class="collapse navbar-collapse justify-content-end"
				id="navbarNavAltMarkup">


				<div class="navbar-nav">


					<a class="nav-link" href="./home">Home</a> <a class="nav-link"
						href="./add">Add</a> <a class="nav-link" href="./search">Search</a>


					<a class="nav-link" href="./update">Update</a> <a class="nav-link"
						href="./remove">Remove</a> <a class="nav-link" href="./logout">Logout</a>


				</div>


			</div>


		</div>

	</nav>

	<!-- Bootstrap JS for navbar toggling -->


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>


</html>
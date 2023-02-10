<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="all_jsp_css.jsp"%>
<title>Add Note Page</title>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<div class="card py-5">
			<!-- py = padding y axis i.e vertical spacing up/down is 5   -->
			<img alt=""
				src="https://cdn-icons-png.flaticon.com/512/2438/2438239.png"
				class="img-fluid mx-auto" style="max-width: 400px;">
			<!--img-fluid = image ko responsive banane k lie use hai  -->
			<!--mx-auto = used for to keep image in center the of screen   -->
			<!--max-width: 400px = used to set size of image  -->
			<h1 class="text-primary text-uppercase text-center mt-3">Start
				taking your notes</h1>
			<!-- mt-3 = margin top space given 3  -->
			<div class="container text-center">
				<!--text-center = used to keep button in center  -->
				<button class="btn btn-outline-danger">
					<a href="index.jsp" class="text-dark"><b>Starting Taking
							Notes<b></b></a>
				</button>
			</div>
		</div>
	</div>
</body>
</html>
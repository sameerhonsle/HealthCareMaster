<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ page isELIgnored="false"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Health Care</title>

<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Colorlib Templates">
<meta name="author" content="Colorlib">
<meta name="keywords" content="Colorlib Templates">

<!-- Icons font CSS-->
<link
	href="resources/vendor/mdi-font/css/material-design-iconic-font.min.css"
	rel="stylesheet" media="all">
<link href="resources/vendor/font-awesome-4.7/css/font-awesome.min.css"
	rel="stylesheet" media="all">
<!-- Font special for pages-->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Vendor CSS-->
<link href="resources/vendor/select2/select2.min.css" rel="stylesheet"
	media="all">
<link href="resources/vendor/datepicker/daterangepicker.css"
	rel="stylesheet" media="all">

<!-- Main CSS-->
<link href="resources/css/main.css" rel="stylesheet" media="all">
<style type="text/css">
table, td, th {
	border: 1px solid black;
}

table {
	border-collapse: collapse;
	width: 1000px;
	margin-left: 170px;
	margin-top: 50px;
}

td {
	height: 50px;
	vertical-align: bottom;
}
</style>

</head>
<body>
	<div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
		<div class="">
			<div class="card card-12">
				<div class="card-body" style="height: 450px;">
					<h2 classRegistration="title" align="center">Patient List</h2>
					<h3>${DeleteMsg}</h3>
					<form method="POST" action="PrescriptionForm" modelAttribute="form">

						<div class="box-body table-responsive">

							<table>
								<tr>
									<th>S.NO.</th>
									<th>Firstname</th>
									<th>Lastname</th>
									<th>Age</th>
									<th>Email</th>
									<th>Mobile No</th>
									<th>Edit</th>
									<th>Delete</th>
								</tr>
								<%
									   int i=1;
									    	%>
								<c:forEach items="${list}" var="llist" varStatus="ct">
									   	 
									    
									
									<tr>
									
										<td align="center"><%= i %></td>
										<td align="center">${llist.firstName}</td>
										<td align="center">${llist.lastName}</td>
										<td align="center">${llist.age}</td>
										<td align="center">${llist.email}</td>
										<td align="center">${llist.phone}</td>
										<td><a href="edit/${llist.id}">Edit</a></td>
										<td><a href="delete/${llist.id}">Delete</a></td>
									</tr>
									<%i++; %>
								</c:forEach>
								
							</table>
						</div>

					</form>
					
					<center>
					 <span class="btn btn--radius-2 btn--blue" style="width: 190px;padding-left: 60px; margin-top: 15px;"><a href="/PrescriptionForm" style="text-decoration:none; color:white;">Add New</a></span>
					</center>
					
					

				</div>



			</div>


		</div>


	</div>

	<!-- Jquery JS-->
	<script src="resources/resources/vendor/jquery/jquery.min.js"></script>
	<!-- resources/vendor JS-->
	<script src="resources/vendor/select2/select2.min.js"></script>
	<script src="resources/vendor/datepicker/moment.min.js"></script>
	<script src="resources/vendor/datepicker/daterangepicker.js"></script>

	<!-- Main JS-->
	<script src="js/global.js"></script>

	<h3>${SuccessMsg}</h3>

</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
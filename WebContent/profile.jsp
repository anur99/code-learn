<%@page import="com.beans.InfoBeans"%>
<%@ page errorPage="errorPage.jsp"%>
<%
	InfoBeans user = (InfoBeans) session.getAttribute("user");
if (user == null) {
	response.sendRedirect("loginPage.jsp");
}
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to Code Learner</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<style>
.primary-background {
	background: #000000 !important;
	font-weight: bold;
}
.card{
    border-radius: 4px;
    box-shadow: 0 6px 10px rgba(0,0,0,.08), 0 0 6px rgba(0,0,0,.05);
      transition: .3s transform cubic-bezier(.155,1.105,.295,1.12),.3s box-shadow,.3s -webkit-transform cubic-bezier(.155,1.105,.295,1.12);
  padding: 14px 80px 18px -1px;
  cursor: pointer;
}

.card:hover{
     transform: scale(1.05);
  box-shadow: 0 10px 20px rgba(0,0,0,.12), 0 4px 8px rgba(0,0,0,.06);
}
.gapping{
            margin-bottom: 10px;
        }
</style>

</head>
<body>
	<!-- Navbar start -->
	<nav class="navbar navbar-expand-lg navbar-dark primary-background">
		<a class="navbar-brand" href="profile.jsp"><span class="	fa fa-coffee"></span>Code
			Learners</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#"><span
						class=""></span>Home <span class="sr-only">(current)</span></a></li>
				<li class="nav-item"><a class="nav-link" href="#"><span
						class=""></span>About us</a></li>
				<li class="nav-item"><a class="nav-link" href="codeEditor.jsp"><span
						class=""></span>Code Editor</a></li>
			</ul>
			<ul class="navbar-nav mr-right">
				<li class="nav-item"><a class="nav-link"
					href="displayProfile.jsp"><span class="fa fa-user-circle"></span><%=user.getUsername()%></a></li>

				<li class="nav-item"><a class="nav-link" href="LogoutServlet"><span
						class="fa fa-user-plus"></span>Logout</a></li>
			</ul>
		</div>
	</nav>
	<!-- end of Navbar -->

	<!-- Learn Programming language section Creating... -->
	<div class="container">
		<div class="row">
			<div class="col-md-4 gapping">
				<div class="card" style="width: 18rem; margin-top: 10px; ">
					<img class="card-img-top" src="image/java.jpg" alt="Card image cap" height="160em">
					<div class="card-body">
						<h5 class="card-title">Java Programming</h5>
						<p class="card-text">Java is a true object oriented programming language because...</p>
						<a href="learnJava.jsp" class="btn primary-background text-white">Read More...</a>
					</div>
				</div>
			</div>
			<div class="col-md-4 gapping">
				<div class="card" style="width: 18rem;margin-top: 10px;">
					<img class="card-img-top" src="image/python.png" alt="Card image cap" height="160rem">
					<div class="card-body">
						<h5 class="card-title">Python Programming</h5>
						<p class="card-text">Java is a true object oriented programming language because...</p>
						<a href="#" class="btn primary-background text-white">Read More...</a>
					</div>
				</div>
			</div>
			<div class="col-md-4 gapping">
				<div class="card" style="width: 18rem; margin-top: 10px;">
					<img class="card-img-top" src="image/c++.png" alt="Card image cap" height="160rem">
					<div class="card-body">
						<h5 class="card-title">C++ Programming</h5>
						<p class="card-text">Java is a true object oriented programming language because...</p>
						<a href="learnCpp.jsp" class="btn primary-background text-white">Read More...</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-4 gapping">
				<div class="card" style="width: 18rem;">
					<img class="card-img-top" src="image/datastructure.jpg" alt="Card image cap" height="160em">
					<div class="card-body">
						<h5 class="card-title">DS and Algorithm</h5>
						<p class="card-text">Java is a true object oriented programming language because...</p>
						<a href="#" class="btn primary-background text-white">Read More...</a>
					</div>
				</div>
			</div>
			<div class="col-md-4 gapping">
				<div class="card" style="width: 18rem;">
					<img class="card-img-top" src="image/c.png" alt="Card image cap" height="160rem">
					<div class="card-body">
						<h5 class="card-title">C Programming</h5>
						<p class="card-text">Java is a true object oriented programming language because...</p>
						<a href="#" class="btn primary-background text-white">Read More...</a>
					</div>
				</div>
			</div>
			<div class="col-md-4 gapping">
				<div class="card" style="width: 18rem;">
					<img class="card-img-top" src="image/kotlin.png" alt="Card image cap" height="160rem">
					<div class="card-body">
						<h5 class="card-title">Kotlin Programming</h5>
						<p class="card-text">Java is a true object oriented programming language because...</p>
						<a href="#" class="btn primary-background text-white">Read More...</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-4 gapping">
				<div class="card" style="width: 18rem;">
					<img class="card-img-top" src="image/data2.jpg" alt="Card image cap" height="160em">
					<div class="card-body">
						<h5 class="card-title">Database Learning</h5>
						<p class="card-text">Java is a true object oriented programming language because...</p>
						<a href="#" class="btn primary-background text-white">Read More...</a>
					</div>
				</div>
			</div>
			<div class="col-md-4 gapping">
				<div class="card" style="width: 18rem;">
					<img class="card-img-top" src="image/php.png" alt="Card image cap" height="160rem">
					<div class="card-body">
						<h5 class="card-title">Php Development</h5>
						<p class="card-text">Java is a true object oriented programming language because...</p>
						<a href="#" class="btn primary-background text-white">Read More...</a>
					</div>
				</div>
			</div>
			<div class="col-md-4 gapping">
				<div class="card" style="width: 18rem;">
					<img class="card-img-top" src="image/android.png" alt="Card image cap" height="160rem">
					<div class="card-body">
						<h5 class="card-title">App Development</h5>
						<p class="card-text">Java is a true object oriented programming language because...</p>
						<a href="#" class="btn primary-background text-white">Read More...</a>
					</div>
				</div>
			</div>
		</div>
	</div>
        <%@include file="html/footer.html" %>

</body>
</html>
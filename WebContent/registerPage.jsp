<%@page import="com.beans.ErrorMessage"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign up for free</title>
</head>
<style>
.primary-background {
	background: #000000!important;
	font-weight: bold;
}


</style>
<body>
	<%@include file="header2.jsp"%>
	<main
		class="d-flex align-item-center primary-background banner-background"
		style="height: 50vh;">
		<div class="container">
			<div class="row">
				<div class="col-md-6 offset-md-3">
					<div class="card">
						<div class="card-header primary-background text-white text-center">
							<span class="fa fa-user-circle fa-2x"></span> <br>
							<h3>New Registration</h3>
						</div>
						<%
							ErrorMessage err = (ErrorMessage) session.getAttribute("msg");
						if (err != null) {
						%>
						<div class="alert <%=err.getCssClass()%>" role="alert">
							<%=err.getContent()%>
						</div>
						<%
							session.removeAttribute("msg");
						}else{
                                                %><div> <script src="js/success.js"></script></div> <%
                                                }
						%>
						<div class="card-body">
							<form id="reg-form" action="RegisterServlet" method="post">
								<div class="row">
									<div class="col">
										<input type="text" name="f_name" class="form-control"
											placeholder="First name" required="required">
									</div>
									<div class="col">
										<input type="text" name="l_name" class="form-control"
											placeholder="Last name" required="required">
									</div>
								</div>
								<br> <br>
								<div class="row">
									<div class="col">
										<input type="email" name="useremail" class="form-control"
											placeholder="Email Address" required="required">
									</div>
									<div class="col">
										<input type="tel" name="userphone" class="form-control"
											placeholder="Phone Number" required="required">
									</div>
								</div>
								<br> <br>
								<div class="row">
									<div class="col">
										<input type="password" class="form-control"
											placeholder="Password" id="password" required="required">
									</div>
									<div class="col">
										<input type="password" name="userpass" class="form-control"
											placeholder="Confirm Password" id="confirm_password"
											required="required">
									</div>
								</div>
								<br>
								<div class="form-check">
									<input type="checkbox" name="check" class="form-check-input"
										id="exampleCheck1" required="required"> <label
										class="form-check-label" for="exampleCheck1">Terms &
										Condition</label> <a href="#" style="text-decoration: none;">(read
										carefully)</a>
								</div>
								<button type="submit" class="btn btn-success text-center"
									id="submit-Btn">Signup</button>
								<div id="loader" class="container text-center" id="loader"
									style="display: none;">
									<span class="fa fa-refresh fa-2x fa-spin"></span>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
        <%@include file="html/footer.html" %>
	<!-- Script -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
	
</body>
</html>
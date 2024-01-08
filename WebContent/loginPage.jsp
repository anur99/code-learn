<%@page import="com.beans.ErrorMessage"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login for Code Learners</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<style>
.primary-background {
	background: #000000!important;;
	font-weight: bold;
}

</style>
<body>
	<%@ include file="header2.jsp"%>
	<main class="d-flex align-item-center primary-background " style="height: 50vh;">
		<div class="container">
			<div class="row">
				<div class="col-md-4 offset-md-4">
					<div class="card">
						<div class="card-header primary-background text-white text-center">
						<span class="fa fa-user-plus fa-2x"></span>
							<br>
							<h3>Login Here</h3>
						</div>
						<%
						ErrorMessage err = (ErrorMessage) session.getAttribute("message");
						if(err!=null){
						%>
						<div class="alert <%=err.getCssClass()%>" role="alert">
						<%=err.getContent() %>
						</div>
						<%
						session.removeAttribute("message");
						}
						%>
						<div class="card-body">
							<form action="/LoginServlet" method="post">
								<div class="form-group">
									<label for="exampleInputEmail1">Email address</label> <input name="useremail"
										type="email" class="form-control" id="uemail"
										aria-describedby="emailHelp" placeholder="Enter email">
									<small id="emailHelp" class="form-text text-muted">We'll
										never share your email with anyone else.</small>
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">Password</label> <input name="userpass"
										type="password" class="form-control"
										id="pword" placeholder="Password">
								</div>
								<div class="form-check">
									<input type="checkbox" class="form-check-input"
										id="exampleCheck1"> <label class="form-check-label"
										for="exampleCheck1">Remember me</label>
								</div>
								<button type="submit" class="btn btn-success">Login</button>
								<a href="registerPage.jsp" type="submit" class="btn btn-success">Signup</a>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
        <%@include file="html/footer.html" %>                                   
</body>
</html>
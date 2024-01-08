<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Navigation Bar</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<style>
.primary-background{
	background: #000000!important;
	font-weight: bold;	
}
</style>

<body>
<nav class="navbar navbar-expand-lg navbar-dark primary-background">
  <a class="navbar-brand" href="#"><span class="	fa fa-coffee"></span>Code Learners</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp"><span class=""></span>Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#"><span class=""></span>About us</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="loginPage.jsp"><span class="fa fa-user-circle fa-spin"></span>Login</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="registerPage.jsp"><span class="fa fa-user-plus"></span>Signup</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>
</body>
</html>
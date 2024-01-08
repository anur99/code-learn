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
<title>Code Learners</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <script src="https://cdnjs.cloudflare.com/ajax/libs/ace/1.4.12/ace.js"></script>
<style>
html, body {
	margin: 0;
	padding: 0;
	width: 100%;
	height: 100%;
	overflow: hidden;
}

#editor {
	height: 100%;
	width: 50%;
	display: inline-block;
}

#iframe {
	height: 100%;
	width: 50%;
	display: inline-block;
}

#container {
	width: auto;
	height: 100%;
	white-space: nowrap;
	overflow: hidden;
}
.primary-background {
	background: #000000 !important;
	font-weight: bold;
}
</style>
<body onload='ready()'>
	<nav class="navbar navbar-expand-lg navbar-dark primary-background">
		<a class="navbar-brand" href="codeEditor.jsp"><span class="	fa fa-coffee"></span>Code
			Learners</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="profile.jsp"><span
						class=""></span>Home</a></li>
				<li class="nav-item active"><a class="nav-link" href="codeEditor.jsp"><span
                                            class=""></span>Code Editor<span class="sr-only">(current)</span></a></li>
			</ul>
			<ul class="navbar-nav mr-right">
				<li class="nav-item"><a class="nav-link"
					href="displayProfile.jsp"><span class="fa fa-user-circle"></span><%=user.getUsername()%></a></li>

				<li class="nav-item"><a class="nav-link" href="LogoutServlet"><span
						class="fa fa-user-plus"></span>Logout</a></li>
			</ul>
		</div>
	</nav>
	<div id="container">
		<div id="editor"></div>
		<iframe src="" frameborder="0" id="iframe"> </iframe>
	</div>

	<script>
       function update()
{
	var idoc = document.getElementById('iframe').contentWindow.document;

	idoc.open();
	idoc.write(editor.getValue());
	idoc.close();
}

function setupEditor()
{
  window.editor = ace.edit("editor");
  editor.setTheme("ace/theme/monokai");
  editor.getSession().setMode("ace/mode/html");
  editor.setValue(`<!DOCTYPE html>
<html>
<head>
    <title>Code here...</title>
</head>
<body>
    <!-- Enter Your HTML Code Here -->
</body>
</html>`,1); //1 = moves cursor to end

  editor.getSession().on('change', function() {
    update();
  });

  editor.focus();
  
  
  editor.setOptions({
    fontSize: "14pt",
    showLineNumbers: true,
    showGutter: true,
    vScrollBarAlwaysVisible:true,
    enableBasicAutocompletion: true, enableLiveAutocompletion: false
  });
	
  editor.BracketMatch(true);
  editor.setShowPrintMargin(false);
  editor.setBehavioursEnabled(false);
}

setupEditor();
update();
    </script>
</body>
</html>
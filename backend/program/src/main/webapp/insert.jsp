<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="sp.senai.br.model.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register User</title>
<link rel="shortcut icon" href="https://image.ibb.co/n7oTvU/logo_white.png">
<link href="css/list.css" rel="stylesheet" type="text/css" >
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body>
<main>
<%
User user = (User) request.getAttribute("user");
%>
<% if (user == null) { %>
		<div class="form-content-erro">
			<div class="well">
				<div class="alert alert-danger" id="Erro">
			  		<p><strong>Error !</strong> was not possible register user !</p>
				</div>
			</div>
			<div class="btn-toolbar">
            	<button class="btn btn-primary" onclick="window.location.href='/program/'">New user</button>
       		</div>
	        <div class="btn-toolbar">
	            <button class="btn btn-primary" onclick="window.location.href='/program/Users'">Users</button>
	        </div>
		</div>
<% } else { %>
	<div class="form-content-erro">
		<div class="well">
			<div class="alert alert-success" id="Erro">
		  		<p><strong>Success !</strong> <%=user.getName() %> has been registered in the system.</p>
			</div>
		</div>
		<div class="btn-toolbar">
            <button class="btn btn-primary" onclick="window.location.href='/program/'">New user</button>
        </div>
        <div class="btn-toolbar">
            <button class="btn btn-primary" onclick="window.location.href='/program/users'">Users</button>
        </div>
	</div>
<% } %>
</main>
</body>
</html>
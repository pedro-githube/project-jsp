<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="sp.senai.br.model.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>Update User</title>
	<link rel="shortcut icon" href="https://image.ibb.co/n7oTvU/logo_white.png">
	<link href="css/register.css" type="text/css" rel="stylesheet" >
	<link href="css/lista.css" rel="stylesheet" type="text/css" >
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
<%
User user = (User) request.getAttribute("user");
%>
	<main>
	 <% if (user != null) { %>
		<div class="container register">
                <div class="row">
                    <div class="col-md-3 register-left">
                        <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
                        <h3>Welcome !</h3>
                        <p>Update User</p>
                    </div>
                    <div class="col-md-9 register-right">
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <h3 class="register-heading">User Data</h3>
                                <form action="/program/update-user" method="post">
                                    <div class="row register-form">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input type="text" class="form-control" placeholder="Name" name="txtName" value="<%=user.getName() %>" />
                                            </div>
                                            <div class="form-group">
                                                <input type="hidden" class="form-control" placeholder="Name" name="txtId" value="<%=user.getId() %>" />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input type="text" minlength="8" maxlength="8" name="txtTelephone" class="form-control" placeholder="Telephone" value="<%=user.getTelephone() %>" />
                                            </div>
                                            <div class="form-group">
                                                <input type="text" class="form-control" placeholder="Address" name="txtAddress" value="<%=user.getAddress() %>" />
                                            </div>
                                            <input type="submit" class="btnRegister" value="Update"/>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
         <% } else { %>
	        <div class="form-content-erro">
				<div class="well">
					<div class="alert alert-danger" id="Erro">
				  		<p><strong>Erro!</strong> Não Foi Possível Encontrar o Cliente</p>
					</div>
				</div>
			</div>
		<% } %>
	</main>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="sp.senai.br.model.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of Users</title>
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
<%
List<User> list = (List<User>) request.getAttribute("list");
%>	
<main>
<%
if (list == null) {
%>
		<div class="form-content-erro">
			<div class="well">
				<div class="alert alert-danger" id="Erro">
			  		<p><strong>Error !</strong> List not found.</p>
				</div>
			</div>
		</div>
<%
} else {
%>
	<div class="container register-form">
            <div class="form">
                <div class="note">
                    <p>Users</p>
                </div>
                <div class="form-content">
                    <div class="well">
                        <table class="table">
                          <thead>
                            <tr>
                              <th>ID</th>
                              <th>Name</th>
                              <th>Telephone</th>
                              <th>Address</th>
                              <th style="width: 35px;"></th>
                            </tr>
                          </thead>
                          <tbody>
                     		<%
                     		for (User users : list) {
                     		%>
								<tr>
									<td><%= users.getId() %></td>
									<td><%= users.getName() %></td>
									<td><%= users.getTelephone() %></td>
									<td><%= users.getAddress() %></td>
									<td><a href="/program/user?txtId=<%=users.getId() %>" ><i class="icon-pencil"></i></a></td>
									<td><a href="/program/delete-user?txtId=<%= users.getId() %> " role="button" data-toggle="modal"><i class="icon-remove"></i></a></td>
								</tr>		
							<%} %>
                          </tbody>
                        </table>
                    </div>
                    <div class="btn-toolbar">
                        <button class="btn btn-primary" onclick="window.location.href='/program/'">New user</button>
                    </div>
                    <% } %>
                </div>
            </div>
        </div>
</main>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="com.JSP_Final_Projet.model.Search_Mat_ID" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- <link rel="stylesheet" href="css/bootstrap.min.css"> -->
<title>Administrator</title>
</head>
<body>
	<div class="container">
		<section id="formBox">
				<form method="post" action="#">
					<br>
				    <div class="input-group">
				      <!-- <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span> -->
				      <input id="text" type="text" class="form-control" name="id" placeholder="Enter Product code" required>
				    </div>
				    <br>
				
				    <div class="input-group">
				    	<input id="btn-signin" type="submit" value="SUBMIT" class="btn btn-primary btn-lg">
				    </div>
			  	</form>
			</section>
			
			
		<%
					
			String id = request.getParameter("id");
			
		Search_Mat_ID search = new Search_Mat_ID();
			ResultSet result = search.Materiel_Done(id);
			
			
		%>
	<div class="container-fluid">
		<h1 class="bg-success">Material info</h1>
		<table class="table table-bordered">
				<thead>
					<tr>
						<th>Code</th>
						<th>Type</th>
						<th>Marque</th>
						<th>Modele</th>
						<th>SE</th>
						<th>Stockage</th>
						<th>Processus</th>
						<th>Peripheriques</th>
						<th>Service</th>
						<th>Localisation</th>
						<th>Utilisateur</th>
						<th>Statut</th>
					</tr>
				</thead>
					<%
						while(result.next()){
							
					%>
				<tbody>
						<tr>
							<td><% out.print(result.getString(1)) ;%></td>
							<td><% out.print(result.getString(2)); %></td>
							<td><% out.print(result.getString(3)); %></td>
							<td><% out.print(result.getString(4)); %></td>
							<td><% out.print(result.getString(5)); %></td>
							<td><% out.print(result.getString(6)); %></td>
							<td><% out.print(result.getString(7)); %></td>
							<td><% out.print(result.getString(8)); %></td>
							<td><% out.print(result.getString(9)); %></td>
							<td><% out.print(result.getString(10)); %></td>
							<td><% out.print(result.getString(11)); %></td>
							<td><% out.print(result.getString(12)); %></td>
						</tr>
						
						<%}%>	
			</table>
	</div>
	
	<br><br>
	</div>

</body>
</html>
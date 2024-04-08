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
	<%
		while(result.next()){
			
	%>
		<br>
		<form action="Mat_Update_Servlet" method="post">
		
		<div id="formBox" class="container row">
		
			<div class="col-sm-12 col-md-6">
				<div class="panel panel-default">
				
				  <div class="panel-heading">
				    <h3 class="panel-title">Information Technique</h3>
				  </div>
				  
				  <div class="panel-body">
				  
				  	<div class="input-group">
			     		<input id="text" type="text" class="form-control" name="id" placeholder="Device Code" value="<%out.print(result.getString(1));%>">
		    		</div><br>
				    <div class="input-group">
			     		<input id="text" type="text" class="form-control" name="type" placeholder="Type" value="<%out.print(result.getString(2));%>">
		    		</div><br>
		    		<div class="input-group">
			     		<input id="text" type="text" class="form-control" name="marque" placeholder="Brand" value="<%out.print(result.getString(3));%>">
		    		</div><br>
		    		<div class="input-group">
			     		<input id="text" type="text" class="form-control" name="modele" placeholder="Model" value="<%out.print(result.getString(4));%>">
		    		</div><br>
		    		<div class="input-group">
			     		<input id="text" type="text" class="form-control" name="se" placeholder="Operating System" value="<%out.print(result.getString(5));%>">
		    		</div><br>
		    		<div class="input-group">
			     		<input id="text" type="text" class="form-control" name="stockage" placeholder="Storage" value="<%out.print(result.getString(6));%>">
		    		</div><br>
		    		<div class="input-group">
			     		<input id="text" type="text" class="form-control" name="processeur" placeholder="Processor" value="<%out.print(result.getString(7));%>">
		    		</div><br>
		    		<div class="input-group">
			     		<input id="text" type="text" class="form-control" name="peripheriques" placeholder="Devices" value="<%out.print(result.getString(8));%>">
		    		</div><br>
				  </div>
				</div>
			</div>
	  		
	  		<div class="col-sm-12 col-md-6">
				<div class="panel panel-default">
				  <div class="panel-heading">
				    <h3 class="panel-title">Information Physique</h3>
				  </div>
				  <div class="panel-body">
		    		<div class="input-group">
			     		<input id="text" type="text" class="form-control" name="service" placeholder="Service" value="<%out.print(result.getString(9));%>">
		    		</div><br>
		    		<div class="input-group">
			     		<input id="text" type="text" class="form-control" name="localisation" placeholder="location" value="<%out.print(result.getString(10));%>">
		    		</div><br>
		    		<div class="input-group">
			     		<input id="text" type="text" class="form-control" name="utilisateur" placeholder="User" value="<%out.print(result.getString(11));%>">
		    		</div><br>
		    		<div class="input-group">
			     		<input id="text" type="text" class="form-control" name="statut" placeholder="Status" value="<%out.print(result.getString(12));%>">
		    		</div>
		    		<br><br>
		    		<div class="input-group">
			     		<input type="submit" class="btn btn-primary btn-lg btn-block" name="submit" value="Modifier">
		    		</div>
				  </div>
				</div>
			</div>
		</div>	
	</form>
	<%
		}
	%>

	</div>
	
	
	
	<br><br>
	</div>

</body>
</html>
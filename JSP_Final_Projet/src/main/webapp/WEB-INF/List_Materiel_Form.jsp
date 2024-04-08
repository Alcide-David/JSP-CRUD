<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


	<%@page import="java.util.Iterator"%>
	<%@page import="java.util.List"%>
	<%@page import="java.sql.*" %>
	<%@page import="com.JSP_Final_Projet.model.Materiel"%>
	<%@page import="com.JSP_Final_Projet.BD.Connexion_BD"%>
	

<html>
<head>
<title>Affichage des Materiaux</title>

		
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>

	<div >
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container" style="margin-top:40px" >
			<h3 class="text-center">Liste des Materiaux</h3>
			<hr>
			<div class="d-flex">
				<div class="">
				<a href="<%=request.getContextPath()%>/Add_Materiel_Form" class="btn btn-btn btn-light">Ajout d'un nouveau Materiel</a>
				</div>
				<%
						Connexion_BD connexion_BD = new Connexion_BD();
					Connection connection;
					ResultSet resultat;
					
					connection = connexion_BD.getConnection();
					 String TOTAL_MAT_SQL = "Select count(*) from materiaux;";
					
					resultat= connection.createStatement().executeQuery(TOTAL_MAT_SQL);
					
					while(resultat.next()){
						
				%>	
				<div class="">
					<div class="card" style="margin-left : 870px">
					  <div class="card-body">
					   Total des materiaux : <% out.print(resultat.getInt(1)); %>
					  </div>
					</div>
				</div>
			</div>
			<%
			
			}%>
			
			
			<br>
			<table class="table table-hover" >
				<thead class="table-dark">
					<tr>
						<th class="text-center" >Code</th>
						<th class="text-center">Type</th>
						<th class="text-center">Marque</th>
						<th class="text-center">Modele</th>
						<th class="text-center">SE</th>
						<th class="text-center">Stockage</th>
						<th class="text-center">Processus</th>
						<th class="text-center">Peripheriques</th>
						<th class="text-center">Service</th>
						<th class="text-center">Localisation</th>
						<th class="text-center">Utilisateur</th>
						<th class="text-center">Statut</th>
						<th class="text-center">Supprimer </th>
					</tr>
				</thead>
				<%
						Connexion_BD conex = new Connexion_BD();
						List<Materiel> materiaux = conex.selectAllMateriaux();
						Iterator<Materiel> iteration=materiaux.iterator();
						Materiel materiel=null;
						while(iteration.hasNext()){
							materiel=iteration.next();
				%>
				<tbody>
						<tr>
							<td class="text-center" class="col-md-4"><%= materiel.getId() %></td>
							<td class="text-center"><%= materiel.getType() %></td>
							<td class="text-center"><%= materiel.getMarque() %></td>
							<td class="text-center"><%= materiel.getModele() %></td>
							<td class="text-center"><%= materiel.getSe() %></td>
							<td class="text-center"><%= materiel.getStockage() %></td>
							<td class="text-center"><%= materiel.getProcesseur() %></td>
							<td class="text-center"><%= materiel.getPeripheriques() %></td>
							<td class="text-center"><%= materiel.getService() %></td>
							<td class="text-center"><%= materiel.getLocalisation() %></td>
							<td class="text-center"><%= materiel.getUtilisateur() %></td>
							<td class="text-center"><%= materiel.getStatut() %></td>
							<td class="text-center">
							<a href="Mat_Delete_Servlet?id=<%= materiel.getId() %>" class="btn btn-danger">Effacer</a> 
							</td>
						</tr>
						
						<%}%>
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>

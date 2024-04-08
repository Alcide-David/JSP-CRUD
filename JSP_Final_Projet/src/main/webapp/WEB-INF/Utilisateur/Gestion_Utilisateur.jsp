<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<%@page import="java.sql.*" %>
	<%@page import="java.util.Iterator"%>
	<%@page import="java.util.List"%>
	<%@page import="com.JSP_Final_Projet.model.Utilisateur"%>
	<%@page import="com.JSP_Final_Projet.BD.Connexion_BD"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=<device-width>, initial-scale=1.0">
    <title>G-Utilisateur</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
    <div class="d-flex" style="margin-top: 50px]">
        <div class="card col-sm-4" >
            <div class="card-body">
                <form action="User_Insert_Servlet" method="post">
                    <div class="form-group">
                        <label>Nom</label>
                        <input type="text" name="nom" placeholder="Inserer le nom" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Prenom</label>
                        <input type="text" name="prenom" placeholder="Inserer le prenom" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <input type="text" name="email" placeholder="example@gmail.com" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <input type="text" name="password" placeholder="Inserer le mot de passe" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Type</label>
                        <select class="form-control" plaeeholder="Preciser le type de ce compte" name="type" required>
                            <option>Admin</option>
                            <option>Simple-Utilisateur</option>
                        </select>
                    </div>
    
                    <input type="submit" name="submit" class="btn btn-dark">
                </form>
            </div>
        </div>
        
        
    
        <div class="col-sm-8">
        
        			<div class="container" style="margin-top:40px" >
			<h3 class="text-center">Liste des Utilisateurs</h3>
			<hr>
			<div class="d-flex">
				<%
						Connexion_BD connexion_BD = new Connexion_BD();
					Connection connection;
					ResultSet resultat;
					
					connection = connexion_BD.getConnection();
					 String TOTAL_UTILISATEUR_SQL = "Select count(*) from utilisateur;";
					
					resultat= connection.createStatement().executeQuery(TOTAL_UTILISATEUR_SQL);
					
					while(resultat.next()){
						
				%>	
				<div class="">
					<div class="card" style="margin-left : 720px; margin-bottom: 20px">
					  <div class="card-body">
					   Total des utilisateurs : <% out.print(resultat.getInt(1)); %>
					  </div>
					</div>
				</div>
			</div>
			<%
			
			}%>
            <table class="table table-hover" >
                <thead class="table-dark">
                    <tr>
                        <th>Nom</th>
                        <th >Prenom</th>
                        <th>Email</th>
                        <th>Password</th>
                        <th>Type</th>
                        <th>Operations</th>
                    </tr>
                </thead>
                <%
                        Connexion_BD conex = new Connexion_BD();
                        List<Utilisateur> utilisateurs = conex.selectAllUtilisateurs();
                        Iterator<Utilisateur> iteration=utilisateurs.iterator();
                        Utilisateur utilisateur=null;
                        while(iteration.hasNext()){
                            utilisateur=iteration.next();
                %>
                <tbody>
                        <tr>
                            <td class="" ><%= utilisateur.getNom() %></td>
                            <td class=""><%= utilisateur.getPrenom() %></td>
                            <td class=""><%= utilisateur.getEmail() %></td>
                            <td class=""><%= utilisateur.getPassword() %></td>
                            <td class=""><%= utilisateur.getType() %></td>
                            <td class="">
                            <a href="User_Delete_Servlet?email=<%= utilisateur.getEmail() %>" class="btn btn-danger">Effacer</a> 
                            </td>
                        </tr>
                        
                        <%}%>
                </tbody>
    
            </table>  
        </div>
    </div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
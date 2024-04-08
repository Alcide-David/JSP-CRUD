<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
 	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
<body> 
				<nav class="navbar navbar-expand-lg navbar-light bg-light">
					  <a class="navbar-brand" href="#">| IT-TECH |</a>
					  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
					    <span class="navbar-toggler-icon"></span>
					  </button>
					  
					  <div class="collapse navbar-collapse" id="navbarNav">
					  
					    <ul class="navbar-nav">
					    
					      
					      <!-- Materiels et Operations  -->
					     
					      <div class="dropdown" style="margin-left:60px">
						  <a style="margin-left:" class="btn btn-outline-dark dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						  <i class="fa fa-bars" aria-hidden="true"></i>
						    | Gestion des Materiaux |
						  </a>
						  <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
						    <a class="dropdown-item" href="Connexion_Application?action_bouton=Add_Materiel_Form" target="myFrame">Ajouter un materiel</a>
						    <a class="dropdown-item" href="Connexion_Application?action_bouton=List_Materiel_Form" target="myFrame">Afficher la Liste</a>
						    <a class="dropdown-item" href="Connexion_Application?action_bouton=Rechercher_Materiel" target="myFrame">Rechercher</a>
						     <a class="dropdown-item" href="Connexion_Application?action_bouton=modifie_id" target="myFrame">Modifier un materiel</a>
						  </div>
						</div>
						
						<li class="nav-item" style="margin-left:20px">
							<a class="btn btn-outline-dark" href="Connexion_Application?action_bouton=Gestion_Utilisateur" target="myFrame"><i style="margin-right : 5px" class="fa fa-users" aria-hidden="true"></i>| Gestion des Utilisateur |</a>
							<i class="bi bi-people-fill"></i>
						</li>
					    </ul>
					    
						<div style="margin-left:610px" class="dropdown">
						  <a  style="" class="btn btn-outline-dark dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						   <i class="fa fa-user-circle-o" aria-hidden="true"></i>
						    deconnexion
						  </a>
						
						  <div class="dropdown-menu text-center" aria-labelledby="dropdownMenuLink">
						    <a class="dropdown-item" href="#">
						    	<img src="<%=request.getContextPath() %>/image/user.png" height="80" width="80">
						    </a>
						    <a class="dropdown-item" href="#">${utilisateur.getNom()  }</a>
						    <a class="dropdown-item" href="#">${utilisateur.getEmail() }</a>
						    <div class="dropdown-divider"></div>
						    <form action="Validation_Login_Servlet" method="post">
						    	<a class="dropdown-item" name="action_bouton" value="deconnexion" href="index">deconnexion</a>
						    </form>
						    
						  </div>
						</div>
					    
					  </div>
					</nav>
					
					<div>
						<div class="m-3" style="height:530px; ">
						<iframe name="myFrame" style="height:140%; width:100%; border: none"></iframe>
						</div>
					</div>
			
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
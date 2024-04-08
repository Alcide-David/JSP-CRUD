<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="com.JSP_Final_Projet.model.Search_Mat_ID" %>
<!DOCTYPE html>
<html lang="en">
<head>
	
	<link rel="stylesheet" type="text/css" href="./CSS/Mat_Style.css">

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!----======== CSS ======== -->
    <link rel="stylesheet" href="Materiel_style.css">
     
    <!----===== Iconscout CSS ===== -->
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
      

   <title>Modification</title>
</head>
<body>
			<div>
				<form method="post" action="#">
					<div class="search-container">
    					<input type="text" name="id" placeholder="Rechercher...">
  					    <button type="submit">Rechercher</button>
  					 </div> 
			 </form>
			</div> 
		
			
		
		<%
					
			String id = request.getParameter("id");
			
		Search_Mat_ID search = new Search_Mat_ID();
			ResultSet result = search.Materiel_Done(id);
			
			
		%>
	<%
		while(result.next()){
			
	%>
	
    <div class="container">
        <header>Modification du materiel [ <%out.print(result.getString(1));%> ]</header>

        <form action="Mat_Update_Servlet" method="post">
            <div class="form first">
                <div class="details personal">
                    <span class="title">Informations Techniques</span>

                    <div class="fields">
                    	<div class="input-field">
                           <!--  <label>Code</label> -->
                            <input type="hidden"  name="id" value="<%out.print(result.getString(1));%>" required>
                            <p><span style="color:red">CODE</span> non modifiable </p>
                        </div>
                    
                        <div class="input-field">
                            <label>Type</label>
                            <input type="text"  name="type" value="<%out.print(result.getString(2));%>" required>
                        </div>

                        <div class="input-field">
                            <label>Marque</label>
                            <input type="text"  name="marque" value="<%out.print(result.getString(3));%>" required>
                        </div>

                        <div class="input-field">
                            <label>Modele</label>
                            <input type="text" name="modele" value="<%out.print(result.getString(4));%>" required>
                        </div>
                        
                        <div class="input-field">
                            <label>Systeme d'exploitation</label>
                            <input type="text"  name="se" value="<%out.print(result.getString(5));%>" required>
                        </div>

                        <div class="input-field">
                            <label>Stockage</label>
                            <input type="text"  name="stockage" value="<%out.print(result.getString(6));%>" required>
                        </div>

                        <div class="input-field">
                            <label>Processeur</label>
                            <input type="text" name="processeur" value="<%out.print(result.getString(7));%>" required>
                        </div>

                        <div class="input-field">
                            <label>Peripheriques</label>
                            <input type="text" name="peripheriques" value="<%out.print(result.getString(8));%>" required>
                        </div>
                    </div>
                </div>

                <div class="details ID">
                    <span class="title">Information Physique</span>

                    <div class="fields">
                        <div class="input-field">
                            <label>Service</label>
                            <input type="text" name="service" value="<%out.print(result.getString(9));%>" required>
                        </div>

                        <div class="input-field">
                            <label>Localisation</label>
                            <input type="text" name="localisation" value="<%out.print(result.getString(10));%>" required>
                        </div>

                        <div class="input-field">
                            <label>Utilisateur</label>
                            <input type="text" name="utilisateur" value="<%out.print(result.getString(11));%>" required>
                        </div>

                        <div class="input-field">
                            <label>Statut</label>
                            <select name="statut"  required>
                                <option><%out.print(result.getString(12));%></option>
                                <option>Bon etat</option>
                                <option>Mauvais etat</option>
                                <option>En reparation</option>
                                <option>Plus disponible</option>
                            </select>
                        </div>
                    </div>
                  </div>

                <button class="sumbit">
                    <span class="btnText" id="submit">Submit</span>
                    <!-- Pour l'icone apparaissant dans le boutton  -->
                    <i class="uil uil-navigator"></i>
                </button>
            </div>
        </form>
		<%
		}
	%>
    </div>

</body>
</html>
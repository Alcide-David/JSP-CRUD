<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/CSS/login_Style.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <title>Connexion</title>
  </head>
  <body>
    <div class="container col-lg-3">
    	<form action="Validation_Login_Servlet" method="post">
    	
    		<div class="form-group text-center">
    			<img src="<%=request.getContextPath() %>/image/user.png"  width="80"/> 
    			<p><strong>Bienveunue !</strong></p>
    		</div>
    		
    		<div class="form-group">
    			<label>Email :</label>
    			<input class="form-control" type="text" name="email" placeholder="example@gmail.com" required/>
    		</div>
    		
    		<div class="form-group">
    			<label>Mot de passe :</label>
    			<input class="form-control" type="text" name="password" placeholder="Inserer le mot de passe" required/>
    		</div>
    		
    		<input  style="margin-left :125px" class="btn btn-outline-dark" type="submit" name="action_bouton" value="connexion">
    	</form>
    
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  </body>
</html>
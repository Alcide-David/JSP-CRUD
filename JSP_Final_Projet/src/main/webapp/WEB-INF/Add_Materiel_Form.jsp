<!DOCTYPE html>
<html lang="en">
<head>
	
	<link rel="stylesheet" type="text/css" href="./CSS/Materiel_Style.css">

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!----======== CSS ======== -->
    <link rel="stylesheet" href="Materiel_style.css">
     
    <!----===== Iconscout CSS ===== -->
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
        

   <title>Responsive Regisration Form </title>
</head>
<body>
	<hr>
    <div class="container">
        <header>Registration</header>

        <form action="Mat_Insert_Servlet" method="post">
            <div class="form first">
                <div class="details personal">
                    <span class="title">Informations Techniques</span>

                    <div class="fields">
                    	<div class="input-field">
                            <label>Code</label>
                            <input type="text"  name="id" placeholder="Entre le code de l'appareil" required>
                        </div>
                    
                        <div class="input-field">
                            <label>Type</label>
                            <input type="text"  name="type" placeholder="Entre le type de l'appareil" required>
                        </div>

                        <div class="input-field">
                            <label>Marque</label>
                            <input type="text"  name="marque" placeholder="Entrer la marque de l'appareil" required>
                        </div>

                        <div class="input-field">
                            <label>Model</label>
                            <input type="text" name="modele" placeholder="Entrer le modele de l'appareil" required>
                        </div>
                        
                        <div class="input-field">
                            <label>Systeme d'exploitation</label>
                            <input type="text"  name="se" placeholder="Entrer le type systeme d'exploitation" required>
                        </div>

                        <div class="input-field">
                            <label>Stockage</label>
                            <input type="text"  name="stockage" placeholder="Entrer la capacite de l'appareil" required>
                        </div>

                        <div class="input-field">
                            <label>Processeur</label>
                            <input type="text" name="processeur" placeholder="Entrer le son processeur" required>
                        </div>

                        <div class="input-field">
                            <label>Peripheriques</label>
                            <input type="text" name="peripheriques" placeholder="Preciser les peripheriques" required>
                        </div>
                    </div>
                </div>

                <div class="details ID">
                    <span class="title">Information Physique</span>

                    <div class="fields">
                        <div class="input-field">
                            <label>Service</label>
                            <input type="text" name="service" placeholder="Preciser le service" required>
                        </div>

                        <div class="input-field">
                            <label>Localisation</label>
                            <input type="text" name="localisation" placeholder="Entrer la localisation" required>
                        </div>

                        <div class="input-field">
                            <label>Utilisateur</label>
                            <input type="text" name="utilisateur" placeholder="Entrer le nom de l'utili" required>
                        </div>

                        <div class="input-field">
                            <label>Statut</label>
                            <select name="statut" required>
                                <option>Selectionner le statut de l'appareil</option>
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

    </div>

</body>
</html>
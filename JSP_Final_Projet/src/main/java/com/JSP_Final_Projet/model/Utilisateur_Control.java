package com.JSP_Final_Projet.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.JSP_Final_Projet.BD.Connexion_BD;

public class Utilisateur_Control {
	Connexion_BD connexion_BD= new Connexion_BD();
	PreparedStatement ps;
	Connection connection;
	ResultSet resultat;
	
	public Utilisateur Valider(String email, String password) {
		Utilisateur utilisateur = new Utilisateur();
		String SELECT_ALL_USER="Select * from utilisateur where email=? and password=?";
		
		try {
			connection = connexion_BD.getConnection();
			ps = connection.prepareStatement(SELECT_ALL_USER);
			
			ps.setString(1, email);
			ps.setString(2, password);
			
			resultat = ps.executeQuery();
			
			while(resultat.next()) {
				utilisateur.setNom(resultat.getString("nom"));
				utilisateur.setPrenom(resultat.getString("prenom"));
				utilisateur.setEmail(resultat.getString("email"));
				utilisateur.setPassword(resultat.getString("password"));
				utilisateur.setType(resultat.getString("type"));
			}
		}catch (Exception e){
			e.printStackTrace();
		}
		return utilisateur;
	}
}

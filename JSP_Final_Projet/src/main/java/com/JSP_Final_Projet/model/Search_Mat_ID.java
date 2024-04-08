package com.JSP_Final_Projet.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.JSP_Final_Projet.BD.Connexion_BD;

public class Search_Mat_ID {

	Connexion_BD connexion_BD = new Connexion_BD();
	Connection connection = connexion_BD.getConnection();
	
	 public ResultSet Materiel_Done(String id) throws SQLException {
		
		String select_materiel_by_id = "select * from materiaux where id = ?";
		
		PreparedStatement preparedStatement = connection.prepareStatement(select_materiel_by_id);
		
		preparedStatement.setString(1, id);
		
		ResultSet resultat = preparedStatement.executeQuery();
		
		return resultat;
		
	}
}


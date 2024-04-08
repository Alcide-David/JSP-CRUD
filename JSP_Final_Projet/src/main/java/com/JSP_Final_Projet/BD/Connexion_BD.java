package com.JSP_Final_Projet.BD;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.JSP_Final_Projet.model.Materiel;
import com.JSP_Final_Projet.model.Utilisateur;


public class Connexion_BD {


	private String jdbcURL = "jdbc:mysql://localhost:3306/ittech?useSSL=false";
	private String jdbcUsername = "root";
	private String jdbcPassword = "";

	private static final String INSERT_MAT_SQL = "INSERT INTO materiaux" + "  (id,type,marque,modele,se,stockage,processeur,peripheriques,service,localisation,utilisateur,statut) VALUES "
			+ " (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";

	private static final String SELECT_MAT_BY_ID = "select id,type,marque,modele,se,stockage,processeur,peripheriques,service,localisation,utilisateur,statut from materiaux where id =?";
	private static final String SELECT_ALL_MAT = "select * from materiaux";
	private static final String DELETE_MAT_SQL = "delete from materiaux where id = ?;";
	private static final String UPDATE_MAT_SQL = "update materiaux set type=?,marque=?,modele=?,se=?,stockage=?,processeur=?,peripheriques=?,service=?,localisation=?,utilisateur=?,statut=? where id = ?;";
	
	
	public Connexion_BD() {
	}

	public Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
	}

	public void insertMateriel(Materiel materiel) throws SQLException {
		//System.out.println(INSERT_MAT_SQL);
		// try-with-resource statement will auto close the connection.
		try (Connection connection = getConnection();
			PreparedStatement preparedStatement = connection.prepareStatement(INSERT_MAT_SQL)) {
			preparedStatement.setString(1, materiel.getId());
			preparedStatement.setString(2, materiel.getType());
			preparedStatement.setString(3, materiel.getMarque());
			preparedStatement.setString(4, materiel.getModele());
			preparedStatement.setString(5, materiel.getSe());
			preparedStatement.setString(6, materiel.getStockage());
			preparedStatement.setString(7, materiel.getProcesseur());
			preparedStatement.setString(8, materiel.getPeripheriques());
			preparedStatement.setString(9, materiel.getService());
			preparedStatement.setString(10, materiel.getLocalisation());
			preparedStatement.setString(11, materiel.getUtilisateur());
			preparedStatement.setString(12, materiel.getStatut());
			System.out.println(preparedStatement);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			printSQLException(e);
		}
	}

	public Materiel selectMateriel(String id) {
		Materiel materiel = null;
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_MAT_BY_ID);) {
			preparedStatement.setString(1, id);
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				String type = rs.getString("type");
				String marque = rs.getString("marque");
				String modele = rs.getString("modele");
				String se = rs.getString("se");
				String stockage = rs.getString("stockage");
				String processeur = rs.getString("modele");
				String peripheriques = rs.getString("peripheriques");
				String service = rs.getString("service");
				String localisation = rs.getString("localisation");
				String utilisateur = rs.getString("utilisateur");
				String statut = rs.getString("statut");
				
				materiel = new Materiel(id,type,marque,modele,se,stockage,processeur,peripheriques,service,localisation,utilisateur,statut);
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return materiel;
	}

	public List<Materiel> selectAllMateriaux() {

		// using try-with-resources to avoid closing resources (boiler plate code)
		List<Materiel> materiaux = new ArrayList<>();
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();

				// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_MAT);) {
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				String id = rs.getString("id");
				String type = rs.getString("type");
				String marque = rs.getString("marque");
				String modele = rs.getString("modele");
				String se = rs.getString("se");
				String stockage = rs.getString("stockage");
				String processeur = rs.getString("processeur");
				String peripheriques = rs.getString("peripheriques");
				String service = rs.getString("service");
				String localisation = rs.getString("localisation");
				String utilisateur = rs.getString("utilisateur");
				String statut = rs.getString("statut");
				
				materiaux.add(new Materiel(id,type,marque,modele,se,stockage,processeur,peripheriques,service,localisation,utilisateur,statut));
			
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return materiaux;
	}

	public boolean deleteMateriel(String id) throws SQLException {
		boolean rowDeleted;
		try (Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(DELETE_MAT_SQL);) {
			statement.setString(1, id);
			rowDeleted = statement.executeUpdate() > 0;
		}
		return rowDeleted;
	}

	public boolean updateMateriel(Materiel materiel) throws SQLException {
		boolean rowUpdated;
		try (Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(UPDATE_MAT_SQL);) {
			
			statement.setString(1, materiel.getType());
			statement.setString(2, materiel.getMarque());
			statement.setString(3, materiel.getModele());
			statement.setString(4, materiel.getSe());
			statement.setString(5, materiel.getStockage());
			statement.setString(6, materiel.getProcesseur());
			statement.setString(7, materiel.getPeripheriques());
			statement.setString(8, materiel.getService());
			statement.setString(9, materiel.getLocalisation());
			statement.setString(10, materiel.getUtilisateur());
			statement.setString(11, materiel.getStatut());
			statement.setString(12, materiel.getId());
			
			rowUpdated = statement.executeUpdate() > 0;
		}
		return rowUpdated;
	}

	
	

		private void printSQLException(SQLException ex) {
			for (Throwable e : ex) {
				if (e instanceof SQLException) {
					e.printStackTrace(System.err);
					System.err.println("SQLState: " + ((SQLException) e).getSQLState());
					System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
					System.err.println("Message: " + e.getMessage());
					Throwable t = ex.getCause();
					while (t != null) {
						System.out.println("Cause: " + t);
						t = t.getCause();
					}
				}
			}
		}
		
		
		//Partie Utilisateur
		private static final String INSERT_USER_SQL = "INSERT INTO utilisateur" + "  (nom, prenom, email, password, type) VALUES "+ " (?, ?, ?, ?, ?);";
		private static final String SELECT_ALL_USERS = "select * from utilisateur";
		private static final String DELETE_USERS_SQL = "delete from utilisateur where email = ?;";
		
		public void insertUtilisateur(Utilisateur utilisateur) throws SQLException {
		
			// try-with-resource statement will auto close the connection.
			try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USER_SQL)) {
				preparedStatement.setString(1, utilisateur.getNom());
				preparedStatement.setString(2, utilisateur.getPrenom());
				preparedStatement.setString(3, utilisateur.getEmail());
				preparedStatement.setString(4, utilisateur.getPassword());
				preparedStatement.setString(5, utilisateur.getType());
				System.out.println(preparedStatement);
				preparedStatement.executeUpdate();
			} catch (SQLException e) {
				printSQLException(e);
			}
		}
		
		public List<Utilisateur> selectAllUtilisateurs() {

			// using try-with-resources to avoid closing resources (boiler plate code)
			List<Utilisateur> utilisateurs = new ArrayList<>();
			// Step 1: Establishing a Connection
			try (Connection connection = getConnection();

					// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USERS);) {
				System.out.println(preparedStatement);
				// Step 3: Execute the query or update query
				ResultSet rs = preparedStatement.executeQuery();

				// Step 4: Process the ResultSet object.
				while (rs.next()) {
					String nom = rs.getString("nom");
					String prenom = rs.getString("prenom");
					String email = rs.getString("email");
					String password = rs.getString("password");
					String type = rs.getString("type");
					
					utilisateurs.add(new Utilisateur(nom, prenom, email, password, type));
				
				}
			} catch (SQLException e) {
				printSQLException(e);
			}
			return utilisateurs;
		}
		
		public boolean deleteUtilisateur(String email) throws SQLException {
			boolean rowDeleted;
			try (Connection connection = getConnection();
					PreparedStatement statement = connection.prepareStatement(DELETE_USERS_SQL);) {
				statement.setString(1, email);
				rowDeleted = statement.executeUpdate() > 0;
			}
			return rowDeleted;
		}
		
}

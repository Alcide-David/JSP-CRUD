package com.JSP_Final_Projet.model;

public class Utilisateur {
	
	//Declaration des attributs
	String nom, prenom, email, password, type;

	//Creation de constructeurs
	public Utilisateur(String nom, String prenom, String email, String password, String type) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.password = password;
		this.type = type;
	}
	
	public Utilisateur() {
		super();
	}

	//Creation de getters et de setters
	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
}

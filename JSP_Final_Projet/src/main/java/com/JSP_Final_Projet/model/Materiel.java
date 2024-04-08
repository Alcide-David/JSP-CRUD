package com.JSP_Final_Projet.model;

public class Materiel 
 {;
	private String  id,type, marque, modele, se, stockage, processeur, peripheriques, service, localisation, utilisateur, statut;

	public Materiel(String id, String type, String marque, String modele, String se, String stockage, String processeur,
			String peripheriques, String service, String localisation, String utilisateur, String statut) {
		super();
		this.id = id;
		this.type = type;
		this.marque = marque;
		this.modele = modele;
		this.se = se;
		this.stockage = stockage;
		this.processeur = processeur;
		this.peripheriques = peripheriques;
		this.service = service;
		this.localisation = localisation;
		this.utilisateur = utilisateur;
		this.statut = statut;
	}

	public Materiel(String type, String marque, String modele, String se, String stockage, String processeur,
			String peripheriques, String service, String localisation, String utilisateur, String statut) {
		super();
		this.type = type;
		this.marque = marque;
		this.modele = modele;
		this.se = se;
		this.stockage = stockage;
		this.processeur = processeur;
		this.peripheriques = peripheriques;
		this.service = service;
		this.localisation = localisation;
		this.utilisateur = utilisateur;
		this.statut = statut;
	}

	public Materiel() {
		super();
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getMarque() {
		return marque;
	}

	public void setMarque(String marque) {
		this.marque = marque;
	}

	public String getModele() {
		return modele;
	}

	public void setModele(String modele) {
		this.modele = modele;
	}

	public String getSe() {
		return se;
	}

	public void setSe(String se) {
		this.se = se;
	}

	public String getStockage() {
		return stockage;
	}

	public void setStockage(String stockage) {
		this.stockage = stockage;
	}

	public String getProcesseur() {
		return processeur;
	}

	public void setProcesseur(String processeur) {
		this.processeur = processeur;
	}

	public String getPeripheriques() {
		return peripheriques;
	}

	public void setPeripheriques(String peripheriques) {
		this.peripheriques = peripheriques;
	}

	public String getService() {
		return service;
	}

	public void setService(String service) {
		this.service = service;
	}

	public String getLocalisation() {
		return localisation;
	}

	public void setLocalisation(String localisation) {
		this.localisation = localisation;
	}

	public String getUtilisateur() {
		return utilisateur;
	}

	public void setUtilisateur(String utilisateur) {
		this.utilisateur = utilisateur;
	}

	public String getStatut() {
		return statut;
	}

	public void setStatut(String statut) {
		this.statut = statut;
	}
	
	
	
 }

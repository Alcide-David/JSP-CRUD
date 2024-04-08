package com.JSP_Final_Projet.web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

import com.JSP_Final_Projet.model.Materiel;
import com.JSP_Final_Projet.BD.Connexion_BD;

/**
 * Servlet implementation class Mat_Update_Servlet
 */
public class Mat_Update_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connexion_BD connexion_BD = new Connexion_BD();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Mat_Update_Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String type = request.getParameter("type");
		String marque = request.getParameter("marque");
		String modele = request.getParameter("modele");
		String se = request.getParameter("se");
		String stockage = request.getParameter("stockage");
		String processeur = request.getParameter("processeur");
		String peripheriques = request.getParameter("peripheriques");
		String service = request.getParameter("service");
		String localisation = request.getParameter("localisation");
		String utilisateur = request.getParameter("utilisateur");
		String statut = request.getParameter("statut");
		
		Materiel upmateriel = new Materiel(id,type,marque,modele,se,stockage,processeur,peripheriques,service,localisation,utilisateur,statut);
		try {
			connexion_BD.updateMateriel(upmateriel);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect("List_Materiel_Form");
		
	}

}

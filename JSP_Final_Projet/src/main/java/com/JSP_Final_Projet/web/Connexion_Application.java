package com.JSP_Final_Projet.web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class Connexion_Application
 */
public class Connexion_Application extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Connexion_Application() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action_bouton = request.getParameter("action_bouton");
		
		switch(action_bouton) { 
		case "Principal":
			request.getRequestDispatcher("Principal").forward(request, response);;
			break; 
		case "Principal_Utilisateur":
			request.getRequestDispatcher("Principal_Utilisateur").forward(request, response);;
			break;
		case "Add_Materiel_Form":
			request.getRequestDispatcher("Add_Materiel_Form").forward(request, response);;
			break;
		case "List_Materiel_Form":
			request.getRequestDispatcher("List_Materiel_Form").forward(request, response);;
			break;
		case "Gestion_Utilisateur":
			request.getRequestDispatcher("Gestion_Utilisateur").forward(request, response);;
			break;
		case "modifie_id":
			request.getRequestDispatcher("modifie_id").forward(request, response);;
			break;
		case "Rechercher_Materiel":
			request.getRequestDispatcher("Rechercher_Materiel").forward(request, response);;
			break;
		default:
			throw new AssertionError();
		}
	}


}

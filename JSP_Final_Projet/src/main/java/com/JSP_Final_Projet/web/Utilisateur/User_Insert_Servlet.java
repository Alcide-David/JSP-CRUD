package com.JSP_Final_Projet.web.Utilisateur;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

import com.JSP_Final_Projet.BD.Connexion_BD;
import com.JSP_Final_Projet.model.Materiel;
import com.JSP_Final_Projet.model.Utilisateur;

/**
 * Servlet implementation class User_Insert_Servlet
 */
public class User_Insert_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connexion_BD connexion_BD = new Connexion_BD();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public User_Insert_Servlet() {
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
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String type = request.getParameter("type");
		
		Utilisateur newUtilisateur = new Utilisateur(nom, prenom, email, password, type);
		try {
			connexion_BD.insertUtilisateur(newUtilisateur);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect("Gestion_Utilisateur");
	}

}

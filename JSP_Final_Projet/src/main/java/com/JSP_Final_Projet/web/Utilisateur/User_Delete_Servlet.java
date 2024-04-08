package com.JSP_Final_Projet.web.Utilisateur;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

import com.JSP_Final_Projet.BD.Connexion_BD;

/**
 * Servlet implementation class User_Delete_Servlet
 */
public class User_Delete_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connexion_BD connexion_BD = new Connexion_BD();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public User_Delete_Servlet() {
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
		String email = request.getParameter("email");
		try {
			connexion_BD.deleteUtilisateur(email);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect("Gestion_Utilisateur");
	}
	

}

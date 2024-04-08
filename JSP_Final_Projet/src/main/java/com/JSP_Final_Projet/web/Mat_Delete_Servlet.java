package com.JSP_Final_Projet.web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

import com.JSP_Final_Projet.BD.Connexion_BD;

/**
 * Servlet implementation class Mat_Delete_Servlet
 */
public class Mat_Delete_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connexion_BD connexion_BD = new Connexion_BD();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Mat_Delete_Servlet() {
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
		try {
			connexion_BD.deleteMateriel(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect("List_Materiel_Form");
	}

}

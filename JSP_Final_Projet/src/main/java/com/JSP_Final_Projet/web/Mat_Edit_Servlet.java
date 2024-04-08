package com.JSP_Final_Projet.web;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.JSP_Final_Projet.BD.Connexion_BD;
import com.JSP_Final_Projet.model.Materiel;

/**
 * Servlet implementation class Mat_Edit_Servlet
 */
public class Mat_Edit_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connexion_BD connexion_BD = new Connexion_BD();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Mat_Edit_Servlet() {
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
		Materiel existingMateriel= connexion_BD.selectMateriel(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("materiel-form");
		request.setAttribute("materiel", existingMateriel);
		dispatcher.forward(request, response);
	}

}

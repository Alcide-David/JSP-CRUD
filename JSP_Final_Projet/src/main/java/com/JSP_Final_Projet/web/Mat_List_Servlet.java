package com.JSP_Final_Projet.web;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.JSP_Final_Projet.model.Materiel;
import com.JSP_Final_Projet.BD.Connexion_BD;

/**
 * Servlet implementation class Mat_List_Servlet
 */
public class Mat_List_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connexion_BD connexion_BD;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Mat_List_Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Materiel> listMateriel = connexion_BD.selectAllMateriaux();
		request.setAttribute("listMateriel", listMateriel);
		RequestDispatcher dispatcher = request.getRequestDispatcher("List_Materiel_Form");
		dispatcher.forward(request, response);
	}
	

}

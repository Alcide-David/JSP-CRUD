package com.JSP_Final_Projet.web;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.JSP_Final_Projet.model.Utilisateur;
import com.JSP_Final_Projet.model.Utilisateur_Control;

/**
 * Servlet implementation class Validation_Login_Servlet
 */
public class Validation_Login_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Utilisateur utilisateur = new Utilisateur();
	Utilisateur_Control user_control = new Utilisateur_Control();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Validation_Login_Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
				response.setContentType("text/html;charset=UTF-8");
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action_bouton = request.getParameter("action_bouton");
		
		if(action_bouton.equals("connexion")) {
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			
			utilisateur = user_control.Valider(email, password);
			//Si c'est un Admin
			if(utilisateur.getEmail() != null && utilisateur.getPassword()!= null && utilisateur.getType().equals("Admin")){
				request.setAttribute("utilisateur", utilisateur);
				request.getRequestDispatcher("Connexion_Application?action_bouton=Principal").forward(request, response);
				//Si c'est un Simple Utilisateur
			}else if(utilisateur.getEmail() != null && utilisateur.getPassword()!= null && utilisateur.getType().equals("Simple-Utilisateur")) {
				request.setAttribute("utilisateur", utilisateur);
				request.getRequestDispatcher("Connexion_Application?action_bouton=Principal_Utilisateur").forward(request, response);
			}else {
				request.getRequestDispatcher("index").forward(request, response);
			}
		}
		else if (action_bouton.equals("deconnexion")) {
			request.getRequestDispatcher("index").forward(request, response);
		}
	}
	


}

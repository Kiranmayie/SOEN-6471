package com.soen6471.ticketbooking.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.soen6471.ticketbooking.components.MovieComponent;
import com.soen6471.ticketbooking.components.UserComponent;
import com.soen6471.ticketbooking.dao.TicketDao;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
		UserComponent user=new UserComponent();
		
		 //Map<String, String> messages = new HashMap<String, String>();
		TicketDao dao=new TicketDao();
		PrintWriter pw=response.getWriter();
		user.setEmail(request.getParameter("email"));
		user.setPassword(request.getParameter("password")); 
		HttpSession session = request.getSession(true);
		
		List<MovieComponent> movieDetails=new ArrayList();
		String fname=dao.checkLogin(user);
		System.out.println(fname);
		movieDetails=dao.getAllMovieDetails();
		
		if(fname!=null)
		{
			//messages.put("user", );
			 if(fname.equalsIgnoreCase("Admin"))
			 {
				 request.getRequestDispatcher("addMovie.jsp").forward(request, response); 
			 }
			 else {
			
			 session.setAttribute("user", fname);
			 session.setAttribute("movieDetails", movieDetails);
			 request.getRequestDispatcher("bookTicket.jsp").forward(request, response); 
			 }
			
		}
		else
		{
			request.setAttribute("message", "Please check the username or password");
			request.getRequestDispatcher("index.jsp").forward(request, response); 
			
		}
			
		doGet(request, response);
	}

}

package com.soen6471.ticketbooking.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.soen6471.ticketbooking.components.MovieComponent;
import com.soen6471.ticketbooking.dao.TicketDao;

/**
 * Servlet implementation class AdminServlet
 */
@WebServlet("/AdminServlet")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminServlet() {
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
		MovieComponent movie=new MovieComponent();
		TicketDao dao=new TicketDao();
		movie.setMovieName(request.getParameter("movieName"));
		movie.setDescription(request.getParameter("description"));
		movie.setMovieLength(Integer.parseInt(request.getParameter("movieLength")));
		
		String result=dao.addMovie(movie);
		if(result.equalsIgnoreCase("success")) {
			request.getRequestDispatcher("Success.jsp").forward(request, response); 
		}
		
		doGet(request, response);
	}

}

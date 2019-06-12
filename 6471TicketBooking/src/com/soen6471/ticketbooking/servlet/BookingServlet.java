package com.soen6471.ticketbooking.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.soen6471.ticketbooking.components.BookingInfoComponent;
import com.soen6471.ticketbooking.components.MovieComponent;
import com.soen6471.ticketbooking.dao.TicketDao;

/**
 * Servlet implementation class BookingServlet
 */
@WebServlet("/BookingServlet")
public class BookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookingServlet() {
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
		BookingInfoComponent bookinginfo=new BookingInfoComponent();
		MovieComponent moviecomp=new MovieComponent();
		TicketDao dao=new TicketDao();
		moviecomp.setMovieId(Integer.parseInt(request.getParameter("movies")));
		bookinginfo.setMovie(moviecomp);
		String time=request.getParameter("Time");
		String date=request.getParameter("date").toString();
		bookinginfo.setShowTime(time+date);
		int seat=Integer.parseInt(request.getParameter("seat"));
		bookinginfo.setSeatnumber(seat);
		
		
		String msg=dao.bookTicket(bookinginfo);
		doGet(request, response);
	}

}
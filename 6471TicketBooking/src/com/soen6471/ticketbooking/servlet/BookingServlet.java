package com.soen6471.ticketbooking.servlet;

import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.soen6471.ticketbooking.components.BookingInfoComponent;
import com.soen6471.ticketbooking.components.MovieComponent;
import com.soen6471.ticketbooking.components.TicketInfoComponent;
import com.soen6471.ticketbooking.components.UserComponent;
import com.soen6471.ticketbooking.dao.TicketDao;

/**
 * Servlet implementation class BookingServlet
 */
@WebServlet("/BookingServlet")
public class BookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	TicketDao dao=new TicketDao();
       
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
		UserComponent userInfo=new UserComponent();
		TicketInfoComponent ticket=new TicketInfoComponent();
		
		HttpSession session = request.getSession(true);
		moviecomp.setMovieId(Integer.parseInt(request.getParameter("movie")));
		System.out.println(request.getParameter("movie"));
		bookinginfo.setMovie(moviecomp);
		String time=request.getParameter("Time");
		String date=request.getParameter("date").toString();
		bookinginfo.setShowTime(time+date);
		int seat=Integer.parseInt(request.getParameter("seat"));
		bookinginfo.setSeatnumber(seat);
		
		String fname= request.getParameter("fname");
		userInfo.setFirstName(request.getParameter("fname"));
		bookinginfo.setUser(userInfo);
		
		ticket=getTicketDetails(bookinginfo);
		ticket.setPrice(getTicketPrice(bookinginfo, time));
		ticket.setDate(date);
		ticket.setTime(time);
		
		
		
		String msg=dao.bookTicket(bookinginfo);
		if(msg.equals("success"))
		{
			session.setAttribute("ticket", ticket);
			session.setAttribute("user", fname);
			request.getRequestDispatcher("ticketInfo.jsp").forward(request, response); 
		}
		
		doGet(request, response);
	}

	
	public TicketInfoComponent getTicketDetails(BookingInfoComponent bookingInfo)
	{
		TicketInfoComponent ticket=new TicketInfoComponent();
		String seatNos="";
		
		
		String movieName= dao.getMovieName(bookingInfo.getMovie().getMovieId());
		ticket.setMovieName(movieName);
		
		ticket.setNumberOfTickets(bookingInfo.getSeatnumber());
		
		final String alphabet="ABCDEFGHIJKLMNOPQRS";
		Random r = new Random();
		int number=r.nextInt(10) + 1;

		for (int i = 0; i < bookingInfo.getSeatnumber(); i++) {
	        seatNos+=alphabet.charAt(r.nextInt(alphabet.length())) +""+ number+ ",";}
		ticket.setSeatNumbers(seatNos);
		
		return ticket;
	}
	
	public double getTicketPrice(BookingInfoComponent bookingInfo,String timing ){
		 double price=0.0;
			int numbOfSeats=bookingInfo.getSeatnumber();
			
			if (timing.equals("11:00 AM"))
			{
				price = numbOfSeats * 6;
			}
			else if(timing.equals("2:10 PM"))
			{
				price= numbOfSeats * 6.25;
			}
			else if(timing.equals("4:30 PM"))
			{
				price= numbOfSeats * 8;
			}
			else
			{
				price= numbOfSeats * 7.5;
			}
		 
		 
		 return price;
		
		
	}
}

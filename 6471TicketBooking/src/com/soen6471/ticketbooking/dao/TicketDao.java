/**
 * 
 */
package com.soen6471.ticketbooking.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.soen6471.ticketbooking.components.BookingInfoComponent;
import com.soen6471.ticketbooking.components.UserComponent;


/**
 * @author fly
 *
 */
public class TicketDao {
	Connection conn = null;
    Statement stmt = null;
    PreparedStatement preparedStmt=null;
    ResultSet rs = null;

    String sql=null;
    
    public boolean checkLogin(UserComponent user)
    {
    	boolean row=false;
    	 try {
    		 Class.forName("com.mysql.jdbc.Driver");
			 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/movie_table",
    	      "root","root");
   	 
   	 if(con!=null)
   	 {
   		 System.out.println("Connected");
		preparedStmt = con.prepareStatement("SELECT * FROM movie_table.User_Info where email_id=? and password=?");
		preparedStmt.setString(1, user.getEmail());
		preparedStmt.setString(2, user.getPassword());
		
		ResultSet rs= preparedStmt.executeQuery();
		
		while(rs.next())
		{
			row=true;
		}
		
   	 }
	} 
    	
    	 catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    	 catch (SQLException e) {
    			// TODO Auto-generated catch block
    			e.printStackTrace();
    		}
    	   
    	return row;
    }

}

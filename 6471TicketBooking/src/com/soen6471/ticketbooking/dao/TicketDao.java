/**
 * 
 */
package com.soen6471.ticketbooking.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.soen6471.ticketbooking.components.BookingInfoComponent;
import com.soen6471.ticketbooking.connection.DBConnection;

/**
 * @author fly
 *
 */
public class TicketDao {
	Connection conn = null;
    Statement stmt = null;
    PreparedStatement preparedStmt=null;
    ResultSet rs = null;
    DBConnection dbConnection=null;
    String sql=null;
    
    public int updateBookingTable(BookingInfoComponent bookInfo)
    {
    	int row=0;
    	try {
    	sql="INSERT INTO booking_info (?,?,?,?,?,?,?,?)";
    	dbConnection =new DBConnection();
    	conn = dbConnection.getDataSource().getConnection();
		
    	preparedStmt = conn.prepareStatement(sql);
    	//preparedStmt.setString(2, );
        
    	
    	
    	
    	
    	} 
    	catch (SQLException e) {
			
			e.printStackTrace();
		}
    	return row;
    }

}

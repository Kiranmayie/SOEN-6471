/**
 * 
 */
package com.soen6471.ticketbooking.connection;


import javax.sql.DataSource;

import com.mysql.cj.jdbc.MysqlDataSource;

/**
 * @author fly
 *
 */
public class DBConnection {
	
	public DataSource getDataSource() {
	 MysqlDataSource dataSource = new MysqlDataSource();
	 	dataSource.setServerName("localhost");
	    dataSource.setPortNumber(3306);
	    dataSource.setDatabaseName("BORAJI");
	    dataSource.setUser("root");
	    dataSource.setPassword("admin");
	    
	    return dataSource;
	}
	

}

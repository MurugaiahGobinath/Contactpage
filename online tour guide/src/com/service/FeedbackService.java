package com.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.model.FeedBack;
import com.util.DB;

public class FeedbackService {
	
	private static Connection connection;
	private PreparedStatement pt;

	
	public void addfeedback(FeedBack feedback) throws SQLException {
		
		connection=DB.createConnection();
		
		pt=connection.prepareStatement("insert into feedback values(?,?,?,?)");
		pt.setString(1, feedback.getName());
		pt.setString(2, feedback.getEmail());
		pt.setString(3, feedback.getAddress());
		pt.setString(4, feedback.getMessage());
	
		pt.execute();
		pt.close();
		
		
		
	}
	
	
	
	
	
}

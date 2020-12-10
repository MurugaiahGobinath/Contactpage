package com.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.model.FeedBack;
import com.util.DB;

public class DeleteFeedbackService {
	
	private static Connection connection;
	private PreparedStatement pt;

	
	public void deletefeedback(FeedBack feedback) throws SQLException {
		
		connection=DB.createConnection();
		
		pt=connection.prepareStatement("Delete from feedback where Name=? ");
		pt.setString(1, feedback.getName());
		
		
		pt.execute();
		pt.close();
		
		
		
	}
	
	
	
	
	
}

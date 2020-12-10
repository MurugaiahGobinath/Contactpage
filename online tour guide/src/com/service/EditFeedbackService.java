package com.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.model.FeedBack;
import com.util.DB;

public class EditFeedbackService {
	
	private static Connection connection;
	private PreparedStatement pt;

	
	public void editfeedback(FeedBack feedback) throws SQLException {
		
		connection=DB.createConnection();
		
		pt=connection.prepareStatement("update feedback set Name=? ,Email=?, Address=? ,Message=?");
		pt.setString(1, feedback.getName());
		pt.setString(2, feedback.getEmail());
		pt.setString(3, feedback.getAddress());
		pt.setString(4, feedback.getMessage());
		
		pt.execute();
		pt.close();
		
		
		
	}
	
	
	
	
	
}

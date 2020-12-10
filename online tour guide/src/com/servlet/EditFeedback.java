package com.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.FeedBack;
import com.service.EditFeedbackService;

/**
 * Servlet implementation class EditFeedback
 */
@WebServlet("/editfeedback")
public class EditFeedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditFeedback() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			
			FeedBack feedback=new FeedBack();
		
		feedback.setName(request.getParameter("name"));
		feedback.setEmail(request.getParameter("email"));
		feedback.setAddress(request.getParameter("address"));
		feedback.setMessage(request.getParameter("message"));
		
		EditFeedbackService feedbackedit=new EditFeedbackService();
		
		try {
			feedbackedit.editfeedback(feedback);
			response.sendRedirect("MyFeedback.jsp");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}

package com.servlets;

import java.io.IOException;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.Transaction;
import com.entities.Note;
import com.helper.FactoryProvider;

public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse
	 response) throws ServletException, IOException 
	{ 	 
	 try 
		{
		 	String title = request.getParameter("title");
		 	String content = request.getParameter("content");
			int noteId = Integer.parseInt(request.getParameter("fieldId").trim());
			Session s2 = FactoryProvider.getFactory().openSession();
			Transaction tx = s2.beginTransaction();
			Note updId = s2.get(Note.class, noteId);
			updId.setTitle(title);
			updId.setContent(content);
			updId.setAddedDate(new Date());			
			tx.commit();
			s2.close();			
			request.setAttribute("sesupdate", title);			
			request.getRequestDispatcher("all_notes.jsp").forward(request, response);			
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	 }
}

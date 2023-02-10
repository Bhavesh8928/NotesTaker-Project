package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.Transaction;
import com.entities.Note;
import com.helper.FactoryProvider;

public class SaveNoteServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{
		try 
		{
		String title1 = request.getParameter("title"); //title came from index.jsp form field name
		String content1 = request.getParameter("content"); //content came from index.jsp form field name
			Note note = new Note(title1, content1, new Date());
		//System.out.println(note.getId()+ " :"+ note.getContent());
			//OUTPUT- 70839 :Java is a Programming language/ 70839 is random no.
		
			//SAVE IN DB USING HIBERNATE
			//FactoryProvider.getFactory() = return SessionFactory object we made in FactoryProvider.class
			Session session = FactoryProvider.getFactory().openSession();
			Transaction tx = session.beginTransaction();
			session.save(note);
			tx.commit();   //database me physically data save karne k lie commit() karte hai			
			session.close(); //bcoz thread safe nahi hota hai isilie turant close() karte hai
			
			//TO SEND MESSAGE THAT DATA IS SAVED
			
			request.setAttribute("sessave", title1);			
			request.getRequestDispatcher("index.jsp").forward(request, response);	
			/*
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("<h1 style='text-align:center;'>Data saved successfully</h1>");
			out.println("<h2 style='text-align:center;'><a href='all_notes.jsp'>View all Notes</a></h2>");		
			*/
		} 
		catch (Exception e) 
		{
			System.out.println("Exception:- "+e);
		}
	}
}


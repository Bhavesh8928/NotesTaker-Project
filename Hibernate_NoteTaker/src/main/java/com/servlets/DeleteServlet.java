package com.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.Transaction;
import com.entities.Note;
import com.helper.FactoryProvider;

public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{
		response.getWriter().append("Served at: ").append(request.getContextPath());
		try 
		{
			String str = request.getParameter("note_id"); 
				// note_id came from "all_notes.jsp" page at <a href="note_id%>" 
			//Id is in integer form so need to convert it
			int noteId = Integer.parseInt(str.trim()); //trim() is used to remove extra space if there
			
			Session session2 = FactoryProvider.getFactory().openSession();
			Transaction tx = session2.beginTransaction(); //to do operation with DB
			// Now to delete in hibernate we have delete(obj) method who need object So,
			// we will get id from Note.class entity and will save in variable i.e note
			// and then this variable is used as object in delete() method
			Note note = session2.get(Note.class, noteId);
			session2.delete(note);	
			tx.commit(); //to make physical changes in DB
			session2.close();
			//And after deletion we will go back to home page
			request.setAttribute("sesdelete", "Deleted");
			request.getRequestDispatcher("all_notes.jsp").forward(request, response);			
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}
}

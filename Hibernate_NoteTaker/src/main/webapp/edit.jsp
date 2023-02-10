<%@page import="com.entities.Note"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="all_jsp_css.jsp"%>
<title>Edit Page</title>
</head>
<body
	background="https://img.freepik.com/free-vector/watercolour-background-with-leaves_91008-314.jpg?w=2000">
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1>This is Edit Page</h1>
		<!-- THIS IS FORM  -->

		<%
		String str3 = request.getParameter("note_id"); //note_id came from all_notes.jsp
		int noteId = Integer.parseInt(str3.trim()); //trim() use to remove extra space			
		Session session3 = FactoryProvider.getFactory().openSession();
		Note updID = session3.get(Note.class, noteId);
		%>
		<form action="UpdateServlet" method="post">
			<div class="form-group">
			<input value="<%=updID.getId() %>" name="fieldId" type="hidden">
				<label for="title">Note Title</label> <input type="text"
					name="title" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter title here"
					value="<%=updID.getTitle()%>">
			</div>
			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea rows="10" id="content" class="form-control" name="content"
					placeholder="Enter note content here"><%=updID.getContent()%></textarea>
				<!-- NOTE - In textarea value not append in value attribute -->

				<!--style = "height:300px" also can use instead of rows="10" -->
			</div>
			<div class="container text-center">
				<!-- to add button in center  -->
				<button type="submit" class="btn-block btn-primary">Save
					Your Changes</button>
			</div>
		</form>
	</div>
</body>
</html>
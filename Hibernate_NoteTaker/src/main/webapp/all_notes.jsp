<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="all_jsp_css.jsp"%>
<title>All Notes page</title>
</head>
<body
	background="https://img.freepik.com/free-vector/watercolour-background-with-leaves_91008-314.jpg?w=2000">
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1 class="text-uppercase">All Notes -</h1>

	<!--POPUP MESSAGE FOR DELETE - Start  -->
		<%
		String delete = (String) request.getAttribute("sesdelete");
		//sessave = came from SaveNoteServlet.java servlet page near line 39 
		if (delete == null) {

		} else {
		%>
		<script>
			Swal.fire({
				//position : 'top-end',
				icon : 'success',
				title : 'Deleted Successfully',						
			    timer : 1700
			})
		</script>
		<%
		session.setAttribute("sesdelete", null);
		}
		%>
	<!--POPUP MESSAGE FOR DELETE - End  -->

	<!--POPUP MESSAGE FOR UPDATE - Start  -->
		<%
		String update = (String) request.getAttribute("sesupdate");
		//sessave = came from UpdateServlet.java servlet page near line 39 
		if (update == null) {

		} else {
		%>
		<script>
			Swal.fire({
				//position : 'top-end',
				icon : 'success',
				title : 'Updated Successfully',
				//showConfirmButton : true,
				timer : 1500
			})
		</script>
		<%
		session.setAttribute("sesupdate", null);
		}
		%>
	<!--POPUP MESSAGE FOR UPDATE - End  -->

		<%
		Session s1 = FactoryProvider.getFactory().openSession();
		// import Query from org.hibernate
		Query q1 = s1.createQuery("from Note"); //Note is the class we made
		List<Note> list = q1.list();
		for (Note note : list) {
			//out.println(note.getId() +": "+note.getTitle() );
		%>

		<div class="card mt-3">
			<!--  mx-auto is used to set margin auto and image in mid  -->
			<img class="card-img-top m-4 mx-auto" style="max-width: 100px;"
				src="https://cdn-icons-png.flaticon.com/512/2438/2438239.png"
				alt="Card image cap">
			<div class="card-body px-5">
				<!-- p=padding, x=means from right and left it will be 5 -->
				<h5 class="card-title"><%=note.getTitle()%></h5>
				<p class="card-text"><%=note.getContent()%></p>
				
				<p><b class="text-primary"><%=note.getAddedDate()%></b></p>
				
				<div class="container text-center mt-2">
					<!-- mt = margin top -->
					<a href="edit.jsp?note_id=<%=note.getId()%>"
						class="btn btn-primary">Update</a>&nbsp;&nbsp; <a
						href="DeleteServlet?note_id=<%=note.getId()%>"
						class="btn btn-danger">Delete</a>
				</div>
			</div>
		</div>
		<!--  		
	    <div class="form-check-inline">
			<div class="card mt-4" style="width: 22rem;">
				<img class="card-img-top" style="max-width: 100px;"
					src="https://cdn-icons-png.flaticon.com/512/2438/2438239.png"
					alt="Card image cap">
				<div class="card-body">
					<h5 class="card-title"><=note.getTitle()%></h5>
					<p class="card-text"><=note.getContent()%></p>
					<a href="<=note.getId()%>" class="btn btn-success">Update</a>&nbsp;&nbsp; 
					<a href="<=note.getId()%>" class="btn btn-danger">Delete</a>
				</div>
			</div>
		</div>
	-->

		<%
		}

		s1.close();
		%>


	</div>

</body>
</html>
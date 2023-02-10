<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<%@include file="all_jsp_css.jsp"%>
<title>NoteTaker: HomePage</title>
</head>
<body background="https://img.freepik.com/free-vector/watercolour-background-with-leaves_91008-314.jpg?w=2000">
	<!--  <div class = "container"> for space to both side-->
	<!--  <div class = "container-fluid p=0 m=0" > for no space to both side -->
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1>Please fill your details here</h1>
		
		<!-- THIS IS FORM  -->
		<form action="SaveNoteServlet" method="post">
		 <%
		String save = (String) request.getAttribute("sessave");
		//sessave = came from SaveNoteServlet.java servlet page near line 39 
		if (save == null) 
		{

		} else {
		%>
		<script>
			Swal.fire({
				//position : 'top-end',
				icon : 'success',
				title : 'Your work has been saved',
				html: '<a href="all_notes.jsp">View All Notes</a>',
				showConfirmButton : true,
				//timer : 2000
			})
		</script>
		<%
		session.setAttribute("sessave", null);
		}
		%> 
					
			<div class="form-group">
				<label for="title">Note Title</label> <input type="text"
					name="title" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter title here"
					required>
			</div>
			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea rows="10" id="content" class="form-control" name="content"
					placeholder="Enter note content here" required></textarea>
				<!--style = "height:300px" also can use instead of rows="10" -->
			</div>
			<div class="container text-center">
				<!-- to add button in center  -->
				<button type="submit" class="btn-block btn-warning">Add
					Note</button>
			</div>
		</form>
	</div>
</body>
</html>
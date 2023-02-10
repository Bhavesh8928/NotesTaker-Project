<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<!-- <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script> -->
<%@include file="all_jsp_css.jsp"%>
    <title>Hello, world!</title>
  </head>
  <body>
    <h1>Hello, world!</h1>
    
    <%
     String sd = "Bhavesh";
    %>
    <script>
     var s = 'sd';
   // dem.href = 'https://github.com/t4t5/sweetalert/issues/199';
   /*  Swal.fire({
    	  title: '<strong>HTML <u>example</u></strong>',
    	  icon: 'success',
    	  html:
    	    'You can use <b>bold text</b>, ' +
    	    '<a href="${s}">links</a> ' +
    	    'and other HTML tags',
    	  showCloseButton: true,
    	  showCancelButton: true,
    	  focusConfirm: false,
    	  confirmButtonText:
    	    '<i class="fa fa-thumbs-up"></i> Great!',
    	  confirmButtonAriaLabel: 'Thumbs up, great!',
    	  cancelButtonText:
    	    '<i class="fa fa-thumbs-down"></i>',
    	  cancelButtonAriaLabel: 'Thumbs down'
    	}) */
    	
    /* Swal.fire({
		  position: 'top-end',
		  icon: 'success',
		  title: 'Your work has been saved',
		  html: '<a href="">Get All Notes</a>'
		// html: '<a href="//my_links">Get All Notes</a>'
		  showConfirmButton: false,
		  //timer: 1500
		}); */
		/* Swal.fire({
			  position: 'top-end',
			  icon: 'success',
			  title: 'Your work has been saved',
			  html: '<a href="">Get All Notes</a>'
			// html: '<a href="//my_links">Get All Notes</a>'
			  showConfirmButton: false,
			  //timer: 1500
			}) */
			
			Swal.fire({
				icon : 'success',
				title : 'Notes Updated successfully',
				showConfirmButton : false,
				timer : 1000
			})
		
    </script>
    
    
    
    
    
    

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>
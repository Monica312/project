<html>
<head>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <style>
  
  .navbar-brand
  {
    height:auto;
  }
  .logo
  {
     width:50%;
     height:80px;
  }
  
   .navbar .loginframe
  {
     float:right;
     margin-top: 2%;
  }
  
  
  
  </style>
  
  </head>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body>
<div class="container">
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"><img class="logo" src="resources/images/company/logo.jpg"></a>
    </div>
    <div class="loginframe">
    
    <form:form class="form" method="post" modelAttribute="empobject" commandName="empobject" action="sendLoginRequest">
       <div class="form-inline">
       <form:input path="email" placeholder="EMAIL" class="form-control"/>
       <form:password path="password" placeholder="password" class="form-control"/>
       <input type="submit" value="LOGIN" class="btn btn-success">
       </div>
    
    </form:form>
    
    </div>
  </div>
</nav>
<div class="col-sm-4">

</div>

<div class="col-sm-4">


<span><h2 align="center">Sing Up</h2></span>
<c:if test="${message!=null}">
	<div class="container">
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<div class="alert alert-danger alert-dismissable fade in">
					<a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
					${message}
				</div>
			</div>
		</div>
	</c:if>






<form:form commandName="empobject" action="sendSignupRequest">

  <div class="form-inline">
  <label for="name" class="col-sm-4">Name</label>
  <form:input path="name" class="form-control col-sm-8"/>
  </div>
  <div class="form-inline">
  <label for="email" class="col-sm-4">Email</label>
  <form:input path="email" class="form-control col-sm-8"/>
  </div>
  <div class="form-inline">
  <label for="password" class="col-sm-4">Password</label>
  <form:password path="password" class="form-control col-sm-8"/>
  </div>
  <div class="form-inline">
  <label for="cpass" class="col-sm-4">Confirm Password</label>
  <form:password path="cpass" class="form-control col-sm-8"/>
  </div>

  <input type="submit" value="SIGN UP" class="btn btn-primary form-control"/>

</form:form>
</div>
</div>


</body>
</html>

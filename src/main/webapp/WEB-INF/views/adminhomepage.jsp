<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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

<body>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container">

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"><img class="logo" src="resources/images/company/logo.jpg"></a>
    </div>
    <div class="col-sm-4">
       <form action="empSearch" method="post" >
    <div class="form-inline">
    <input type="text" class="form-control" name="name"><button type="submit"><span class="glyphicon glyphicon-search"></span></button>
    </div>
    </form>
    </div>
    <div class="loginframe">
 
    <img src="resources/images/profilepic/${empobject.name}.jpg" class="media-object" style="width:60px" alt="userimage"/>${empobject.name}
    
    </div>
  </div>
</nav>

<div class="container row">
<div class="col-sm-2">
</div>

<div class="container col-sm-8">
<h2 align="center">User Details</h2>

<p style="color:red">${empnameerror}</p>

<form:form commandName="empobject" action="reqSendUpdatedUser" enctype="multipart/form-data">
<form:hidden path="id"/>
<form:hidden path="password"/>
<form:hidden path="role"/>

<div class="col-sm-12 form-inline">
<div class="col-sm-6">
<label class="col-sm-4">Name</label>
<form:input path="name" class="form-control col-sm-8"/>
</div>
<div class="col-sm-6">
<label class="col-sm-4">Company</label>
<form:input path="company" class="form-control col-sm-8"/>
</div>
</div>

<div class="col-sm-12 form-inline">
<div class="col-sm-6">
<label class="col-sm-4">Email</label>
<form:input path="email" class="form-control col-sm-8"/>
</div>
<div class="col-sm-6">
<label class="col-sm-4">Designation</label>
<form:input path="designation" class="form-control col-sm-8"/>
</div>
</div>


<div class="col-sm-12 form-inline">
<div class="col-sm-6">
<label class="col-sm-4">Phone Number</label>
<form:input path="phone_no" class="form-control col-sm-8"/>
</div>
<div class="col-sm-6">
<label class="col-sm-4">Role Id</label>
<form:input path="role" class="form-control col-sm-8"/>
</div>
</div>



<div class="col-sm-12 form-inline">
<div class="col-sm-6">
<label class="col-sm-4">Address</label>
<form:input path="address" class="form-control col-sm-8"/>
</div>
<div class="col-sm-6">
<label class="col-sm-4">Profile Pic</label>
<form:input type="file" path="profilePic" class="form-control col-sm-8"/>
</div>
</div>
  
<center><input type="submit" value="Save" class="btn btn-primary"/></center>
</form:form>
</div>

</div>
</div>

</body> 
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="C:\OCTANNER\Octanner\src\main\webapp\WEB-INF\css\Bootstrap.css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body>
<div class="container">
<div class="col-sm-4">
<img src="resources/images/company/logo.jpg" width="100" height="100"/>

</div>
<div class="col-sm-4"></div>
<div class="col-sm-4">
name
   ${empobject.name}
</div>


</div>

<div class="container">
USER DETAILS
<form:form commandName="empobject" action="reqSendUpdatedUser">
<form:hidden path="id"/>
<form:hidden path="password"/>
<form:hidden path="role"/>
<div style="padding-left: 100px;"id="form1">
<br> Name         :<form:input path="name"/>   Company    :<form:input path="company"/><br>
 
<br> Email        :<form:input path="email"/>  Designation :<form:input path="designation"/><br>

<br> Phone Number :<form:input path="phone_no"/>  Role ID   :<input type="text" name="roleID"><br>

<br> Address      :<form:input path="address"/>  Self Image :<br>
  
 
<form:button>Save</form:button>
</div>
</form:form>
</div>
</body>
</html>
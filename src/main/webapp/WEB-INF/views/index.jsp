<html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body>
<div class="container">
<div class="col-sm-4">
<img src="resources/images/company/logo.jpg" width="100" height="100"/>

</div>

<div class="col-sm-8">
<form:form commandName="empobject" action="sendLoginRequest" method="POST" modelAttribute="empobject">

<div >
</div>
 
<%--  EmailId : <form:input path="email" required="true"/>
 
 Password : <form:password path="password" required="true"/>
 
<input type="submit" value="login"> --%>
 
</form:form>
</div>
</div>




 	
<br>
<div class="container">
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
                Name             : <form:input path="name" required="true"/>
 <br>
                EmailId          : <form:input path="email" required="true"/>
 <br>
                Password         : <form:password path="password" required="true"/>
 <br>
                Confirm Password : <input type="password" name="cnfpwd"/>
 <br>
             <form:button>Sign-UP</form:button>
   
</form:form>
</div>

</body>
</html>

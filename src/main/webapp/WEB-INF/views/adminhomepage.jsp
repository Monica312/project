<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div style="border-style:solid;color:lightgrey;border-width:thin;position:absolute;top:30px;right:100px;left:100px" > 
		<img src="C:\Users\Home\Desktop\New folder\logo.jpeg"></img>
		<input style="padding:10px 50px;position:absolute;top:20px;;left:420px" type="text" placeholder="  Search" >
		 <input type="button" value="Submit" style="border-style:none;
				position:absolute;top:25px;;left:695px;padding:4px 20px">
		<select  style="position:absolute; top:20px;right:100px;padding:5px 24px;"> 
			<option>  Anjani Sai </option>
			<option> Settings</option>
			<option> Log Out</option>
		</select>
			
		</div>
		<p style="position:absolute;top:100px;left:43%;font-family:Calibri;font-size:120%;"> USER DETAILS </p>
		<div style="font-family:Calibri;position:absolute;top:200px; left:200px;">
		
			Name <br><br> Email<br><br> Phone Number <br><br>Address <br><br> 
			Company Logo
		</div>

		<div style="position:absolute;top:200px;left:350px;">
		<input type="text"   name="name"> <br><br>
		<input type="text"   name="email"> <br><br>
		<input type="number" name="phone"> <br><br>
		<input type="text " name="address"> <br><br> 
		<input type="file" name=""> <br><br>
		</div>

		<div style="font-family:Calibri;position:absolute;top:200px;right:550px;">
	      		Company <br><br> Designation <br><br> RoleID <br><br>Manager<br><br> Self Image
		</div>

		<div style="position:absolute;top:200px;right:300px;">
		<input type="text"   name="company"> <br><br>
		<input type="text"   name="role"> <br><br>
		<input type="number" name="roleID"> <br><br>
		<input type="text" name=" manager"> <br><br>
		<input type="file"   name="photo" value="         Upload Photo      "> <br><br>
		</div>
		
		<input type="button" value="Save" style="border-style:none;padding:7px 24px;background-color:rgb(100, 202, 71);
							 position:absolute;top:420px;left:44%;color:white;
							 font-family:Calibri;">



</body>
</html>
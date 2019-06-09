<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration Test</title>
<script>
function validate()
        {  
	        var firstName = document.form.firstName.value;
	        var lastName = document.form.lastName.value;
	        var contactNumber = document.form.contactNumber.value;
	        var email = document.form.email.value;
	        var password = document.form.password.value;
	        var confirmPassword= document.form.confirmPassword.value;
	        
	        if (firstName == null || firstName == ""){
	        	alert("Please write your first name");
	        	return false;
	        }else if (lastName == null || lastName == ""){
	        	alert("Please write your last name");
	        	return false;
	        }else if (contactNumber == null || contactNumber == ""){
	        	alert("Please write your contact number");
	        	return false;
	        }
	        else if (email == null || email == ""){
	        	alert("Please write your email");
	        	return false;
	        }
	        else if(password.length < 4){
	        	alert("Password must be at least 4 characters long.");
	        	return false;
	        }
	        else if (password != confirmPassword){
	        	alert("Confirm Password is not the same as Password");
	        	return false;
	        }
        }
</script>
</head>
<body>
<center><h2> Please fill out the registration form </h2></center>
<form name="Registrationform" action="RegisterServlet" method="post" onsubmit="return validate()">
<table align="center">
<tr>
<td>First Name</td>
<td><input type="text" name="firstName" /></td>
</tr>
<tr>
<td>Last Name</td>
<td><input type="text" name="lastName" /></td>
</tr>
<tr>
<td>Contact Number</td>
<td><input type="text" name="contactNumber" /></td>
</tr>
<tr>
<td>Email</td>
<td><input type="text" name="email" /></td>
</tr>
<tr>
<td>Password</td>
<td><input type="password" name="password" /></td>
</tr>
<tr>
<td>Confirm Password</td>
<td><input type="password" name="confirmPassword" /></td>
</tr>
<tr>
<td><%=(request.getAttribute("errorMessage") == null) ? ""
        : request.getAttribute("errorMessage")%></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="submit"></input></td>
</tr>
</table>
	<%
	String firstName = request.getParameter("firstName");
	String lastName = request.getParameter("lastName");
	String contactNumber = request.getParameter("contactNumber");
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	
	String connectionURL = "jdbc:mysql://localhost:3306/student_2";
	
	Connection connection = null;
	PreparedStatement pstatement = null;
	int updateQuery = 0;

	try {
		Class.forName("com.mysql.jdbc.Driver");
		connection = DriverManager.getConnection(connectionURL,"root","");
		String queryString = "insert into users(firstName,lastName,contactNumber,email,password) values(?,?,?,?,?)";
		pstatement = connection.prepareStatement(queryString);
		pstatement.setString(1, firstName);
		pstatement.setString(2, lastName);
		pstatement.setString(3, contactNumber);
		pstatement.setString(4, email);
		pstatement.setString(5, password);
		
		updateQuery = pstatement.executeUpdate();
		if (updateQuery != 0) {%>
		<br>
		<TABLE style="background-color: #E3E4FA;" WIDTH="30%" border="1">
		<tr><th>User has been created successfully!</th></tr>
		</table>
		
		<%
	}
	catch (Exception ex){
		out.println("Unable to connect to batabase.");
	}	
	connection.close();
	%>
</form>

</body>
</html>
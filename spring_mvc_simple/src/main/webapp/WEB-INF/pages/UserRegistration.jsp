<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%@ include file="Header.jsp"%>
	<sf:form method="post" modelAttribute="form">
	
	


		<div align="center">
		    
			<h1>User Registration</h1>
			<h3 style="color:limegreen">${User}</h3>
			<table>
				<tr>
					<th align="left">First Name :</th>
					<td><sf:input path="firstName" /></td>
				</tr>
				<tr>
					<th align="left">Last Name :</th>
					<td><sf:input path="lastName" /></td>
				</tr>
				<tr>
					<th align="left">Login :</th>
					<td><sf:input path="login" /></td>
				</tr>
				<tr>
					<th align="left">Password :</th>
					<td><sf:input path="password" /></td>
				</tr>
				<tr>
					<th align="left">Dob :</th>
					<td><sf:input path="dob" /></td>
				</tr>
				<tr>
					<th align="left">Address :</th>
					<td><sf:input path="address" /></td>
				</tr>
				<tr>
					<th></th>
					<td><input type="submit" name="operation" value="SignUp"></td>

				</tr>




			</table>



		</div>


	</sf:form>


</body>
</html>
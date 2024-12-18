<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.error {
	color: red;
	font-weight: bold;
	font-size: 16px;
}
</style>
</head>
<body>

	<%@ include file="Header.jsp"%>
	<sf:form method="post" modelAttribute="form">

		<div align="center">
			<h1>
				<b>Login</b>
			</h1>

			<h3 align="center">
				<c:if test="${not empty error}">
					<font color="red">${error}</font>
				</c:if>
			</h3>

			<table>
				<tr>
					<th align="left">Login Id :</th>
					<td><sf:input path="login" /></td>
					<td><sf:errors path="login" cssClass="error"></sf:errors></td>
				</tr>
				<tr>
					<th align="left">Password :</th>
					<td><sf:input path="password" /></td>
					<td><sf:errors path="password" cssClass="error"></sf:errors></td>
				</tr>
				<tr>
					<th></th>
					<td><input type="submit" name="operation" value="SignIn">
						<input type="submit" name="operation" value="SignUp"></td>
				</tr>

			</table>

		</div>

	</sf:form>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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

	<%-- <%@ include file="Header.jsp"%> --%>
	<sf:form method="post" modelAttribute="form">




		<div align="center">

			<h1 style="color: navy">
				<s:message code="user.label.userRegistration" />
			</h1>
			<h2>
			    <c:if test="${not empty error}">
					<font color="red">${error}</font>
				</c:if>
				<c:if test="${not empty success}">
					<font color="limegreen">${success}</font>
				</c:if>
			</h2>
			<table>
				<tr>
					<th align="left"><s:message code="user.label.firstName" /> :</th>
					<td><sf:input path="firstName" /></td>
					<td style="position: fixed"><sf:errors path="firstName" cssClass="error"></sf:errors></td>
				</tr>
				<tr>
					<th align="left"><s:message code="user.label.lastName" /> :</th>
					<td><sf:input path="lastName" /></td>
					<td style="position: fixed"><sf:errors path="lastName" cssClass="error"></sf:errors></td>
				</tr>
				<tr>
					<th align="left"><s:message code="user.label.login" /> :</th>
					<td><sf:input path="login" /></td>
					<td style="position: fixed"><sf:errors path="login" cssClass="error"></sf:errors></td>
				</tr>
				<tr>
					<th align="left"><s:message code="user.label.password" /> :</th>
					<td><sf:input path="password" /></td>
					<td style="position: fixed"><sf:errors path="password" cssClass="error"></sf:errors></td>
				</tr>
				<tr>
					<th align="left"><s:message code="user.label.dob" /> :</th>
					<td><sf:input path="dob" /></td>
					<td style="position: fixed"><sf:errors path="dob" cssClass="error"></sf:errors></td>
				</tr>
				<tr>
					<th align="left"><s:message code="user.label.address" /> :</th>
					<td><sf:input path="address" /></td>
					<td style="position: fixed"><sf:errors path="address" cssClass="error"></sf:errors></td>
				</tr>
				<tr>
					<th></th>
					<td><input type="submit" name="operation" value="SignUp">
					<input type="submit" name="operation" value="Reset"></td>

				</tr>




			</table>



		</div>


	</sf:form>


</body>
</html>
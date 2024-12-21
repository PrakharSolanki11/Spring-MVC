<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<div id="Header">
		<tiles:insertAttribute name="header" />
	</div>

	<div id="Body">
		<tiles:insertAttribute name="body" />
	</div>

	<div id="Footer">
		<tiles:insertAttribute name="footer" />
	</div>


</body>
</html>
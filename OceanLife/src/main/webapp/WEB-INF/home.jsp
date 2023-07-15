<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ocean Life</title>
</head>
<body>

<h1>We got fish n shit</h1>

<c:forEach var="fish" items="${fishList}">
<li>${fish.name}</li>
</c:forEach>
</body>
</html>
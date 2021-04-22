<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="com.cwbi.login.model.entities.*"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css"/>
<meta charset="ISO-8859-1">
<title>welcome ${user.username}</title>
</head>
<body>
<div class='col' style="align-content:center;padding:1em">
<div class='row' style="text-align:center;padding:1em">
<div class='col' style="align-content:center;padding:1em">
<h1>Hello ${user.username}</h1>
</div>
</div>
<div class='row' style="text-align:center;padding:1em">
<div class='col' style="align-content:center;padding:1em">
<form action="/logout" method="post">
<input type="submit" value="Logout"/>
</form>
</div>
</div>
</div>
</body>
</html>
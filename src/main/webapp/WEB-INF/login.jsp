<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<script src="https://cdnjs.cloudflare.com/ajax/libs/crypto-js/4.0.0/core.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/crypto-js/3.1.9-1/md5.js"></script>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<link rel="stylesheet" href="css/style.css"/>
		<title>Login</title>
	</head>
    <body>
    	<div class='row full' style="text-align:center;padding:1em">
    	<div class='col' style="align-content:center;padding:1em">
    	<div class='row' style="text-align:center;padding:1em">
    	<div class='col' style="align-content:center;padding:1em">
    	<h1 class='text-center'>Login page</h1>
    	<div id="err" style="color:white;font-size:2em">
        </div>
    	</div>
    	</div>
        <div class='row' style="text-align:center;padding:1em">
        <div class='col' style="align-content:center;padding:1em">
            <form action="/check" method="post" onsubmit='return check();'id='loginform'>
                <div class="labels">Name:</div>
                <input type="text" name="name"/>
                <br/><br/>
                <div class="labels">password:</div>
                <input type="password" name="password"/>
                <br/><br/>
                <input type="submit" value="Submit"/>
                <input type="reset" value="Reset"/>
            </form>
        </div>
        </div>
        </div>
        </div>
    	<script src="loginHelpers.js" /></script>
    </body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/BTT4/register" method="post">
		<div class="container">
			<h1>Register</h1>
			<p>Please fill in this form to create an account.</p>
			<hr>

			<label for="email"><b>User name</b></label> <input type="text"
				placeholder="Enter User name" name="uname" required>

			<label for="psw"><b>Password</b></label> <input type="password"
				placeholder="Enter Password" name="psw" required>
				
			<label for="fullname"><b>Họ tên</b></label> <input type="text"
				placeholder="Enter Họ tên" name="fullname" required>
			<hr>

			<button type="submit" class="registerbtn">Register</button>
		</div>

		<div class="container signin">
			<p>
				Already have an account? <a href="http://localhost:8080/BTT4/views/login.jsp">Sign in</a>.
			</p>
		</div>
	</form>
</body>
</html>
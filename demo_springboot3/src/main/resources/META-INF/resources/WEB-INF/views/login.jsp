<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<%@ taglib prefix="fn" uri="jakarta.tags.functions"%>

<c:if test="${alert !=null}">
	<h3 class="alert alert-danger">${alert}</h3>
</c:if>
<div class="main">
	<div class="container">
		<div class="col-md-9 col-sm-9">
			<h1>Login</h1>
			<div class="content-form-page">
				<div class="row">
					<div class="col-md-7 col-sm-7">
						<form class="form-horizontal form-without-legend" role="form"
							action="/BTT4/login" method="post">
							<div class="form-group">
								<label for="uname" class="col-lg-4 control-label" >Username
									<span class="require">*</span>
								</label>
								<div class="col-lg-8">
									<input type="text" class="form-control" name="uname">
								</div>
							</div>
							<div class="form-group">
								<label for="psw" class="col-lg-4 control-label">Password
									<span class="require">*</span>
								</label>
								<div class="col-lg-8">
									<input type="password" class="form-control" name="psw">
								</div>
							</div>
							<div class="row">
								<div class="col-lg-8 col-md-offset-4 padding-left-0">
									<a href="${pageContext.request.contextPath}/forgotpassword">Forget Password?</a>
								</div>
							</div>
							<div class="row">
								<div
									class="col-lg-8 col-md-offset-4 padding-left-0 padding-top-20">
									<button type="submit" class="btn btn-primary">Login</button>
								</div>
							</div>
							<div class="row">
								<div
									class="col-lg-8 col-md-offset-4 padding-left-0 padding-top-10 padding-right-30">
									<hr>
									<div class="login-socio">
										<p class="text-muted">or login using:</p>
										<ul class="social-icons">
											<li><a href="#" data-original-title="facebook"
												class="facebook" title="facebook"></a></li>
											<li><a href="#" data-original-title="Twitter"
												class="twitter" title="Twitter"></a></li>
											<li><a href="#" data-original-title="Google Plus"
												class="googleplus" title="Google Plus"></a></li>
											<li><a href="#" data-original-title="Linkedin"
												class="linkedin" title="LinkedIn"></a></li>
										</ul>
									</div>
								</div>
							</div>
						</form>
					</div>
					<div class="col-md-4 col-sm-4 pull-right">
						<div class="form-info">
							<h2>
								<em>Important</em> Information
							</h2>
							<p>Duis autem vel eum iriure at dolor vulputate velit esse
								vel molestie at dolore.</p>

							<button type="button" class="btn btn-default">More
								details</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>



<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/BTT4/login" method="post">
		<c:if test="${alert !=null}">
			<h3 class="alert alertdanger">${alert}</h3>
		</c:if>
		<div class="container">
			<label for="uname"><b>Username</b></label> <input type="text"
				placeholder="Enter Username" name="uname" required> <label
				for="psw"><b>Password</b></label> <input type="password"
				placeholder="Enter Password" name="psw" required>

			<button type="submit">Login</button>
			<label> <input type="checkbox" checked="checked"
				name="remember"> Remember me
			</label>
		</div>

		<div class="container" style="background-color: #f1f1f1">
			<button type="button" class="cancelbtn">Cancel</button>
			<span class="psw">Forgot <a href="#">password?</a></span>
		</div>
	</form>
</body>
</html> --%>
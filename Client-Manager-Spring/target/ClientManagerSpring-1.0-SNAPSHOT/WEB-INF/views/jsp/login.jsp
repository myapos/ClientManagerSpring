<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Login Page</title>
<spring:url value="/resources/core/css/my.css" var="coreCss" />
<spring:url value="/resources/core/css/bootstrap.min.css"
	var="bootstrapCss" />
<link href="${bootstrapCss}" rel="stylesheet" />
<link href="${coreCss}" rel="stylesheet" />

<spring:url value="/resources/core/js/my.js" var="coreJs" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

<spring:url value="/resources/core/js/bootstrap.min.js"
	var="bootstrapJs" />

<script src="${coreJs}"></script>
<script src="${bootstrapJs}"></script>

</head>
<body onload='document.loginForm.username.focus();'>


	<div id="root">
		<div class="login-box">
			<div class="inner">
				<c:if test="${not empty error}">
					<div class="error">${error}</div>
				</c:if>
				<c:if test="${not empty msg}">
					<div class="msg">${msg}</div>
				</c:if>
				<div class="container">
					<div class="row">
						<div class="col-xs-10">
							<legend>
								Παρακαλώ εισάγετε τα στοιχεία σας 
							</legend>
						</div>
						<div class="col-xs-2">
								<span class="back">
									<a href="<c:out value="${index}"/>">Πίσω</a>
								</span>
						</div>
					</div>

					<form name='loginForm' role="form" class="form-inline"
						action="<c:url value='/j_spring_security_check' />" method='POST'>
						<div class="form-group">
							<div class="container">
								<div class="row">
									<div class="col-xs-2">
										Όνομα χρήστη: <input class="form-control" type='text'
											name='username' id="usrnm" /> Συνθηματικό: <input
											class="form-control" type='password' name='password'
											id="pswrd" />
									</div>
								</div>
								<div class="row">
									<div class="col-xs-2">
										<input class="btn btn-default" name="submit" type="submit"
											value="Σύνδεση" />
									</div>
								</div>
							</div>
						</div>
						<!--end of form container-->
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
					</form>
				</div>
				<!-- end of inner -->
			</div>

		</div>
</body>
</html>
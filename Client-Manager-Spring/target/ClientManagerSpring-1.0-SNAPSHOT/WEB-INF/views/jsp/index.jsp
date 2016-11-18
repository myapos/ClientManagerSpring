<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Home Page</title>
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
<body>


	<div id="welcome-root">
		<div class="welcome-login-box">
			<div class="welcome-inner">
				<h1>Καλωσήρθατε στη διαχείριση πελατών του Ferrum Gym</h1>
				<h4>
					Επιλέξτε
					<c:url var="login" value="/login">
					</c:url>
					<a href="<c:out value="${login}"/>">σύνδεση</a> για να προχωρήσετε
				</h4>
				<div class="signature">
					<c:url var="mail" value="mailto:myapos@gmail.com"></c:url>
					Στοιχεία επικοινωνίας προγραμματιστή: <a
						href="<c:out value="${mail}"/>">myapos@yahoo.com</a><br> v:
					1.0 @ 2016
				</div>
			</div>
			<!-- end of inner -->
		</div>

	</div>

</body>
</html>
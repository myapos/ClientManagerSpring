<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Admin Page</title>
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
	<div id="root">
		<div class="login-box">
			<div class="inner">
				<div class="container">
					<div class="row">
						<div class="col-xs-10">
							<legend>${title} ${message}, καλωσήρθες διαχειριστή :
								${pageContext.request.userPrincipal.name}</legend>
						</div>
						<div class="col-xs-2">
							<span class="logout"> <c:url
									value="/j_spring_security_logout" var="logoutUrl" />
								<form action="${logoutUrl}" method="post" id="logoutForm">
									<input type="hidden" name="${_csrf.parameterName}"
										value="${_csrf.token}" />
								</form> <script>
									
										function formSubmit() {
											document.getElementById("logoutForm").submit();
										}
										
									</script> <c:if test="${pageContext.request.userPrincipal.name != null}">
									<a href="javascript:formSubmit()"> Αποσύνδεση</a>
								</c:if> </span>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-10">
							<p>Οδηγίες χρήσης και περιγραφή του εργαλείου εδώ</p>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-10">
							<div>
								<!-- Nav tabs -->
								<ul class="nav nav-tabs" role="tablist">
									<li role="presentation" class="active"><a href="#clients"
										aria-controls="clients" role="tab" data-toggle="tab">Πελατολόγιο</a></li>
									<li role="presentation"><a href="#addclient"
										aria-controls="addclient" role="tab" data-toggle="tab">Προσθήκη</a>
									</li>
									<li role="presentation"><a href="#deleteclient"
										aria-controls="deleteclient" role="tab" data-toggle="tab">Διαγραφή</a>
									</li>
									<li role="presentation"><a href="#updateclient"
										aria-controls="updateclient" role="tab" data-toggle="tab">Ενημέρωση</a>
									</li>
									<li role="presentation"><a href="#searchclient"
										aria-controls="searchclient" role="tab" data-toggle="tab">Αναζήτηση</a>
									</li>
									<li role="presentation"><a href="#createclasses"
										aria-controls="createclasses" role="tab" data-toggle="tab">Δημιουργία τμημάτων</a>
									</li>
									<li role="presentation"><a href="#io"
										aria-controls="IO" role="tab" data-toggle="tab">Εισαγωγή-Εξαγωγή</a>
									</li>
								</ul>

								<!-- Tab panes -->
								<div class="tab-content">
									<div role="tabpanel" class="tab-pane active" id="clients">
										<h4>1</h4>
										<p><c:url var="clients" value="/clients">
											</c:url>
											<iframe name="clients"
												src="<c:out value="${clients}"/>"
												width="100%" ></iframe></p>
									</div>
									<div role="tabpanel" class="tab-pane" id="addclient">
										<h4>2</h4>
										<p><c:url var="adduser" value="/addclient">
											</c:url>
											<iframe name="adduser"
												src="<c:out value="${adduser}"/>"
												width="100%" ></iframe></p>
									</div>
									<div role="tabpanel" class="tab-pane" id="deleteclient">
										<h4>3</h4>
										<p>
										<c:url var="deleteclient" value="/deleteclient">
											</c:url><iframe name="deleteclient"
												src="<c:out value="${deleteclient}"/>"
												width="100%" ></iframe></p>
									</div>
									<div role="tabpanel" class="tab-pane" id="updateclient">
										<h4>4</h4>
										<p><c:url var="updateclient" value="/updateclient">
											</c:url>
											<iframe name="updateclient"
												src="<c:out value="${updateclient}"/>"
												width="100%" ></iframe></p>
									</div>
									<div role="tabpanel" class="tab-pane" id="searchclient">
										<h4>5</h4>
										<p><c:url var="searchclient" value="/searchclient">
											</c:url>
											<iframe name="searchclient"
												src="<c:out value="${searchclient}"/>"
												width="100%" ></iframe></p>	
									</div>
									<div role="tabpanel" class="tab-pane" id="createclasses">
										<h4>6</h4>
										<p>
											<c:url var="createclasses" value="/createclasses">
											</c:url>
											<iframe name="createclasses"
												src="<c:out value="${createclasses}"/>"
												width="100%" ></iframe>
										</p>
									</div> 
									<div role="tabpanel" class="tab-pane" id="io">
										<h4>7</h4>
										<p>
											<c:url var="io" value="/io">
											</c:url>
											<iframe name="io"
												src="<c:out value="${io}"/>"
												width="100%" ></iframe>
										</p>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
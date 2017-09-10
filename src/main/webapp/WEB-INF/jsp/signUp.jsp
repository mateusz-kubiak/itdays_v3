<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<title>ŁDI - rejestracja</title>
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

/* Add a gray background color and some padding to the footer */
footer {
	background-color: #f2f2f2;
	padding: 25px;
}
</style>
</head>

<body>

	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"></a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li><a href="<spring:url value="/" />"> </span>  Home </a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Informacje <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#"></a></li>
							<li><a href="<spring:url value="/information" />"> </span>  O wydarzeniu </a></li>
							<li><a href="<spring:url value="/speakerList" />"> </span>  Prelegenci </a></li>
						</ul>
					</li>
					<li><a href="#">Agenda</a></li>
					<li><a href="<spring:url value="sponsors" />"> </span>  Sponsorzy</a></li>
					<li><a href="<spring:url value="contact" />"> </span>  Kontakt</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="<spring:url value="/signUp" />"><span class="glyphicon glyphicon-user">   </span>  Zarejestruj sie</a></li>
					<li><a href="<spring:url value="/login"  />"><span class="glyphicon glyphicon-log-in"> </span> Zaloguj sie     </a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="jumbotron">
		<div class="container text-center">
			<h1>${eventName}</h1>
			<p>${eventDate}</p>
			<p>TUTAJ SIĘ ZAREJESTRUJESZ</p>
		</div>
	</div>

	
	
	
	
	
	
	
	
	
	<section class="container">
		<form:form  modelAttribute="newUser" class="form-horizontal">
			<fieldset>
				<legend>Zarejestruj się</legend>

				<%-- <form:errors path="*" cssClass="alert alert-danger" element="div"/>
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="userId"><spring:message code="addUser.form.userId.label"/></label>
					<div class="col-lg-10">
						<form:input id="userId" path="id" type="text" class="form:input-large"/>
					</div>
				</div> --%>

				<div class="form-group">
					<label class="control-label col-lg-2" for="name">Imie</label>
					<div class="col-lg-10">
						<form:input id="firstName" path="firstName" type="text" class="form:input-large" />
						<%-- <form:errors path="firstName" cssClass="text-danger"/> --%>
						<form:errors path="firstName" />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="unitPrice">Nazwisko</label>
					<div class="col-lg-10">
						<div class="form:input-prepend">
							<form:input id="lastName" path="lastName" type="text" class="form:input-large"/>
							<%-- <form:errors path="lastName" cssClass="text-danger"/> --%>
							<form:errors path="lastName" />
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="description">Email</label>
					<div class="col-lg-10">
						<form:input id="email" path="email" type="text" class="form:input-large"/>
						<%-- <form:errors path="email" cssClass="text-danger"/> --%>
						<form:errors path="email" />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="description">Telefon</label>
					<div class="col-lg-10">
						<form:input id="phone" path="phone" type="text" class="form:input-large"/>
						<%-- <form:errors path="phone" cssClass="text-danger"/> --%>
						<form:errors path="phone" />
					</div>
				</div>
				
 
				<div class="form-group">
					<label class="control-label col-lg-2" for="condition">Status</label>
					<div class="col-lg-10">
						<form:radiobutton path="userStatus" value="student" /> Student		
						<form:radiobutton path="userStatus" value="itSpecialist" /> Specjalista IT 		
						<form:radiobutton path="userStatus" value="enterpreneur" /> Przedsiębiorca
						<%-- <form:errors path="userStatus" cssClass="text-danger"/> --%>
						<form:errors path="userStatus" />
					</div> 
				</div>
				
				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-10">
						<input type="submit" id="btnAdd" class="btn btn-primary" value ="Zarejestruj" />
						<!-- <input type="submit" id="btnAdd" class="btn btn-primary" value ="Zarejestruj" onClick=${registration}/> -->
						<p>  </p>
					</div>
				</div>
				
			</fieldset>
		</form:form>
	</section>
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	<div class="container-fluid bg-3 text-center">
		<!-- <h3>Some of my Work</h3> -->
	<br>
	<br>

	<footer class="container-fluid text-center">
		<p>Rejestracja to dobra decyzja</p>
	</footer>

</body>

</html>

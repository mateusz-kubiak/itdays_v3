<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<title>ŁDI - prelegenci</title>
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
					<li><a href="<spring:url value="lectureList" />"> </span>  Agenda</a></li>
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
			<p>Nasi prelegenci</p>
		</div>
	</div>

	<div class="container-fluid bg-3 text-center">
		<!-- <h3>Nasi prelegenci</h3> -->
		<br>
		<div class="row">
			<div class="col-sm-3">
				<img src="<c:url value="/src/main/resources/static/images/prelegent_1.jpg"></c:url>" width="428" height="391" alt="image"  style = "width:100%"/>
				<img th:src="@{/static/images/prelegent_1.jpg}" />
				<p>Kilka słów o prelegencie nr 1</p>
			</div>
			<div class="col-sm-3">
				<img src="<c:url value="/main/resources/static/images/prelegent_1.jpg"></c:url>" width="428" height="391" alt="image"  style = "width:100%"/>
				<p>Kilka słów o prelegencie nr 2</p>
			</div>
			<div class="col-sm-3">
				<img src="<c:url value="/resources/static/images/prelegent_1.jpg"></c:url>" width="428" height="391" alt="image"  style = "width:100%"/>
				<p>Kilka słów o prelegencie nr 3</p>
			</div>
			<div class="col-sm-3">
				<img src="<c:url value="/static/images/prelegent_1.jpg"></c:url>" width="428" height="391" alt="image"  style = "width:100%"/>
				<p>Kilka słów o prelegencie nr 4</p>
			</div>
		</div>
	</div>
	<br>

	<div class="container-fluid bg-3 text-center">
		<div class="row">
			<div class="col-sm-3">
				<img src="<c:url value="/spring-boot-sample-web-jsp/src/main/resources/static/images/prelegent_8.jpg"></c:url>" width="428" height="391" alt="image"  style = "width:100%"/>
				<p>Kilka słów o prelegencie nr 5</p>
			</div>
			<div class="col-sm-3">
				<img src="<c:url value="/main/resource/prelegent_1.jpg"></c:url>" width="428" height="391" alt="image"  style = "width:100%"/>
				<p>Kilka słów o prelegencie nr 6</p>
			</div>
			<div class="col-sm-3">
				<img src="<c:url value="/resource/prelegent_1.jpg"></c:url>" width="428" height="391" alt="image"  style = "width:100%"/>
				<p>Kilka słów o prelegencie nr 7</p>
			</div>
			<div class="col-sm-3">
				<img src="<c:url value="/prelegent_8.jpg"></c:url>" width="428" height="391" alt="image"  style = "width:100%"/>
				<p>Kilka słów o prelegencie nr 8</p>
			</div>
		</div>
	</div>
	<br>
	<br>

	<footer class="container-fluid text-center">
		<p>Dołącz do tego wspaniałego wydarzenia i już dziś sie zarejestruj</p>
	</footer>

</body>

</html>


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
	<title>Łódzkie Dni Informatyki</title>
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
			<p>STRONA GŁÓWNA</p>
		</div>
	</div>

	<body>

<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
      <center><img src="https://pirsummedia.pl/wp-content/uploads/2016/04/malymuzyk.jpg" width="600" height="600"></center>
        <div class="carousel-caption">
          <h3>SPONDOR NR 1</h3>
          <p>Przykładowe logo sponsora nr 1</p>
        </div>
      </div>

      <div class="item">
        <center><img src="https://store.monde.pl/wp-content/uploads/2015/04/arsmedicum_logo.jpg" width="600" height="600"></center>
        <div class="carousel-caption">
          <h3>SPONDOR NR 2</h3>
          <p>Przykładowe logo sponsora nr 2</p>
        </div>
      </div>
    
      <div class="item">
        <center><img src="https://www.logocowboy.com/wp-content/uploads/2016/01/sandersonlawfirm2-600x600.png" width="600" height="600"></center>
        <div class="carousel-caption">
          <h3>SPONDOR NR 3</h3>
          <p>Przykładowe logo sponsora nr 3</p>
          </div>
      </div>

      <div class="item">
        <center><img src="https://pirsummedia.pl/wp-content/uploads/2016/04/skawab.jpg" width="600" height="600"></center>
        <div class="carousel-caption">
          <h3>SPONDOR NR 4</h3>
          <p>Przykładowe logo sponsora nr 4</p>
          </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

</body>

	
	<br>
	<br>

	<footer class="container-fluid text-center">
		<p>Dołącz do tego wspaniałego wydarzenia i już dziś sie zarejestruj</p>
	</footer>

</body>

</html>


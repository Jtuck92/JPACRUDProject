<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Showing Game</title>
</head>
<jsp:include page="navbar.jsp"><jsp:param value="" name="" /></jsp:include>
<br>
<body style="background-color: #41C5EE">
	<div class="container-fluid" style="padding-top: 2in;">
		<div class="row row-no-gutters">
			<div class="col-xs-6 col-md-4"></div>
			<div class="col-xs-6 col-md-4 text-center">
			<!-- <form action="listOfVideogames.do" method="GET">
			</form> -->
				<h3 style="font-family: Impact, Charcoal, sans-serif;">
					<strong>${videogame.title}</strong>
				</h3>
			</div>
		</div>
	</div>
</body>
</html>
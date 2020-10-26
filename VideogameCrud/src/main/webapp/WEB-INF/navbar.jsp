<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Navbar</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
	<div class="w3-bar w3-light-grey w3-border w3-top ">
		<div
			style="text-align: center; border-color: #41C5EE; font-family: Impact, Charcoal, sans-serif; font-size: 55px">
			<strong>Game Index</strong>
		</div>
		<form action="/" method="GET">
			<button type="submit" class="w3-bar-item w3-button w3-mobile">
				<strong
					style="font-family: Impact, Charcoal, sans-serif; font-size: 25px">Home</strong>
			</button>
		</form>
		<form action="listOfVideogames.do" method="GET">
			<button type="submit" class="w3-bar-item w3-button w3-mobile">
				<strong
					style="font-family: Impact, Charcoal, sans-serif; font-size: 26px">List
					All Games</strong>
			</button>
		</form>
		<form action="addVideogame.do" method="GET">
			<button type="submit" class="w3-bar-item w3-button w3-mobile">
				<strong
					style="font-family: Impact, Charcoal, sans-serif; font-size: 25px">New
					Game</strong>
			</button>
		</form>
		<form action="searchVideogame.do" method=GET>
			<input type="number" min="1"
				class="w3-bar-item w3-input w3-white w3-mobile pull-right"
				name="pid" placeholder="Videogame ID">
			<button type="submit"
				class="w3-bar-item w3-button w3-blue w3-mobile pull-right">
				<strong
					style="font-family: Impact, Charcoal, sans-serif; font-size: 15px">Search</strong>
			</button>
		</form>
	</div>
	<br>
</body>
</html>
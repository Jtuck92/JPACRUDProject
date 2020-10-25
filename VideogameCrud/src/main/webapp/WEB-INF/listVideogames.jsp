<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Games</title>
<style type="text/css">
.
</style>
<link href="css/styles.css" rel="stylesheet" />
</head>
<jsp:include page="navbar.jsp"><jsp:param value="" name="" />
</jsp:include>
<body style="background-color: #41C5EE">
	<div class="container-fluid">
		<div class="row row-no-gutters">
			<div class="col-xs-6 col-md-4"></div>
			<div class="col-xs-6 col-md-4 text-center">

				<table class="table table-striped table-hover">
					<thead class="thead thead-dark">
						<tr>
							<th>Game ID</th>
							<th>Title</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${videogames}" var="theGame">
							<tr>
								<td>${theGame.id }</td>
								<td>${theGame.title }</td>
								<%-- 	<td>${theGame.id}</td>
						<td>${theGame.title}</td> --%>
							</tr>
						</c:forEach>
					</tbody>
				</table>

			</div>
			<div class="col-xs-6 col-md-4"></div>
		</div>
	</div>
</body>
</html>
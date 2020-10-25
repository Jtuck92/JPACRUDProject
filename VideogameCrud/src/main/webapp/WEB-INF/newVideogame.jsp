<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Game</title>
</head>
<jsp:include page="navbar.jsp"><jsp:param value="" name="" /></jsp:include>
<br>
<body style="background-color: #41C5EE">
	<br>
	<div class="container-fluid" style="padding-top: 2in;">
		<div class="row row-no-gutters">
			<div class="col-xs-6 col-md-4"></div>
			<div class="col-xs-6 col-md-4 text-center">
				<form:form action="addVideogame.do" method="GET"
					modelAttribute="videogame">
					<div class="form-row">
						<div class="form-group col-md-6">
							<form:label path="title">Title</form:label>
							<form:input type="text" class="form-control" required="required"
								path="title" placeholder="Title" />
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>
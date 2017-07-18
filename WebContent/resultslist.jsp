<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="styles.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>NBA Ballers</title>
<!-- Bootstrap -->
<style type="text/css">
<%@includefile="bootstrap.css"%>
</style>
 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="bootstrap.min.js"></script>
</head>
<body>
<div class="container">



<!--   <p>The result is: ${result}.0</p>  
<p>The result is: ${ball.name}.       


${ballerlist }
</p> -->










<h3>NBA Players</h3><br>

	<c:choose>
		<c:when test="${! empty ballerlist}">
			<c:forEach var="baller" items="${ballerlist}">
			<ul>
				<li>${baller.name}</li>
				<li>${baller.team}</li>
				<li>${baller.position}</li>
				<li>${baller.ppg} points per game</li>
				<li>${baller.rpg} rebounds per game</li>
				<li>${baller.apg} assists per game</li>
				<li>${baller.fieldgoalpercentage} Field Goal %</li>
				<li>${baller.salary} dollars annually</li>
			</ul>
			<br>
			<br>
			</c:forEach>
		</c:when>
		<c:otherwise>
			<p>No Player found</p>
		</c:otherwise>
	</c:choose>



  
			
</div>			
</body>
</html>
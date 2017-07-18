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
<body style= #ffffcc>
<div class="container">



<!--   <p>The result is: ${result}.0</p>  
<p>The result is: ${ball.name}.</p> -->
<h3>NBA Players</h3><br>
${baller }
	<c:choose>
		<c:when test="${! empty sessionScope.baller}">
			<ul>
				<li>${sessionScope.baller.name}</li>
				<li>${sessionScope.baller.team}</li>
				<li>${sessionScope.baller.position}</li>
				<li>${sessionScope.baller.ppg} points per game</li>
				<li>${sessionScope.baller.rpg} rebounds per game</li>
				<li>${sessionScope.baller.apg} assists per game</li>
				<li>${sessionScope.baller.fieldgoalpercentage} Field Goal %</li>
				<li>${sessionScope.baller.salary} dollars annually</li>
			</ul>
		</c:when>
		<c:otherwise>
			<p>No Player found</p>
		</c:otherwise>
	</c:choose>


<!--  <c:forEach items="${nbaplayers}" var="ball" varStatus="status">
  <tr>
    <td>${ball.position}</td>
    <td>${ball.team}</td>
    <td>${ball.position}</td>
    <td>${ball.ppg}</td>
    <td>${!ball.last ? ', ' : ''}}</td>
  </tr>
</c:forEach>


 <c:out value="${ball.nameplayer}"/>
<c:out value="${ball.team}"/>
when ${! empty ballerMap }  

   <img src="https://uproxx.files.wordpress.com/2017/05/nba-feat.jpg?quality=100&w=650" class="img-responsive" alt="Responsive image">   --> 
  
  
  

  
			
			</div>
			
			
</body>
</html>
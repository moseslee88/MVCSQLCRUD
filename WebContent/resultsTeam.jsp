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

<h1>NBA Players</h1><br>

	<!-- <c:forEach items="${baller}" var="ballers">
		<c:when test="${! empty sessionScope.baller}">
			<ul>
				<li>${sessionScope.ballers.name}</li>
				<li>${sessionScope.ballers.team}</li>
				<li>${sessionScope.ballers.position}</li>
				<li>${sessionScope.ballers.ppg} points per game</li>
				<li>${sessionScope.ballers.rpg} rebounds per game</li>
				<li>${sessionScope.ballers.apg} assists per game</li>
				<li>${sessionScope.ballers.fieldgoalpercentage} Field Goal %</li>
				<li>${sessionScope.ballers.salary} dollars annually</li>
			</ul>
		</c:when>
		<c:otherwise>
			<p>No Player found</p>
		</c:otherwise>
	</c:forEach>       
	
	
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
	
	
		<c:choose>
		<c:when test="${! empty sessionScope.ballers2}">
			<ul>
				<li>${sessionScope.ballers2.name}</li>
				<li>${sessionScope.ballers2.team}</li>
				<li>${sessionScope.ballers2.position}</li>
				<li>${sessionScope.ballers2.ppg} points per game</li>
				<li>${sessionScope.ballers2.rpg} rebounds per game</li>
				<li>${sessionScope.ballers2.apg} assists per game</li>
				<li>${sessionScope.ballers2.fieldgoalpercentage} Field Goal %</li>
				<li>${sessionScope.ballers2.salary} dollars annually</li>
			</ul>
		</c:when>
		<c:otherwise>
			<p>No Player found</p>
		</c:otherwise>
	</c:choose> 
	
		<c:forEach items="${ballerslist}" var="ball" varStatus="status">
     <c:out value="${ballerslist.name}"/> 
     <c:out value="${ballerslist.team}"/>  
     <c:out value="${ballerslist.position}"/>
     <c:out value="${ballerslist.ppg}"/>
     <c:out value="${ballerslist.rpg}"/>
     <c:out value="${ballerslist.apg}"/>
     <c:out value="${ballerslist.fieldgoalpercentage}"/>
     <c:out value="${ballerslist.salary}"/>

     <br/>
     </c:forEach>  -->
     
     
<h3>NBA Players</h3><br>
${ballerslist }
	<c:choose>
		<c:when test="${! empty sessionScope.ballerslist}">
			<ul>
			<c:forEach items="${ballerslist}" var="s">
				<li>${sessionScope.s.name}</li>
				<li>${sessionScope.s.team}</li>
				<li>${sessionScope.s.position}</li>
				<li>${sessionScope.s.ppg} points per game</li>
				<li>${sessionScope.s.rpg} rebounds per game</li>
				<li>${sessionScope.s.apg} assists per game</li>
				<li>${sessionScope.s.fieldgoalpercentage} Field Goal %</li>
				<li>${sessionScope.s.salary} dollars annually</li>
			</c:forEach>
			</ul>
		</c:when>
		<c:otherwise>
			<p>No Player found</p>
		</c:otherwise>
	</c:choose>
	
	



			</div>
			
			
</body>
</html>
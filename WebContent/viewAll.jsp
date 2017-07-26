  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
 <!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="styles.css"/>
    <title>NBA ball players</title>
  </head>
  <body>
  <h1>List of NBA Players</h1><br>


  
   <!--  <form action="GetAllNBAPlayer.do" method="GET">
      <input type="text" name="name" placeholder="Enter any letter to see List!"/><br />
      <input type="submit" value="List Players!"/><br />
    </form>           -->
    
     
    
    <c:choose>
        <c:when test="${! empty allballer}">
            <ol>
                <c:forEach items="${allballer}" var="s">
                    			<ul>
				<li>${s.id}</li>
				<li>${s.name}</li>
				<li>${s.team}</li>
				<li>${s.position}</li>
				<li>${s.ppg} points per game</li>
				<li>${s.rpg} rebounds per game</li>
				<li>${s.apg} assists per game</li>
				<li>${s.fieldgoalpercentage} Field Goal %</li>
				<li>${s.salary} dollars annually</li>
			</ul>
                 
                    <form action="PlayerDeleted.do" method="POST">
                               <input type="hidden" name="name" value="${s.name}" /> 
                               <input type="hidden" name="team" value="${s.team}" />
                               <input type="hidden" name="position" value="${s.position}" /> 
                               <input type="hidden" name="ppg" value="${s.ppg}" /> 
                               <input type="hidden" name="rpg" value="${s.rpg}" /> 
                               <input type="hidden" name="apg" value="${s.apg}" /> 
                               <input type="hidden" name="fieldgoalpercentage" value="${s.fieldgoalpercentage}" /> 
                               <input type="hidden" name="salary" value="${s.salary}" /> 
                               <input type="submit" value="RemovePlayer" class="submit"/><br><br>
                    </form>
                </c:forEach>
            </ol>
        </c:when>
        <c:otherwise>
        <p>No Player found</p>
        </c:otherwise>
        </c:choose>    
        
        <h6> ${S}</h6>
    
    </body>
    
    </html>
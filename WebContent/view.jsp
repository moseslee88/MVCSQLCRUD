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

<!--   ${allballer}   use this later-->
  
   <form action="GetAllNBAPlayer.do" method="GET">
      <input type="text" name="name" placeholder="Enter any letter to see List!"/><br />
      <input type="submit" value="List Players!"/><br />
    </form>
    
    </body>
    
    </html>
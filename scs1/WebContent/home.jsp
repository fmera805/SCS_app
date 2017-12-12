<%@ page import="java.util.*" %>
 
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>
<head>
	<h1>Student Connection Scheduler</h1>
	<link rel="stylesheet" href="css/style.css">
</head>
<body>
<form name="main1" action="index.jsp" method="get">
        <input type="submit" value="Search Course">
        </form>
<form name="main0" action="index2.jsp" method="get">
        <input type="submit" value="Search User">
        </form>

<form name="main2" action="displaycourses.jsp" method="get">
        <input type="submit" value="View All Courses">
        </form>

<form name="main3" action="displaystudents.jsp" method="get">
        <input type="submit" value="View All Users">
        </form>

<form name="main4" action="MyCourses.jsp" method="get">
        <input type="submit" value="My Course List">
        </form>



        
<DIV ALIGN="left"><form name="main0" action="index.html" method="get">
        <input type="submit" value="Logout">
    </form></DIV>

</body>
</html>
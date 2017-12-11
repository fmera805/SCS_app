<%@ page import="java.util.*" %>
 
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>

<html>
    <head>
     <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
    <div><table style="margin: 0 auto;">
    
    
 
<!--         <table width="500px" align="center"
               style="border:1px solid #000000;"> -->
        <tr>
        <td>
                <!-- <td colspan=4 align="center"
                    style="background-color:black"> -->
                    <b>COURSE SEARCH</b></td>
                    <td>
                    </td>
            </tr>
            <tr>
        <!--     <tr style="background-color:black;"> -->
                <td><b>CRN</b></td>
                <td><b>Course Name</b></td>
 
            </tr>
            <%
                int count = 0;
                String color = "#F9EBB3";
                if (request.getAttribute("piList") != null) {
                    ArrayList al = (ArrayList) request.getAttribute("piList");
                    System.out.println(al);
                    Iterator itr = al.iterator();
                    while (itr.hasNext()) {
 
                        if ((count % 2) == 0) {
                            color = "#6b6b6b";
                        }
                        count++;
                        ArrayList pList = (ArrayList) itr.next();
            %>
            <tr style="background-color:<%=color%>;">
                <td><%=pList.get(0)%></td>
                <td><%=pList.get(1)%></td>

            </tr>
            <%
                    }
                }
                if (count == 0) {
            %>
            <tr>
                <td colspan=4 align="center"
                    style="background-color:#1e1e1e"><b>No Record Found.</b></td>
            </tr>
            <%            }
            %>
        </table>
         </div>
         <div>
         <table style="margin: 0 auto;">
       <tr>
       <td><form name="main1"  method="get" action="add.jsp">
        <input type="submit" name="ter" value="add" >
    </form>
    </td>
    <td>
  
    <form name="main0" action="index.jsp" method="get">
        <input type="submit" value="Back">
        </form>
</td>
    </tr>
    </table>
  </div>
	    </body>
</html>
<%-- <!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">  
     <link rel="stylesheet" href="css/style.css">
</head>

<body>

  <div class="container">
	<table>
		<thead>
			<tr>
				<th>COURSES SEARCH</th>
				<th>CRN</th>
				<th>Course</th>
		
			</tr>
		</thead>
	
		<tbody>
			<tr>
			 <%
                int count = 0;
              //  String color = "#F9EBB3";
                if (request.getAttribute("piList") != null) {
                    ArrayList al = (ArrayList) request.getAttribute("piList");
                    System.out.println(al);
                    Iterator itr = al.iterator();
                    while (itr.hasNext()) {
 
                        if ((count % 2) == 0) {
                 
                        }
                        count++;
                        ArrayList pList = (ArrayList) itr.next();
            %>
          
                <td><%=pList.get(0)%></td>
                <td><%=pList.get(1)%></td>
                <td><%=pList.get(2)%></td>
                <td><%=pList.get(3)%></td>
            </tr>
            <%
                    }
                }
                if (count == 0) {
            %>
            <tr>
                <td colspan=4 align="center"
                    style="background-color:#eeffee"><b>No Record Found..</b></td>
            </tr>
            <%            }
            %>
			<tr>
				<td> 
				</table>      
	   <form name="main1"  method="get" action="add.jsp">
        <input type="submit" name="ter" value="add" >
    </form>
   <DIV ALIGN="left"><form name="main0" action="index.html" method="get">
        <input type="submit" value="Logout">
    </form></DIV>
    	</div>
</body>
</html> --%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

  <link rel="stylesheet" href="css/style.css">
  
<%
String id = request.getParameter("CRN");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "classes";
String userId = "root";
String password = "root";
try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>


<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="css/style.css">
</head>
<a href="home.jsp">Home</a>
<a href="index.html">Logout</a>

  <table style="margin: 0 auto;">
    
<tr>
        <td align="center">
                    <b>My Courses</b></td>
            </tr>
            <tr></tr>
            <tr>
                <td align="left">CRN</td>
                <td align="left">Course Name</td>
            </tr>
            </table>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM classes";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
	<table style="margin: 0 auto;">
		<tbody>
		
		
			<tr>
				<td align="center"><%=resultSet.getString("section") %></td>
			<td align="center"><%=resultSet.getString("Coursename") %></td>
			</tr>
		</tbody>
<% 
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<td>

<%-- <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
 
<html>
  <head>
  </head>
  <body bgcolor=383838>
    <br/><br/>
    <form method="post" name="frm" action="Search">
      <table border="0" width="300" align="center" bgcolor=888888>
        <tr><td colspan=2 style="font-size:12pt;" align="center">
        <h3>Search Courses</h3></td></tr>
        <tr><td ><b>CRN Number</b></td>
          <td>: <input  type="text" name="pid" id="pid">
        </td></tr>        
        <tr><td colspan=2 align="center">
        <input  type="submit" name="submit" value="Search">
         <input type="submit" name="ter" value="Logout"></td></tr>
      </table>
    </form>
<!--      <form name="main1"  method="get" action="index.html">
        <input type="submit" name="ter" value="Logout" >
    </form> -->
  </body>
</html>
 --%>

<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  
      <link rel="stylesheet" href="css/style.css">
</head>

<body>
<div align="right"></div>
<form name="main1"  method="get" action="index.html"></form>
<form method="post" name="frm" action="Search">
<!--  <input type="submit" name="ter" value="Logout">-->

<!-- hyperlink to bring to home page and logout -->
<a href="home.jsp">Home</a>
<a href="index.html">Logout</a>

  <div class="container">
	<table>
		<thead>
			<tr>
				<th>Course Search</th>			
		</thead>
		<tbody>
			<tr>
				<td><b>CRN Number: <input  type="text" name="pid" id="pid"><a>
				</a><a>
				</a><input  type="submit" name="submit" value="Search"><br>
				</form>
				<!-- </a><input  type="submit" name="submit" value="View all"> -->
				
			<!-- 	Need to fix to have both links linking to different locations. This is already done on searchview.jsp -->
		</b><td>

		</tr></tbody>
	</table>
</div>
  </form>
  
</body>
</html>



<html>
    <head>
     <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
    
<!-- hyperlink to bring to home page and logout -->
<a href="home.jsp">Home</a>
<a href="index.html">Logout</a>

<form action="save" method="post">
Course:<input type="text" name="name"/><br/><br/>
CRN:<input type="number" name="section"/><br/><br/>

<input type="submit" value="add"/>

</form>
</body>
<html>
<head>
<style>
body{
  	background-color: black;

  background: url("mo.jpg") no-repeat  center center fixed;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size:cover; }
  
.button {
  background-color: red;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 20%;
}
.button:hover{
	color: white;
	background-color: black;
}
 .but{
   /* Green */
   background-color: black;
  border: 5px solid white;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  border-radius: 8px;
}
.but:hover{
	color: black;
	background-color: white;
	 border: 5px solid black;
}

.container{
  		margin-top: 100px;
  		margin-bottom: 100px;
  		box-sizing  : border-box;
        border-radius: 8px;
        width: 80%;
        background-color: tomato;
        box-shadow: 0 0 16px rgb(255, 255, 255);
        font-family: 'Teko', sans-serif;
        font-size:30px;
        word-spacing: 20px;
        padding: 10px;
  	}
</style>
</head>
<body bgcolor='white'>
<%@ page import ="java.sql.*" %>
<%
    int i=1;
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("psw");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kirubha", "root", "");
    Statement st = con.createStatement();
	
	if(request.getParameter("delete")!=null)
	{String usr=request.getParameter("delete");
	Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kirubha", "root", "");
    Statement stt = conn.createStatement();

		
	}
%>
	<center><div class="container">
<% 
Date a=new Date(session.getLastAccessedTime());
String usr = (String)session.getAttribute("userid");
ResultSet rs = st.executeQuery("SELECT * from pay WHERE usr='"+usr+"' "); 
while(rs.next()){
%>  <h2>Payment Details</h2><hr>
<h3 style="padding-left:1px;"><font color='green'>Username:</font>     <%= rs.getString("usr") %></h3>
<h3 style="padding-left:1px;"><font color='green'>Companyname:</font> <%= rs.getString("companyname") %></h3>
<h3 style="padding-left:1px;"><font color='green'>Bikename:</font><%= rs.getString("bikename") %></h3>
<h3 style="padding-left:1px;"><font color='green'>Card_holder_name:</font><%= rs.getString("card_holde_name") %></h3>
<h3 style="padding-left:1px;"><font color='green'>Price:</font><%= rs.getString("price") %></h3>
<h3 style="padding-left:1px;"><font color='green'>DATE:</font><%out.println(a); %></h3>
<a href="end.html"><br><button type="submit" class="butto but">Print</button></a> 	
</div></center	>
<% 
}
%>
<br>
<center>
<form action="Books3.xml">
<a href="home.html">home</a>
</form>
</center>
</body>
</html>
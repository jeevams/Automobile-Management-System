<html>
<head>
<style>
.button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 20%;
}
.button {
   /* Green */
   background-color: white;
  border: 5px solid black;
  color: black;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  border-radius: 8px;
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

</style>
</head>
<body>
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
		stt.executeUpdate("DELETE  FROM pay WHERE usr=Rajesh");

		
	}
%>
	<table cellspacing="20" cellpadding="3" bgcolor="yellow" style="margin-left:auto; margin-right:auto;">
	<tr>
<td><b><u>USER_NAME</u></b></td>	
<td><b><u>COMPANY_NAME</u></b></td>
<td><b><u>BIKE_NAME</u></b></td>
<td><b><u></u>NAME</b></td>
<td><b><u>PRICE</u></b></td>
</tr>
<% 
ResultSet rs = st.executeQuery("select * from pay"); 
while(rs.next()){
%>
<tr>
<td><h3 style="padding-left:1px;"><%= rs.getString("usr") %></td>
<td><h3 style="padding-left:1px;"><%= rs.getString("companyname") %></td>
<td><h3 style="padding-left:1px;"><%= rs.getString("bikename") %></td>
<td><h3 style="padding-left:1px;"><%= rs.getString("card_holde_name") %></td>
<td><h3 style="padding-left:1px;"><%= rs.getString("price") %></td>


</tr>
<% 
}
%>
</table>
<br>
<center>
<a href="home.html"><br><button type="submit" class="butto but">HOME</button></a> 

</center>
</body>
</html>
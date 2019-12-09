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
%>
	<table cellspacing="20" cellpadding="3" bgcolor="tomato" style="margin-left:auto; margin-right:auto;">
	<tr>
<td><b><u>COMPANY_NAME</u></b></td>
<td><b><u>BIKE_NAME</u></b></td>
<td><b><u>CARD_HOLDER_NAME</u></b></td>
<td><b><u>PRICE</u></b></td>
</tr>
<% 
ResultSet rs = st.executeQuery("select * from pay"); 
while(rs.next()){
%>
<tr>
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
<form action="xml.html">
<input type="submit" value="Check out last year's list" class="button">
</form>
</center>
</body>
</html>
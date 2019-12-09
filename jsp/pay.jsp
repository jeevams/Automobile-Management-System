<%@ page import="java.sql.*"%>
<html>
<head>
  <title>DATA BASE CONNECTIVITY</title>
</head>
<body>  <%
  try{ 
            Class.forName("com.mysql.jdbc.Driver");  
		        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/kirubha","root","");
            out.println(" successfully connected");
			String usr1=request.getParameter("uname");
		        String companyname=request.getParameter("co1");
            String bikename=request.getParameter("bb");
            String name=request.getParameter("owne");
            String price=request.getParameter("pp");
            Statement stmt=con.createStatement();
           stmt.execute("INSERT INTO pay values('"+usr1+"','"+companyname+"','"+bikename+"','"+name+"','"+price+"')");
                                   response.sendRedirect("bill.jsp");        
 



		
     }catch(Exception e){ out.println(e);
 }  

  %>
  </body>
  </html>
  
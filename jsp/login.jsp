<html>
<body>
<%@ page import ="java.sql.*" %>
<%

    String userid = request.getParameter("name1");    
    String pwd = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kirubha", "root", "");
    Statement st = con.createStatement();
   
    ResultSet rs;
    rs = st.executeQuery("select * from signup1  where NAME='" +userid+ "' and PASSWORD='" +pwd+ "'");	
     if (rs.next()) 
        {
            
            session.setAttribute("userid", userid);
            response.sendRedirect("company.jsp");
           
        } 

    else 
         {%>
           <script type="text/javascript">
               window.alert("invalid username or password");    </script>
               <% response.sendRedirect("signup.html"); %>
       
  <%
        
        
         }

%>
</body>
</html>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Autentication</title>
    </head>
    <body>
        <%
            String id=request.getParameter("v1");
            String fin=request.getParameter("v2");
            session.setAttribute("username",id);
            out.println(id);
            out.println(fin);
           %>
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/"+"forum","root","");
              
                PreparedStatement ps=con.prepareStatement("select * from user where uname=? and password=?");
                ps.setString(1,id);
                ps.setString(2,fin);
                ResultSet rs=ps.executeQuery();
                if(rs.next())
                {
                    
                    response.sendRedirect("home.jsp");
                    
                }
                else
                {
                    response.sendRedirect("login.jsp?status=incorrect");
                }
                
            }
            catch(SQLException e)
            { }
            %>
              
    </body>
</html>

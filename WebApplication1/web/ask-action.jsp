
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
            String qtitle=request.getParameter("qtitle");
            String qcontent=request.getParameter("qcontent");
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/"+"forum","root","");
                Statement stmt=con.createStatement();
                String sql="INSERT INTO questions (Title,Content) VALUES ('"+qtitle+"','"+qcontent+"')";
                stmt.executeUpdate(sql);
                response.sendRedirect("list.jsp");             
            }
            catch(SQLException e)
            { 
                out.println(e);
            }
            %>
    </body>
</html>

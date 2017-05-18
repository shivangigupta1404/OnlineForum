<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
            String uname=request.getParameter("uname");
            String uemail=request.getParameter("uemail");
            String upass=request.getParameter("upass");
            String ugender=request.getParameter("ugender");
            String uaddress=request.getParameter("uaddress");
            String ucontact=request.getParameter("ucontact");
            session.setAttribute("uname",uname);
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/"+"forum","root","");
                Statement stmt=con.createStatement();
                String sql="INSERT INTO user (uname,password,gender,address,contact,email) VALUES ('"+uname+"','"+upass+"','"+ugender+"','"+uaddress+"','"+ucontact+"','"+uemail+"')";
                stmt.executeUpdate(sql);
                response.sendRedirect("login.jsp?status=created");           
            }
            catch(SQLException e)
            { 
                out.println(e);
            }
            %>      
    </body>
</html>

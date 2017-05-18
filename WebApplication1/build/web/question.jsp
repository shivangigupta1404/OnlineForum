<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Question</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <style>
            .main_body{
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background-image: url('java_forum/back.jpg');
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-size: 100%;
                opacity: 0.5;
                filter:alpha(opacity=20);
            }
            .navbar_custom {
               color: #FFFFFF;
               background-color: #450915;
               }
            .navbar{border-radius: 0px;}
            .navbar-inverse .navbar-brand {color:white;}
            .title {font-weight: bold;font-size: 30px;}
            .rating {font-weight: bold;font-size: 30px;}
            textarea{width:100%;height:150px;}
            .user{font-weight:bolder;}
        </style>
    </head>
    <body>
        <% 
            String status=request.getParameter("status");
            if(status!=null && !status.isEmpty()){
                if(status.equals("voted"))
                {
                    %>
                    <script>alert("You have voted For this question!!");
                    </script> 
                    <%
                }
            }
        %>
        <div class="main_body"></div>
        <nav class="navbar navbar-inverse navbar_custom">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>s
                    </button>
                    <a class="navbar-brand" href="home.jsp">DISCUSSION FORUM</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav navbar-right">
                        <li style="color:white;">
                            <a href="#" style="color:white;font-size:16px;">welcome <%=session.getAttribute("username")%></a>                 
                        </li>
                        <li>
                            <a style="color:white;"  href="logout.jsp">LOGOUT</a>
                        </li>
                    </ul>  
                </div>
            </div>
        </nav>
                        
        <div class="container">
            <div class="row">
                <div class="col-sm-10 col-sm-offset-1">
                <div class="panel panel-danger">
                    <%
                        String id=request.getParameter("id");
                        int numID = Integer.parseInt(id);
                        try
                        {
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/forum?zeroDateTimeBehavior=convertToNull","root","");
                            PreparedStatement ps=con.prepareStatement("Select * from questions where ID=?");
                            ps.setInt(1,numID);
                            ResultSet rs=ps.executeQuery();
                            String username=(String)session.getAttribute("username");
                            String path="comment-action.jsp?id="+numID;
                            String path1="vote-action.jsp?id="+numID+"&user="+username;
                            while(rs.next()){
                    %>
                            <div class="panel-heading">
                                <div class="row">    
                                    <div class="col-sm-3 text-center rating">                    
                                        <a href="<%=path1%>&vote=add">
                                            <i class="glyphicon glyphicon-triangle-top" aria-hidden="true" title="up votes" ></i>
                                        </a>
                                        </br>
                                        <%=rs.getString("votes")%></br>
                                        <a href="<%=path1%>&vote=sub">
                                            <i class="glyphicon glyphicon-triangle-bottom" aria-hidden="true" title="up votes"></i></br>
                                        </a>
                                    </div>
                                    <div class="col-sm-9">
                                        <div class="title">
                                            <%=rs.getString("title")%> 
                                        </div>
                                        <div class="content">
                                            <%=rs.getString("content")%> 
                                        </div>
                                    </div>
                                </div>
                            </div>
                    <%}
                    ps.close();%>           
                            
                            <div class="panel-body">
                    <%
                            DateFormat df = new SimpleDateFormat("dd-MM-yyyy");
                            ps=con.prepareStatement("Select * from response where QID=?");
                            ps.setInt(1,numID);
                            rs=ps.executeQuery();
                            while(rs.next()){
                    %>
                                <div class="row">  
                                    <div class="col-sm-2 user">
                                        <%=rs.getString("User")%></br>
                                        <%=df.format(rs.getDate("Date"))%>
                                    </div>
                                    <div class="col-sm-8 panel panel-success" style="border:0;">
                                        
                                      <div class="panel-heading"><%=rs.getString("comment")%>
                                      </div>
                                    </div>
                                    <div class="col-sm-2">
                                    </div>
                                </div>
                    <%}

                    %>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="panel-footer">
                                        <form action="<%=path%>" method="post">
                                            <textarea style="width:100%;" type="text" name="comment"></textarea>
                                            <button type="submit" class="btn btn-success btn-block">Post Your Answer</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                    <%    
                        }
                        catch(Exception e)
                        {
                            out.println(e);
                        }
                    %>                   
                </div>
                <div class="col-sm-2">
                </div>
                </div> <!-- End of panel -->
            </div>
        </div>
    </body>
</html>

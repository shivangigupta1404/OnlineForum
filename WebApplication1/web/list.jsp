<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! String tab="recent";%> 
<!DOCTYPE html>
<html>
    <head>
        <title>Question List</title>
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
            .navbar-inverse .navbar-brand {color:white;}
            .navbar{border-radius: 0px;}
            #tab {float:right;font-weight:bolder;}
            .ques-list{overflow-wrap: break-word;margin-top:20px;}
            .question-title {color:blue;}
            .question{border-bottom:1px solid #e4e6e8;padding:5px 1px 5px 1px;}
            .blue{color:blue;}
            #tab a {color:black;}
            .panel-body{font-size:16px;}
        </style>
    </head>
    <body>
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
                    <ul class="nav nav-tabs" id="tab">
                        <li role="presentation" id="recent"><a href="?tab=recent">Recent</a></li>
                        <li role="presentation" id="rated"><a href="?tab=rated">Top Rated</a></li>
                        <li role="presentation" id="viewed"><a href="?tab=viewed">Top Viewed</a></li>
                    </ul>
            </div>
            
            <div id="ques-list">
                <div class="container">
                    <div class ="row">
                        <div class="col-sm-12">
                            <div class="panel-group">
                                <div class="panel panel-danger">
                                    <div class="panel-body">
                                        <table class = "table table-striped">
                                            <thead>
                                                <tr>
                                                   <th class="text-center">Votes</th>
                                                   <th class="text-center">Comments</th>
                                                   <th class="text-center">Views</th>
                                                   <th>Question Title</th>
                                                </tr>
                                            </thead>
                                            <tbody >
                <% try
                    {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/forum?zeroDateTimeBehavior=convertToNull","root",""); 
                        Statement stmt=con.createStatement();
                        String type=request.getParameter("tab");
                        String sql;
                        if(type!=null && !type.isEmpty()){
                            if(type.equals("viewed"))
                            {
                                sql="SELECT * FROM `questions` order by views DESC";
                                %>
                                    <script>
                                        document.getElementById("viewed").className="active";
                                    </script>
                                <%
                            }
                            else if(type.equals("rated"))
                            {
                                sql="SELECT * FROM `questions` order by votes DESC";
                                %>
                                    <script>
                                        document.getElementById("rated").className="active";
                                    </script>
                                <%
                            }
                            else
                            {    
                                sql="SELECT * FROM `questions` order by Date DESC";
                                %>
                                    <script>
                                        document.getElementById("recent").className="active";
                                    </script>
                                <%
                            }
                        }
                        else
                            sql="SELECT * FROM `questions` order by Date DESC";                         
                        ResultSet rs=stmt.executeQuery(sql); 
                        while(rs.next())
                        {
                            String s=rs.getString("title");
                            int votes=rs.getInt("votes");
                            int id=rs.getInt("ID");
                            int comment=rs.getInt("comment");
                            int views=rs.getInt("views");
                            String path="view-action.jsp?id="+id;
                %>
                                                <tr>
                                                   <td class="text-center"><%=votes%>&nbsp;&nbsp;&nbsp;<i class="glyphicon glyphicon-thumbs-up blue" aria-hidden="true" title="up votes"></i> </td>
                                                   <td class="text-center"><%=comment%>&nbsp;&nbsp;&nbsp;<i class="glyphicon glyphicon-comment blue" aria-hidden="true" title="response"></i></td>
                                                   <td class="text-center"><%=views%>&nbsp;&nbsp;&nbsp;<i class="glyphicon glyphicon-eye-open blue" aria-hidden="true" title="Views"></i></td>
                                                   <td class="ques-list"><a href=<%=path%>><%=s%></a></td> 
                                                </tr>
                <%
                         }
                    }
                    catch(Exception e)
                    {
                        out.println(e);
                    }
                %>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="footer navbar-fixed-bottom text-center navbar_custom" style="background-color:#45015;color:#fff;">
          &copy; DISCUSSION FORUM
        </div>
    </body>
</html>

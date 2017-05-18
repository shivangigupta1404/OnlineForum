
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
        <script src="jquery-2.1.3.js"></script>     
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href='https://fonts.googleapis.com/css?family=Lobster' rel='stylesheet' type='text/css'>	
        
        <style type="text/css">
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
         .panel-default>.panel-heading {color:darkred;}
         .navbar-inverse .navbar-brand {color:white;}
         .navbar{border-radius: 0px;}
         .description{margin-top: 90px;font-size: 22px;font-weight: bold;color:darkblue;font-style: italic;
         font-family:cursive;
         line-height: 40px;padding:10px;}
         .transparent-style{
    background-color: rgba(255, 255, 255, .4);
}
         </style>
    </head>
    <body>
        <% 
            String status=request.getParameter("status");
            if(status!=null && !status.isEmpty()){
                if(status.equals("created"))
                {
                    %>
                    <script>alert("You are successfully registered!");</script> 
                    <%
                }
                if(status.equals("incorrect"))
                {
                    %>
                    <script>alert("Invalid UserId OR Password!!");</script> 
                    <%
                }
            }
        %>
        <div class="main_body">
        </div>
        <nav   class="navbar navbar-inverse navbar_custom ">
        <div class="container-fluid">
          <div class="navbar-header" style="padding-left:8%;">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand nn" href="#">DISCUSSION FORUM</a>
          </div>
        <div class="collapse navbar-collapse" id="myNavbar">
          <ul class="nav navbar-nav">
            <li><a style="color:lightgrey;"  href="#">ABOUT US</a></li>

          </ul>
          <form class="navbar-form navbar-right" style="padding-right:8%;" action="signin-action.jsp" method="post">
      <div class="form-group">
        <input type="username" class="form-control" placeholder="username" name="v1">
        <input type="password" class="form-control" placeholder="Password" name="v2">
      </div>
      <button type="submit" class="btn btn-danger">LOGIN</button>
    </form>
        </div>
      </div>
    </nav>


        <div class="container">
            <div class="row">
                <div class="col-md-3">
                  <div class="panel panel-default">
                      <div class="panel-heading text-center brown"><strong>REGISTER</strong></div>

                    <div class="panel-body">
                  <form action="signup-action.jsp" method="post">
                  <div class="form-group">
                  <input type="text" class="form-control"  placeholder="Name" name="uname" required="true">
                  </div>
                  <div class="form-group">
                  <input type="email"   class="form-control" placeholder="Email address"  name="uemail" required="true">
                  </div>  
                  <div class="form-group">
                    <input type="password" class="form-control"  placeholder="Password"  name="upass">
                  </div>
                  <div class="form-group text-center">
                      <div class="btn-group" data-toggle="buttons">
                        <label class="btn btn-default active">
                          <input type="radio" name="ugender" id="option1" value="Female" autocomplete="off" checked> Female
                        </label>
                        <label class="btn btn-default">
                          <input type="radio" name="ugender" id="option2" value="Male" autocomplete="off"> Male
                        </label>
                      </div>
                      </div>
                        <div class="form-group">
                        <input type="text" class="form-control"  placeholder="Address"   name="uaddress">
                        </div>

                        <div class="form-group">
                            <input type="text" class="form-control"  placeholder="Contact Number" name="ucontact" maxlength="10" minlength="8">
                        </div>

                          <div class="text-center">
                        <button type="submit" class="btn btn-success">Sign Up</button>
                      </div>
              </form>
                    </div>
                  </div>
                </div>
                <div class="col-md-6 col-md-offset-2">
                    <div class="description transparent-style">
                        A Question-Answer Site for Technical Enthusiast. </br>
                        Asked and answered by YOU. </br>
                        We strive to build a detailed library of answers to every technical programming question. </br>
                        </br>
                        ASK YOUR MIND OUT!!! </br>
                    </div>
                </div>
            </div>
      </div>
 
    
    <div class="footer navbar-fixed-bottom text-center navbar_custom" style="background-color:#45015;color:#fff;">
        &copy; DISCUSSION FORUM
    </div>
    </body>
</html>

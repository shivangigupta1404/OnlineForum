<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
         .navbar-inverse .navbar-brand {color:white;}
         .panel-heading{text-align: center;}
         .options{margin-top: 100px;}
         .navbar{border-radius: 0px;}
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

 <div class="container options">
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-danger">
        <div class="panel-heading"><strong>Ask A Question</strong></div>
        <div class="panel-body"><img src="java_forum/ask.jpg"  class="img-responsive"  style="width:100%;height:210px;" alt="Image">

</div>
        <div class="panel-footer">
            <a role='button' class='btn btn-primary btn-block' href="ask.jsp">SELECT</a>
          </div>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="panel panel-danger">
        <div class="panel-heading"><strong>View Questions</strong></div>
        <div class="panel-body"><img src="java_forum/view.jpg" class="img-responsive" style="width:100%;height:210px;" alt="Image"></div>
        <div class="panel-footer"> 
         <a role='button' class='btn btn-primary btn-block' href="list.jsp">SELECT</a>
        </div>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="panel panel-danger">
        <div class="panel-heading"><strong>Start A Discussion</strong></div>
        <div class="panel-body"><img src="java_forum/questions.jpg" class="img-responsive" style="width:100%;height:210px;" alt="Image"></div>
       <div class="panel-footer">
         <a role='button' class='btn btn-primary btn-block' href="#">SELECT</a>
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

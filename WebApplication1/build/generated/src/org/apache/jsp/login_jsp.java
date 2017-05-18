package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Welcome</title>\n");
      out.write("        <script src=\"jquery-2.1.3.js\"></script>     \n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("        <link href='https://fonts.googleapis.com/css?family=Lobster' rel='stylesheet' type='text/css'>\t\n");
      out.write("        \n");
      out.write("        <style type=\"text/css\">\n");
      out.write("    .main_body{\n");
      out.write("        position: fixed;\n");
      out.write("        top: 0;\n");
      out.write("        left: 0;\n");
      out.write("        width: 100%;\n");
      out.write("        height: 100%;\n");
      out.write("        background-image: url('java_forum/back.jpg');\n");
      out.write("        background-repeat: no-repeat;\n");
      out.write("        background-attachment: fixed;\n");
      out.write("        background-size: 100%;\n");
      out.write("        opacity: 0.5;\n");
      out.write("        filter:alpha(opacity=20);\n");
      out.write("         }\n");
      out.write("         .navbar_custom {\n");
      out.write("            color: #FFFFFF;\n");
      out.write("            background-color: #450915;\n");
      out.write("            }\n");
      out.write("         .panel-default>.panel-heading {color:darkred;}\n");
      out.write("         .navbar-inverse .navbar-brand {color:white;}\n");
      out.write("         .navbar{border-radius: 0px;}\n");
      out.write("         .description{margin-top: 90px;font-size: 22px;font-weight: bold;color:darkblue;font-style: italic;\n");
      out.write("         font-family:cursive;\n");
      out.write("         line-height: 40px;padding:10px;}\n");
      out.write("         .transparent-style{\n");
      out.write("    background-color: rgba(255, 255, 255, .4);\n");
      out.write("}\n");
      out.write("         </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
 
            String status=request.getParameter("status");
            if(status!=null && !status.isEmpty()){
                if(status.equals("created"))
                {
                    
      out.write("\n");
      out.write("                    <script>alert(\"You are successfully registered!\");</script> \n");
      out.write("                    ");

                }
                if(status.equals("incorrect"))
                {
                    
      out.write("\n");
      out.write("                    <script>alert(\"Invalid UserId OR Password!!\");</script> \n");
      out.write("                    ");

                }
            }
        
      out.write("\n");
      out.write("        <div class=\"main_body\">\n");
      out.write("        </div>\n");
      out.write("        <nav   class=\"navbar navbar-inverse navbar_custom \">\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("          <div class=\"navbar-header\" style=\"padding-left:8%;\">\n");
      out.write("            <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#myNavbar\">\n");
      out.write("              <span class=\"icon-bar\"></span>\n");
      out.write("              <span class=\"icon-bar\"></span>\n");
      out.write("              <span class=\"icon-bar\"></span>\n");
      out.write("            </button>\n");
      out.write("            <a class=\"navbar-brand nn\" href=\"#\">DISCUSSION FORUM</a>\n");
      out.write("          </div>\n");
      out.write("        <div class=\"collapse navbar-collapse\" id=\"myNavbar\">\n");
      out.write("          <ul class=\"nav navbar-nav\">\n");
      out.write("            <li><a style=\"color:lightgrey;\"  href=\"#\">ABOUT US</a></li>\n");
      out.write("\n");
      out.write("          </ul>\n");
      out.write("          <form class=\"navbar-form navbar-right\" style=\"padding-right:8%;\" action=\"signin-action.jsp\" method=\"post\">\n");
      out.write("      <div class=\"form-group\">\n");
      out.write("        <input type=\"username\" class=\"form-control\" placeholder=\"username\" name=\"v1\">\n");
      out.write("        <input type=\"password\" class=\"form-control\" placeholder=\"Password\" name=\"v2\">\n");
      out.write("      </div>\n");
      out.write("      <button type=\"submit\" class=\"btn btn-danger\">LOGIN</button>\n");
      out.write("    </form>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </nav>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-3\">\n");
      out.write("                  <div class=\"panel panel-default\">\n");
      out.write("                      <div class=\"panel-heading text-center brown\"><strong>REGISTER</strong></div>\n");
      out.write("\n");
      out.write("                    <div class=\"panel-body\">\n");
      out.write("                  <form action=\"signup-action.jsp\" method=\"post\">\n");
      out.write("                  <div class=\"form-group\">\n");
      out.write("                  <input type=\"text\" class=\"form-control\"  placeholder=\"Name\" name=\"uname\" required=\"true\">\n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"form-group\">\n");
      out.write("                  <input type=\"email\"   class=\"form-control\" placeholder=\"Email address\"  name=\"uemail\" required=\"true\">\n");
      out.write("                  </div>  \n");
      out.write("                  <div class=\"form-group\">\n");
      out.write("                    <input type=\"password\" class=\"form-control\"  placeholder=\"Password\"  name=\"upass\">\n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"form-group text-center\">\n");
      out.write("                      <div class=\"btn-group\" data-toggle=\"buttons\">\n");
      out.write("                        <label class=\"btn btn-default active\">\n");
      out.write("                          <input type=\"radio\" name=\"ugender\" id=\"option1\" value=\"Female\" autocomplete=\"off\" checked> Female\n");
      out.write("                        </label>\n");
      out.write("                        <label class=\"btn btn-default\">\n");
      out.write("                          <input type=\"radio\" name=\"ugender\" id=\"option2\" value=\"Male\" autocomplete=\"off\"> Male\n");
      out.write("                        </label>\n");
      out.write("                      </div>\n");
      out.write("                      </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                        <input type=\"text\" class=\"form-control\"  placeholder=\"Address\"   name=\"uaddress\">\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                        <input type=\"text\" class=\"form-control\"  placeholder=\"Contact Number\"   name=\"ucontact\">\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                          <div class=\"text-center\">\n");
      out.write("                        <button type=\"submit\" class=\"btn btn-success\">Sign Up</button>\n");
      out.write("                      </div>\n");
      out.write("              </form>\n");
      out.write("                    </div>\n");
      out.write("                  </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-md-6 col-md-offset-2\">\n");
      out.write("                    <div class=\"description transparent-style\">\n");
      out.write("                        A Question-Answer Site for Technical Enthusiast. </br>\n");
      out.write("                        Asked and answered by YOU. </br>\n");
      out.write("                        We strive to build a detailed library of answers to every technical programming question. </br>\n");
      out.write("                        </br>\n");
      out.write("                        ASK YOUR MIND OUT!!! </br>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("      </div>\n");
      out.write(" \n");
      out.write("    \n");
      out.write("    <div class=\"footer navbar-fixed-bottom text-center navbar_custom\" style=\"background-color:#45015;color:#fff;\">\n");
      out.write("        &copy; DISCUSSION FORUM\n");
      out.write("    </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

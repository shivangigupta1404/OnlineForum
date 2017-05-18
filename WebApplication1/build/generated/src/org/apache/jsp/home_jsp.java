package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Welcome</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
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
      out.write("         .navbar-inverse .navbar-brand {color:white;}\n");
      out.write("         .panel-heading{text-align: center;}\n");
      out.write("         .options{margin-top: 100px;}\n");
      out.write("         .navbar{border-radius: 0px;}\n");
      out.write("         </style>\n");
      out.write("    </head>\n");
      out.write("    <body>       \n");
      out.write("        <div class=\"main_body\"></div>\n");
      out.write("        <nav class=\"navbar navbar-inverse navbar_custom\">\n");
      out.write("            <div class=\"container-fluid\">\n");
      out.write("                <div class=\"navbar-header\">\n");
      out.write("                    <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#myNavbar\">\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>s\n");
      out.write("                    </button>\n");
      out.write("                    <a class=\"navbar-brand\" href=\"home.jsp\">DISCUSSION FORUM</a>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"myNavbar\">\n");
      out.write("                    <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                        <li style=\"color:white;\">\n");
      out.write("                            <a href=\"#\" style=\"color:white;font-size:16px;\">welcome ");
      out.print(session.getAttribute("username"));
      out.write("</a>                 \n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a style=\"color:white;\"  href=\"logout.jsp\">LOGOUT</a>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>  \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("\n");
      out.write(" <div class=\"container options\">\n");
      out.write("  <div class=\"row\">\n");
      out.write("    <div class=\"col-sm-4\">\n");
      out.write("      <div class=\"panel panel-danger\">\n");
      out.write("        <div class=\"panel-heading\"><strong>Ask A Question</strong></div>\n");
      out.write("        <div class=\"panel-body\"><img src=\"java_forum/ask.jpg\"  class=\"img-responsive\"  style=\"width:100%;height:210px;\" alt=\"Image\">\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("        <div class=\"panel-footer\">\n");
      out.write("            <a role='button' class='btn btn-primary btn-block' href=\"ask.jsp\">SELECT</a>\n");
      out.write("          </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"col-sm-4\">\n");
      out.write("      <div class=\"panel panel-danger\">\n");
      out.write("        <div class=\"panel-heading\"><strong>View Questions</strong></div>\n");
      out.write("        <div class=\"panel-body\"><img src=\"java_forum/view.jpg\" class=\"img-responsive\" style=\"width:100%;height:210px;\" alt=\"Image\"></div>\n");
      out.write("        <div class=\"panel-footer\"> \n");
      out.write("         <a role='button' class='btn btn-primary btn-block' href=\"list.jsp\">SELECT</a>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"col-sm-4\">\n");
      out.write("      <div class=\"panel panel-danger\">\n");
      out.write("        <div class=\"panel-heading\"><strong>Start A Discussion</strong></div>\n");
      out.write("        <div class=\"panel-body\"><img src=\"java_forum/questions.jpg\" class=\"img-responsive\" style=\"width:100%;height:210px;\" alt=\"Image\"></div>\n");
      out.write("       <div class=\"panel-footer\">\n");
      out.write("         <a role='button' class='btn btn-primary btn-block' href=\"#\">SELECT</a>\n");
      out.write("       </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <div class=\"footer navbar-fixed-bottom text-center navbar_custom\" style=\"background-color:#45015;color:#fff;\">\n");
      out.write("        &copy; DISCUSSION FORUM\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("\n");
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

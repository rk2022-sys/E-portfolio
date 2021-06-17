package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>index</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"index.css\">\n");
      out.write("        <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700%7CPT+Serif:400,700,400italic' rel='stylesheet'>\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Montserrat|Open+Sans\" rel=\"stylesheet\">\n");
      out.write("    </head>\n");
      out.write("    <body background=\"images/bg.jpg\">\n");
      out.write("\n");
      out.write("        <div class=\"bgimage\">\n");
      out.write("            <div class=\"menu\">\n");
      out.write("\n");
      out.write("                <div class=\"leftmenu\">\n");
      out.write("                    <img src=\"images/logo.png\">\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"rightmenu\">\n");
      out.write("                    <ul>\n");
      out.write("                        <a href=\"index.jsp\"> <li id=\"fisrtlist\">HOME </li></a>\n");
      out.write("                        <a href=\"ask.jsp\">  <li>Ask a question </li></a>\n");
      out.write("                        <a href=\"aboutus.jsp\"> <li> About us</li></a>\n");
      out.write("                        \n");
      out.write("                        <a href=\"login.jsp\"><li>Account</li></a>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"text\">\n");
      out.write("                DESIGN • DEVELOPMENT • BRANDING \n");
      out.write("                <h1> CREATIVE & EXPERIENCED </h1>\n");
      out.write("                <h3>Welcome to e-portfolio sign in if you have already registered/ Register </h3>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </div>\n");
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

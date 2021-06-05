package org.apache.jsp.JSP;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class SignUp_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/CSS/SUP.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css\" integrity=\"sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==\" crossorigin=\"anonymous\" />\n");
      out.write("        <link rel=\"icon\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/PNG/logo1111.png\">\n");
      out.write("        <title>Sign Up</title>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <!--    <script src=\"./../JS/App.js\"></script>-->\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"forms-container\">\n");
      out.write("                <div class=\"signin-signup\">\n");
      out.write("                    <form action=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/Authen\" method=\"post\" class=\"sign-up-form\">\n");
      out.write("                        <h2 class=\"title\">Sign up</h2>\n");
      out.write("                        <div class=\"input-field\">\n");
      out.write("                            <i class=\"fas fa-user\"></i>\n");
      out.write("                            <input type=\"text\" name=\"fname\" placeholder=\"First Name\" />\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"input-field\">\n");
      out.write("                            <i class=\"fas fa-user\"></i>\n");
      out.write("                            <input type=\"text\" name=\"lname\" placeholder=\"Last Name\" />\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"input-field\">\n");
      out.write("                            <i class=\"fas fa-phone\"></i>\n");
      out.write("                            <input type=\"tel\" name=\"phonenumber\" placeholder=\"Phone Number\" />\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"input-field\">\n");
      out.write("                            <i class=\"fas fa-home\"></i>\n");
      out.write("                            <input type=\"text\" name=\"city\" placeholder=\"City\" />\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"input-field\">\n");
      out.write("                            <i class=\"fas fa-envelope\"></i>\n");
      out.write("                            <input type=\"email\" name=\"email\" placeholder=\"Email\" />\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"input-field\">\n");
      out.write("                            <i class=\"fas fa-lock\"></i>\n");
      out.write("                            <input type=\"password\" name=\"password\" placeholder=\"Password\" />\n");
      out.write("                        </div>\n");
      out.write("                     ");
  
                        if(request.getAttribute("message")!=null)
                            out.print("<p style='color: red '>"+request.getAttribute("message")+"</p>");                       
                    
      out.write("\n");
      out.write("                        <input type=\"submit\" class=\"btn\" name=\"act\" value=\"Sign Up\" />\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"panels-container\">\n");
      out.write("                <div class=\"panel right-panel\">\n");
      out.write("                    <div class=\"content\">\n");
      out.write("                        <h3>One of us ?</h3>\n");
      out.write("                        <p>\n");
      out.write("                            You already have an account ? Please Sign in.\n");
      out.write("                        </p>\n");
      out.write("                        <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/JSP/SignIn.jsp\" class=\"btn transparent\">Sign In</a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
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

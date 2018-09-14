package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_end_begin;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_end_begin = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_end_begin.release();
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("  <head>\n");
      out.write("\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("    <meta name=\"description\" content=\"\">\n");
      out.write("    <meta name=\"author\" content=\"\">\n");
      out.write("\n");
      out.write("    <title>NEWs - In Site</title>\n");
      out.write("\n");
      out.write("    <!-- Bootstrap core CSS -->\n");
      out.write("    <link href=\"vendor/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <!-- Custom fonts for this template -->\n");
      out.write("    <link href=\"vendor/font-awesome/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css?family=Montserrat:400,700\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>\n");
      out.write("    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>\n");
      out.write("    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>\n");
      out.write("\n");
      out.write("    <!-- Custom styles for this template -->\n");
      out.write("    <link href=\"css/agency.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("  </head>\n");
      out.write("  <style>\n");
      out.write("      body {\n");
      out.write("        /*background: linear-gradient(to bottom right, #4FBDDD, #FFE920);*/\n");
      out.write("      }\n");
      out.write("      #calculator {\n");
      out.write("          text-align: center;\n");
      out.write("          background-color: buttonhighlight;\n");
      out.write("      }\n");
      out.write("      #table {\n");
      out.write("          text-align: center;\n");
      out.write("      }\n");
      out.write("  </style>\n");
      out.write("  <body id=\"page-top\">\n");
      out.write("\n");
      out.write("    <!-- Navigation -->\n");
      out.write("    <nav class=\"navbar navbar-expand-lg navbar-dark fixed-top\" id=\"mainNav\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <a class=\"navbar-brand js-scroll-trigger\" href=\"#page-top\">NEW IN SITE</a>\n");
      out.write("        <button class=\"navbar-toggler navbar-toggler-right\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarResponsive\" aria-controls=\"navbarResponsive\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("          Menu\n");
      out.write("          <i class=\"fa fa-bars\"></i>\n");
      out.write("        </button>\n");
      out.write("        <div class=\"collapse navbar-collapse\" id=\"navbarResponsive\">\n");
      out.write("          <ul class=\"navbar-nav text-uppercase ml-auto\">\n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("              <a class=\"nav-link js-scroll-trigger\" href=\"#services\">Option</a>\n");
      out.write("            </li>\n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("              <a class=\"nav-link js-scroll-trigger\" href=\"#calculator\">Simple Calculator</a>\n");
      out.write("            </li>\n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("              <a class=\"nav-link js-scroll-trigger\" href=\"#about\">About</a>\n");
      out.write("            </li>\n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("              <a class=\"nav-link js-scroll-trigger\" href=\"#team\">Team</a>\n");
      out.write("            </li>\n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("              <a class=\"nav-link js-scroll-trigger\" href=\"#contact\">Contact</a>\n");
      out.write("            </li>\n");
      out.write("          </ul>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </nav>\n");
      out.write("\n");
      out.write("    <!-- Header -->\n");
      out.write("    <header class=\"masthead\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <div class=\"intro-text\">\n");
      out.write("          <div class=\"intro-lead-in\">Welcome To Our Studio!</div>\n");
      out.write("          <div class=\"intro-heading text-uppercase\">Learning to INT303</div>\n");
      out.write("          <a class=\"btn btn-primary btn-xl text-uppercase js-scroll-trigger\" href=\"#services\">Let's Go</a>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </header>\n");
      out.write("\n");
      out.write("    <!-- Services -->\n");
      out.write("    <section id=\"services\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("          <div class=\"col-lg-12 text-center\">\n");
      out.write("            <h1 class=\"section-heading text-uppercase\"> OPTION </h1>\n");
      out.write("            <h3 class=\"section-subheading text-muted\">You can select option to do.</h3>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"row text-center\">\n");
      out.write("          <div class=\"col-md-4\">\n");
      out.write("            <span class=\"fa-stack fa-4x\">\n");
      out.write("              <i class=\"fa fa-circle fa-stack-2x text-primary\"></i>\n");
      out.write("              <i class=\"fa fa-shopping-cart fa-stack-1x fa-inverse\"></i>\n");
      out.write("            </span>\n");
      out.write("            <h4 class=\"service-heading\">Simple Calculator</h4>\n");
      out.write("            <p class=\"text-muted\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.</p>\n");
      out.write("          </div>\n");
      out.write("            <div class=\"col-md-4\">\n");
      out.write("            <span class=\"fa-stack fa-4x\">\n");
      out.write("              <i class=\"fa fa-circle fa-stack-2x text-primary\"></i>\n");
      out.write("              <i class=\"fa fa-shopping-cart fa-stack-1x fa-inverse\"></i>\n");
      out.write("            </span>\n");
      out.write("            <h4 class=\"service-heading\">Prime Number</h4>\n");
      out.write("            <p class=\"text-muted\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.</p>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"col-md-4\">\n");
      out.write("            <span class=\"fa-stack fa-4x\">\n");
      out.write("              <i class=\"fa fa-circle fa-stack-2x text-primary\"></i>\n");
      out.write("              <i class=\"fa fa-laptop fa-stack-1x fa-inverse\"></i>\n");
      out.write("            </span>\n");
      out.write("            <h4 class=\"service-heading\">Test Request</h4>\n");
      out.write("            <p class=\"text-muted\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.</p>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"col-md-4\">\n");
      out.write("            <span class=\"fa-stack fa-4x\">\n");
      out.write("              <i class=\"fa fa-circle fa-stack-2x text-primary\"></i>\n");
      out.write("              <i class=\"fa fa-lock fa-stack-1x fa-inverse\"></i>\n");
      out.write("            </span>\n");
      out.write("            <h4 class=\"service-heading\">Shopping</h4>\n");
      out.write("            <p class=\"text-muted\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.</p>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </section>\n");
      out.write("\n");
      out.write("    <!-- Simple Calculator ---------------------------------------------------->\n");
      out.write("    \n");
      out.write("    <section id=\"calculator\">\n");
      out.write("         <div>\n");
      out.write("    <h1>Calculator</h1>\n");
      out.write("        <form action=\"SimpleCalculator#calculator\" method=\"post\">\n");
      out.write("            x= <input type = \"number\" required name= \"x\"/>\n");
      out.write("            <select name=\"operator\">\n");
      out.write("            <option value = \"+\">+</option>\n");
      out.write("            <option value = \"-\">-</option>\n");
      out.write("            <option value = \"*\">*</option>\n");
      out.write("            <option value = \"/\">/</option>              \n");
      out.write("            </select>\n");
      out.write("            y= <input type = \"number\" required name= \"y\"/>\n");
      out.write("            <input type=\"submit\"/>\n");
      out.write("        </form>\n");
      out.write("    <br><br>\n");
      out.write("    <h1>Result ::</h1>\n");
      out.write("    <table id=\"table\">\n");
      out.write("            <tr>\n");
      out.write("                <td> X </td>\n");
      out.write("                <td> = </td>\n");
      out.write("                <td> ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${calculator.x}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(" </td>                          \n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td> Y </td>\n");
      out.write("                <td> = </td>\n");
      out.write("                <td> ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${calculator.y}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(" </td>                     \n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td> Operator </td>\n");
      out.write("                <td> = </td>\n");
      out.write("                <td> ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${calculator.operator}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(" </td>                   \n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td> Result </td>\n");
      out.write("                <td> = </td> \n");
      out.write("                <td> ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${calculator.result}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(" </td>                     \n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("    </div>\n");
      out.write("    </section> \n");
      out.write("   <!-------------------------------------------------------------------------->\n");
      out.write(" <table>\n");
      out.write("      <tr><td colspan=5>Table of Number");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.n}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</td></tr>\n");
      out.write(" \n");
      out.write("      ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("  </table>\n");
      out.write("   <!-------------------------------------------------------------------------->\n");
      out.write("    <!-- Bootstrap core JavaScript -->\n");
      out.write("    <script src=\"vendor/jquery/jquery.min.js\"></script>\n");
      out.write("    <script src=\"vendor/bootstrap/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- Plugin JavaScript -->\n");
      out.write("    <script src=\"vendor/jquery-easing/jquery.easing.min.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- Contact form JavaScript -->\n");
      out.write("    <script src=\"js/jqBootstrapValidation.js\"></script>\n");
      out.write("    <script src=\"js/contact_me.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- Custom scripts for this template -->\n");
      out.write("    <script src=\"js/agency.min.js\"></script>\n");
      out.write("\n");
      out.write("  </body>\n");
      out.write("\n");
      out.write("</html>");
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

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_end_begin.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setBegin(2);
    _jspx_th_c_forEach_0.setEnd(12);
    _jspx_th_c_forEach_0.setVar("x");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("        <tr>\n");
          out.write("        <td style=text-align right>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.n}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("            <td>x</td>\n");
          out.write("            <td style=text-align right>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${x}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("            <td>=</td>\n");
          out.write("            <td style=text-align right>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.nx}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("      </tr>\n");
          out.write("        ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_end_begin.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sit.int303.first.filter;

import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import javax.servlet.DispatcherType;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 *
 * @author INT303
 */
@WebFilter(filterName = "AuthenticationFilter", servletNames = {"ProductListServlet"}, dispatcherTypes = {DispatcherType.REQUEST, DispatcherType.FORWARD})
public class AuthenFilter implements Filter {
    
   

    // The filter configuration object we are associated with.  If
    // this value is null, this filter instance is not currently
    // configured. 
    private FilterConfig config;
    
  
    /**
     *
     * @param request The servlet request we are processing
     * @param response The servlet response we are creating
     * @param chain The filter chain we are processing
     *
     * @exception IOException if an input/output error occurs
     * @exception ServletException if a servlet error occurs
     */
    public void doFilter(ServletRequest request, ServletResponse response,FilterChain chain)throws  IOException, ServletException {
        HttpSession session = ((HttpServletRequest)request).getSession(false);
        if(session == null  || session.getAttribute("user")==null){
            config.getServletContext().getRequestDispatcher("/Login").forward(request, response);
            return;
            
        }else{
            chain.doFilter(request, response);
        }
        
    }
           
        
    
  
   
   

    public void destroy() {        
    }

   @Override
    public void init(FilterConfig filterConfig) {        
        this.config = filterConfig;
    }
}

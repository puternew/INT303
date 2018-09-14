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
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author INT303
 */
public class LoggerFilter implements Filter {

    private FilterConfig filterConfig;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        this.filterConfig = filterConfig;    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        long before = System.currentTimeMillis();
        
        chain.doFilter(request, response);
        
        long duration = System.currentTimeMillis() - before;
        String url = ((HttpServletRequest)request).getRequestURI();
        String msg = String.format("%s duration! %d milisecond(s) \n", url,duration) ;
        filterConfig.getServletContext().log(msg);
        
    }

    @Override
    public void destroy() {
        
    }
    
}
filter ชื่อ LoggerFilter
Servlet ชื่อ LoginServlet
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sit.int303.first.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.annotation.Resource;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceUnit;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.transaction.UserTransaction;
import sit.int303.first.jpa.model.Customer;
import sit.int303.first.jpa.model.controller.CustomerJpaController;

/**
 *
 * @author INT303
 */
public class LoginServlet extends HttpServlet {
@Resource
UserTransaction utx;

@PersistenceUnit(unitName = "MyFirstWebAppPU")
EntityManagerFactory emf;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        if(userName != null && userName.length()>0 && password != null && password.length()>0) {
            CustomerJpaController customerJpaCtrl = new CustomerJpaController(utx,emf);
            Customer c = customerJpaCtrl.findCustomer(Integer.valueOf(userName));
            if(c != null){
                if(password.equals(c.getContactfirstname())){
                    request.getSession().setAttribute("user", c);
                    getServletContext().getRequestDispatcher("/index.html").forward(request, response);
                    return;
                }
            }
            request.setAttribute("message","Invalid user name or password !!!");
        }
        getServletContext().getRequestDispatcher("/Login.jsp").forward(request, response);        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
หน้า Login.jsp
<%-- 
    Document   : Login
    Created on : Sep 7, 2018, 11:41:05 AM
    Author     : INT303
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>❣Login❣</title>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container">
            <jsp:include page="include/Header.jsp?title=Authentication ::"/>     
            <form action="Login" method="POST">
            <table class="table">
                <tr>
                    <td>✨ Username :</td>
                    <td> <input type="number" name="userName" required /></td>
                </tr>
                <tr>
                    <td>✨ Password :</td>
                    <td><input type="password" name="password" required/></td>
                </tr>
                <tr>
                    <td> <input type="submit" value="Login"/></td>
                </tr>
                <tr>
                    <td colspan="2"><p style="color: goldenrod">${message}</p></td>
                </tr>
            </table>
            </form>
        </div>
    </body>
</html>
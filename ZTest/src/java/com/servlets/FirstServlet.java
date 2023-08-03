package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.*;
import java.util.*;

public class FirstServlet implements Servlet {

    ServletConfig conf;

    // Life cycle methods
    @Override
    public void init(ServletConfig conf) {
        this.conf = conf;
        System.out.println("Creating Object....");
    }

    @Override
    public void service(ServletRequest req, ServletResponse resp) throws ServletException, IOException {
        System.out.println("Servicing......");
        // set the content type of responce
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        //write whatever you want to show in html page
        out.println("<h2>This is my output from servlet service method!...</h2>");
        out.println("<h3>Today date and time: "+ new Date().toString()+"</h3>");
    }

    @Override
    public void destroy() {
        System.out.println("Going to destroy servlet object......");
    }

    // Non LifeCycle methods...
    
    @Override
    public ServletConfig getServletConfig() {
        return this.conf;
    }
    
    @Override
    public String getServletInfo() {
        return "This servlet is created by Ritik_Mondal";
    }
    
}

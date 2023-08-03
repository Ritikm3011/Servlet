package com.servlets;

import java.io.*;
import javax.servlet.*;

public class SecondServlet extends GenericServlet {

    @Override
    public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
        System.out.println("This is Servlet using Generic Servlet");
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        out.println("<h1>This is my second servelt using Generic Servlet</h1>");
    }

}

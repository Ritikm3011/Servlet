//Create Servlet using HttpServlet
package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;

public class MyServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        System.out.println("This is doGet method of HttpServlet");

        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        out.print("<h2>This is doGet method of HttpServlet</h2>");
        out.print(new Date().toString());

    }

   

}

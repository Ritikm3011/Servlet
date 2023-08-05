package com.myForm;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.*;
import javax.servlet.http.*;

public class RegisterServlet extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        out.println("<h2>Wellcome to the Register Servlet!...</h2>");
        String name = req.getParameter("user_name");
        String password = req.getParameter("password");
        String email = req.getParameter("user_email");
        String gender = req.getParameter("user_gender");
        String course = req.getParameter("user_course");
        String condition = req.getParameter("condition");
        // out.print(condition); // if you uncheck it'll give null
        // Future Goal: JDBC
        if (condition != null && condition.equals("checked")) {
            out.println("<h3>Name: " + name + "</h3>");
            out.println("<h3>Password: " + password + "</h3>");
            out.println("<h3>E_mail: " + email + "</h3>");
            out.println("<h3>Gender: " + gender + "</h3>");
            out.println("<h3>Course: " + course + "</h3>");
            
            RequestDispatcher rd = req.getRequestDispatcher("SuccessServlet");
            rd.forward(req, resp);
            

        } else {
            out.print("<h3>You have not accepted term and conditions...</h3>");
            // I want to include the output of index.html with ^ this msg
            // get the object of request dispacher
            RequestDispatcher rd = req.getRequestDispatcher("index.html");
            //include method which will include output of index.html with above msg...
            rd.include(req, resp);
        }
    }
}

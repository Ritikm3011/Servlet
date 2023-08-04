package com.myForm;


import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.*;
import javax.servlet.http.*;

public class RegisterServlet extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        out.println("<h2>Wellcome to the Register Servlet!...</h2>");
        String name = req.getParameter("user_name");
        String password = req.getParameter("password");
        String email = req.getParameter("user_email");
        String gender = req.getParameter("user_gender");
        String course = req.getParameter("user_course");
        String condition = req.getParameter("condition");
       // out.print(condition); // if you uncheck it'll give null
       
       // Future Goal: JDBC
       
       
        if(condition != null && condition.equals("checked")) {
            out.println("<h3>Name: "+name+"</h3>");
            out.println("<h3>Password: "+password+"</h3>");
            out.println("<h3>E_mail: "+email+"</h3>");
            out.println("<h3>Gender: "+gender+"</h3>");
            out.println("<h3>Course: "+course+"</h3>");
           // out.println("<h3>Gender: "+gender+"</h3>");
            
        } else {
            out.print("<h3>You have not accepted term and conditions...</h3>");
        }
        
        
    }

}

package servlets;

import db.DBUtil;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import models.User;

import java.io.IOException;

@WebServlet(value = "/SignIn")
public class SignServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("./signIn.jsp").forward(request,response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        User user = DBUtil.getUserByEmail(email);
        if(user.getEmail()!=null && user.getEmail().equals(email) && user.getPassword().equals(password)){
            response.sendRedirect("./userPage.jsp?id="+user.getId());
        }else{
            response.sendRedirect("/SignIn?fail");
        }
    }
}

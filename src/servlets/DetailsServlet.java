package servlets;

import db.DbManager;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import models.Tasks;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet( value = "/Details")
public class DetailsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        Tasks task = DbManager.getTask(id);
        if(task!=null) {
            request.setAttribute("task",task);
            request.getRequestDispatcher("./details.jsp").forward(request, response);
        }else {
            request.getRequestDispatcher("./404.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
}

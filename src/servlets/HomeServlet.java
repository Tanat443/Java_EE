package servlets;

import db.DbManager;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import models.Tasks;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(value = "/")
public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      //  ArrayList<Footballer> footballers = DbManager.getAllFootballers();
        ArrayList<Tasks> tasks = DbManager.getAllTasks();
        request.setAttribute("tasks", tasks);
        request.getRequestDispatcher("./index.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

package servlets;

import db.DbManager;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import models.Tasks;

import java.io.IOException;

@WebServlet(value = "/Update")
public class UpdateServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        String deadlineDate = request.getParameter("deadlineDate");
        String status = request.getParameter("status");
        Long id = Long.parseLong(request.getParameter("id"));

        Tasks task = new Tasks();
        task.setName(name);
        task.setDescription(description);
        task.setDeadlineDate(deadlineDate);
        if(!status.equals("Да")){
            task.setStatus(false);
        }else {
            task.setStatus(true);
        }

        DbManager.updateTask(task);
        response.sendRedirect("/");
    }
}

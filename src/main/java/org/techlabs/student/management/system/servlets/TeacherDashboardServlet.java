package org.techlabs.student.management.system.servlets;

import org.techlabs.student.management.system.util.ActionBinder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/teacher")
public class TeacherDashboardServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ActionBinder.bindActionMessages(req);
        getServletContext().getRequestDispatcher("/teacher-dashboard.jsp").forward(req, resp);
    }
}

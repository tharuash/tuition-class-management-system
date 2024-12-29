package org.techlabs.student.management.system.servlets;

import org.techlabs.student.management.system.dao.UserDao;
import org.techlabs.student.management.system.dao.impl.UserDaoImpl;
import org.techlabs.student.management.system.entity.User;
import org.techlabs.student.management.system.util.ActionBinder;
import org.techlabs.student.management.system.util.ActionMessage;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Optional;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    private final UserDao userDao;

    public LoginServlet() {
        userDao = new UserDaoImpl();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ActionBinder.bindActionMessages(req);
        getServletContext().getRequestDispatcher("/login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Optional<User> incomingUser = userDao.getUserByEmailAndPassword(req.getParameter("email"), req.getParameter("password"));

        if(incomingUser.isEmpty()) {
            resp.sendRedirect("login?code=" + ActionMessage.INVALID_EMAIL_OR_PASSWORD.getId());
        } else {
            HttpSession session = req.getSession();
            session.setAttribute("id" , incomingUser.get().getId());
            session.setAttribute("email" , incomingUser.get().getEmail());
            session.setAttribute("role", incomingUser.get().getRole());

            resp.sendRedirect(setRedirectUriAccordingToTheRole(incomingUser.get().getRole()));
        }
    }


    private String setRedirectUriAccordingToTheRole(String role) {
        String redirectUri = "";

        switch (role) {
            case "STUDENT" :
                redirectUri = "student";
                break;

            case "TEACHER":
                redirectUri = "teacher";
                break;

            case "ADMIN":
                redirectUri = "admin";
                break;

            default:
                redirectUri = "error";
        }

        return redirectUri;
    }
}

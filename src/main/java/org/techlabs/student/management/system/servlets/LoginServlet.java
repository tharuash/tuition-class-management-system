package org.techlabs.student.management.system.servlets;

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

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ActionBinder.bindActionMessages(req);
        getServletContext().getRequestDispatcher("/login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Optional<User> incomingUser = loginUser(req.getParameter("email"), req.getParameter("password"));

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

    private Optional<User> loginUser(String email, String password) {
        if ("student@email.com".equalsIgnoreCase(email) && "abc123".equalsIgnoreCase(password)) {
            return Optional.of(new User(
                    1,
                    "Test Student",
                    "student@email.com",
                    null,
                    null,
                    "STUDENT"
            ));

        } else if ("teacher@email.com".equalsIgnoreCase(email) && "abc123".equalsIgnoreCase(password)) {
            return Optional.of(new User(
                    2,
                    "Test Teacher",
                    "teacher@email.com",
                    null,
                    null,
                    "TEACHER"
            ));

        } else if ("admin@email.com".equalsIgnoreCase(email) && "abc123".equalsIgnoreCase(password)) {
            return Optional.of(new User(
                    3,
                    "Test Admin",
                    "admin@email.com",
                    null,
                    null,
                    "ADMIN"
            ));

        } else {
            return Optional.empty();
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

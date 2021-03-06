package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;
import org.mindrot.jbcrypt.BCrypt;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "controllers.LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        if (request.getSession().getAttribute("user") != null) {
            response.sendRedirect((String)session.getAttribute("currentPage"));
            return;
        }
        request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");

        String password = request.getParameter("password");
        User user = DaoFactory.getUsersDao().findByUsername(username);
        HttpSession session = request.getSession();
        String pageName = (String)session.getAttribute("currentPage");

        if (user == null) {
            request.getSession().setAttribute("message", "Rats! That's the wrong email or password.");
            request.getSession().setAttribute("username", username);
            response.sendRedirect("/login");
            return;
        }

        boolean validAttempt = Password.check(password, user.getPassword());
        if (validAttempt) {
            request.getSession().setAttribute("user", user);
            response.sendRedirect(pageName);
        } else {
            request.getSession().removeAttribute("username");
            request.getSession().setAttribute("message", "Rats! That's the wrong email or password.");
            response.sendRedirect("/login");
        }
    }
}

package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String passwordConfirmation = request.getParameter("confirm_password");

        // validate input
        if (username.isEmpty()) {
            request.getSession().setAttribute("message", "Isn't he the cutest thing? Please enter a username.");
            response.sendRedirect("/register");
            return;
        }

        if (email.isEmpty()) {
            request.getSession().setAttribute("message", "It's people I can't stand! You need an email.");
            response.sendRedirect("/register");
            return;
        }

        if (password.isEmpty()) {
            request.getSession().setAttribute("message", "My mind reels with sarcastic replies - you must enter a password.");
            response.sendRedirect("/register");
            return;
        }

        if (! password.equals(passwordConfirmation)) {
            request.getSession().setAttribute("message", "*Sigh* Your password + confirmation must match.");
            response.sendRedirect("/register");
            return;
        }

        // create and save a new user
        User user = new User(username, email, password);
        DaoFactory.getUsersDao().insert(user);
        response.sendRedirect("/login");
    }
}

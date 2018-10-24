package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "controllers.EditProfileServlet", urlPatterns = "/editProfile")
public class EditProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
        }
        request.getRequestDispatcher("/WEB-INF/editProfile.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmedPassword = request.getParameter("confirm_password");

        User user = (User) request.getSession().getAttribute("user");
        DaoFactory.getUsersDao().editEmail(email, user.getId());

        user = DaoFactory.getUsersDao().findByUsername(user.getUsername());
        request.getSession().setAttribute("user", user);
        response.sendRedirect("/profile");

        if (confirmedPassword.equals(password)) {
            DaoFactory.getUsersDao().editPassword(password, user.getId());
            response.sendRedirect("/profile");
        }


//        if (!confirmedPassword.equals(password)) {
//            request.getRequestDispatcher("/WEB-INF/editProfile.jsp").forward(request, response);
//        } else {
//            DaoFactory.getUsersDao().editPassword(password, user.getId());
//            response.sendRedirect("/profile");
//        }
    }
}

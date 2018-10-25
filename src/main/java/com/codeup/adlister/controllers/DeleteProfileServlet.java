package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.DeleteProfileServlet", urlPatterns = "/deleteProfile")
public class DeleteProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
        }
        request.getRequestDispatcher("/WEB-INF/deleteProfile.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        Long id = Long.parseLong(request.getParameter("id"));
        System.out.println(request.getParameter("id"));
        System.out.println(id);
        DaoFactory.getUsersDao().deleteUser(id);
        request.getSession().removeAttribute("user");
        request.getSession().invalidate();
        response.sendRedirect("/register");
    }
}


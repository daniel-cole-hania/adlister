package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import static java.lang.Long.parseLong;

@WebServlet(name = "ViewProfileServlet", urlPatterns = "/profile")
public class ViewProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        User currUser = (User) request.getSession().getAttribute("user");

        Long userId = currUser.getId();

//        if (userId != null) {
        List<Ad> ads = DaoFactory.getAdsDao().findAllAdsUserId(userId);
        request.setAttribute("ads", ads);
        request.setAttribute("user_id", userId);
//        }

        request.getRequestDispatcher("/WEB-INF/profile.jsp").forward(request, response);
    }


//
}





/*package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

import static java.lang.Long.parseLong;

@WebServlet(name = "controllers.ViewProfileServlet", urlPatterns = "/profile")
public class ViewProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //HttpSession session = request.getSession();

        //not logging in from this page
//        session.setAttribute("currentPage", "/profile");

        User currUser = (User) request.getSession().getAttribute("user");

        Long userId = currUser.getId();

//        if (userId != null) {
        List<Ad> ads = DaoFactory.getAdsDao().findAllAdsUserId(userId);
        request.setAttribute("ads", ads);
        request.setAttribute("user_id", userId);
//        }

        request.getRequestDispatcher("/WEB-INF/profile.jsp").forward(request, response);
    }


//
} */

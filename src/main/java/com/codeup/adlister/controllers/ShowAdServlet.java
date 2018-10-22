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

@WebServlet(name="controllers.ShowAdServlet", urlPatterns="/ads/show")
public class ShowAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long adID = Long.parseLong(request.getParameter("id"));
        Ad currAd = DaoFactory.getAdsDao().findAdByID(adID);
        User adUser = DaoFactory.getUsersDao().findByUserID(currAd.getUserId());
        request.setAttribute("ad", currAd);
        request.setAttribute("user", adUser);
        request.getRequestDispatcher("/WEB-INF/ads/show.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println(request.getParameter("title"));
        System.out.println(request.getParameter("description"));
        String adID = request.getParameter("id");

        response.sendRedirect("/ads/show?id=" + adID);
    }
}
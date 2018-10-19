package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

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
        request.setAttribute("ad", currAd);
        request.getRequestDispatcher("/WEB-INF/ads/show.jsp").forward(request, response);
    }
}
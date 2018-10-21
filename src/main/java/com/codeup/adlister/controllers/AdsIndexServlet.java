package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "controllers.AdsIndexServlet", urlPatterns = "/ads")
public class AdsIndexServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String keyword = request.getParameter("search");
        request.getQueryString();

        if (keyword != null) {
            List<Ad> ads = DaoFactory.getAdsDao().findAllAdsByKeyword(keyword);
            request.setAttribute("ads", ads);
            request.setAttribute("search", keyword);
        } else {
            List<Ad> ads = DaoFactory.getAdsDao().all();
            request.setAttribute("ads", ads);
        }

        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);


    }
}

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
        //finds which submit button clicked, edit or delete
        String buttonClicked  = request.getParameter("submit");

        if (buttonClicked.equals("Save")) {
            //grabs values from form
            Long adId = Long.parseLong(request.getParameter("id"));
            String title = request.getParameter("title");
            String description = request.getParameter("description");

            //uses values to update ad in db
            DaoFactory.getAdsDao().update(adId, title, description);

            //sends user back to ad page
            response.sendRedirect("/ads/show?id=" + adId);
        }

        if (buttonClicked.equals("Delete")) {
            //grabs ad id from form
            Long adId = Long.parseLong(request.getParameter("id"));

            //deletes ad in db
            DaoFactory.getAdsDao().delete(adId);

            //sends user back to their profile page
            response.sendRedirect("/profile");

        }
    }
}
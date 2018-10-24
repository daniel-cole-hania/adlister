package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.MySQLCategoryAdLinkDao;
import com.codeup.adlister.dao.Config;
import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.Category;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "controllers.CreateAdServlet", urlPatterns = "/ads/create")
public class CreateAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.setAttribute("currentPage", "/ads/create");

        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }

        //
        List<Category> categories = DaoFactory.getCategoriesDao().all();
        request.setAttribute("categories", categories);
        request.getRequestDispatcher("/WEB-INF/ads/create.jsp")
                .forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        User user = (User) request.getSession().getAttribute("user");

        System.out.println("ad created by: " + user.getId() + ", " + user.getUsername());
        Ad ad = new Ad(
                user.getId(),
                request.getParameter("title"),
                request.getParameter("description")
        );
        ad.setId(DaoFactory.getAdsDao().insert(ad));



        MySQLCategoryAdLinkDao mySQLCategoryAdLinkDao = new MySQLCategoryAdLinkDao(new Config());

        Long categoryID = Long.parseLong(request.getParameter("id"));
        String[] categoryIDS = request.getParameterValues("id");
        System.out.println(categoryIDS);

        System.out.println(categoryID);

        for (int i = 0; i < categoryIDS.length; i++) {
        Category currCat = DaoFactory.getCategoriesDao().findByCategoryID(Long.parseLong(categoryIDS[i]));

        mySQLCategoryAdLinkDao.addAdToCategory(ad, currCat);

         }
        response.sendRedirect("/ads");
    }
}                                                               

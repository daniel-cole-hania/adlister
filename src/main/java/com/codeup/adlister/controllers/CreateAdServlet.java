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
            request.getSession().setAttribute("message", "No matter how hard you try, you can't create an ad if you're not logged in.");
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

        //grabbing info from post request
        User user = (User) request.getSession().getAttribute("user");
        String title = request.getParameter("title");
        String description = request.getParameter("description");

        //saving form info to session
        request.getSession().setAttribute("title", title);
        request.getSession().setAttribute("description", description);


        // validate input
        if (title.isEmpty()) {
            request.getSession().setAttribute("message", "Your ad needs a title. Five cents, please.");
            response.sendRedirect("/ads/create");
            return;
        }

        if (description.isEmpty()) {
            request.getSession().setAttribute("message", "You're weird, sir! Your ad needs more details.");
            response.sendRedirect("/ads/create");
            return;
        }

        System.out.println("ad created by: " + user.getId() + ", " + user.getUsername());
        Ad ad = new Ad(
                user.getId(),
                title,
                description
        );




        MySQLCategoryAdLinkDao mySQLCategoryAdLinkDao = new MySQLCategoryAdLinkDao(new Config());

        String categories = request.getParameter("id");
        if (categories == null) {
            request.getSession().setAttribute("message", "You block head, Your ad needs at least <span class=\"normie\">1</span> category.");
            response.sendRedirect("/ads/create");
            return;
        }

//        Long categoryID = Long.parseLong(request.getParameter("id"));
        String[] categoryIDS = request.getParameterValues("id");


        ad.setId(DaoFactory.getAdsDao().insert(ad));
        for (int i = 0; i < categoryIDS.length; i++) {
        Category currCat = DaoFactory.getCategoriesDao().findByCategoryID(Long.parseLong(categoryIDS[i]));

        mySQLCategoryAdLinkDao.addAdToCategory(ad, currCat);

         }
        response.sendRedirect("/ads");
    }
}                                                               

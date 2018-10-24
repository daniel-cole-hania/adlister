package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.Category;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLCategoryAdLinkDao {
    private Connection connection = null;

    public MySQLCategoryAdLinkDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }


    public void addAdToCategory (Ad ad, Category category){

        String query = "insert into category_ad (ad_id, category_id) values (?,?) ";
        try {
            PreparedStatement stmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, ad.getId());
            stmt.setLong(2, category.getId());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
//            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating record in ad category table", e);
        }
    }

    public List<String> findCategories (Ad ad) {
        String query = "SELECT categories.name FROM categories JOIN category_ad ON category_ad.category_id = categories.id JOIN ads a on category_ad.ad_id = a.id WHERE a.id = " + ad.getId();
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            return createCategoriesList(rs);

        } catch (SQLException e) {
            throw new RuntimeException("Error finding categories by ad id", e);
        }

    }

    private List<String> createCategoriesList(ResultSet rs) throws SQLException {
        List<String> categories = new ArrayList<>();
        while (rs.next()) {
            categories.add(rs.getString(1));
        }
        return categories;
    }

}

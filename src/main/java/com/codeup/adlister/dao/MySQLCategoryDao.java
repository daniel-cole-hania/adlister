package com.codeup.adlister.dao;

import com.codeup.adlister.models.Category;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class MySQLCategoryDao implements Categories {
    private Connection connection = null;

    public MySQLCategoryDao(Config config) {
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


    public List<Category> all() {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM categories");
            ResultSet rs = stmt.executeQuery();
            return createCategoriesFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all categories.", e);
        }
    }


    @Override
    public Category findByCategoryID(Long categoryID) {
        String query = "SELECT * FROM categories WHERE id = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setLong(1, categoryID);
            ResultSet rs = stmt.executeQuery();
            rs.next();
            return extractCat(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error finding a category by id", e);
        }
    }


    @Override
    public Category findByCategoryName(String categoryName) {
        String query = "SELECT * FROM categories WHERE name = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, categoryName);
            return extractCat(stmt.executeQuery());
        } catch (SQLException e) {
            throw new RuntimeException("Error finding a category by name", e);
        }
    }


    private Category extractCat(ResultSet rs) throws SQLException {
        return new Category(
                rs.getLong("id"),
                rs.getString("name")
        );
    }

    private List<Category> createCategoriesFromResults(ResultSet rs) throws SQLException {
        List<Category> categories = new ArrayList<>();
        while (rs.next()) {
            categories.add(extractCat(rs));
        }
        return categories;
    }


}
package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.mysql.cj.jdbc.Driver;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection = null;

    public MySQLAdsDao(Config config) {
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

    @Override
    public List<Ad> all() {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM ads");
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    @Override
    public Long insert(Ad ad) {
        try {
            String insertQuery = "INSERT INTO ads(user_id, title, description) VALUES (?, ?, ?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, ad.getUserId());
            stmt.setString(2, ad.getTitle());
            stmt.setString(3, ad.getDescription());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }

    @Override
    public void update(Long id, String newTitle, String newDescription) {
        //creating outline for update statement
        String updateQuery = "UPDATE ads SET title = ?, description = ? WHERE id = " + id;

        try {
            //creating statment object with update string
            PreparedStatement stmt = connection.prepareStatement(updateQuery);

            //safely setting update values with arguments
            stmt.setString(1, newTitle);
            stmt.setString(2, newDescription);

            //executing update
            stmt.executeUpdate();

            //console log to confirm update
            System.out.println("Updated ad with id " + id + ":");
            System.out.println("title: " + newTitle);
            System.out.println("description: " + newDescription);
        } catch (SQLException e) {
            throw new RuntimeException("Error updating ad.", e);
        }

    }

    @Override
    public Ad findAdByID(Long id) {
        try {
            String findAd = "SELECT * FROM ads WHERE id = ?";
            PreparedStatement stmt = connection.prepareStatement(findAd);
            stmt.setLong(1, id);

            ResultSet rs = stmt.executeQuery();
            rs.next();
            return extractAd(rs);


        } catch (SQLException e) {
            throw new RuntimeException("Error finding a ad by id", e);
        }
    }



    //private utility classes for formatting ads from result sets
    private Ad extractAd(ResultSet rs) throws SQLException {
        return new Ad(
            rs.getLong("id"),
            rs.getLong("user_id"),
            rs.getString("title"),
            rs.getString("description"),
            rs.getString("date_created")
        );
    }

    private List<Ad> createAdsFromResults(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (rs.next()) {
            ads.add(extractAd(rs));
        }
        return ads;
    }
}

package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;
import com.mysql.cj.jdbc.Driver;
import org.mindrot.jbcrypt.BCrypt;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLUsersDao implements Users {
    private static Connection connection;

    public MySQLUsersDao(Config config) {
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
    public User findByUsername(String username) {
        String query = "SELECT * FROM users WHERE username = ? LIMIT 1";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, username);
            return extractUser(stmt.executeQuery());
        } catch (SQLException e) {
            throw new RuntimeException("Error finding a user by username", e);
        }
    }

    @Override
    public Long insert(User user) {
        String query = "INSERT INTO users(username, email, password) VALUES (?, ?, ?)";
        try {
            PreparedStatement stmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getPassword());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating new user", e);
        }
    }

    private static User extractUser(ResultSet rs) throws SQLException {
        if (! rs.next()) {
            return null;
        }
        return new User(
            rs.getLong("id"),
            rs.getString("username"),
            rs.getString("email"),
            rs.getString("password")
        );
    }

//    private static void fixPW (User user) {
//        String hashedPW = BCrypt.hashpw(user.getPassword(), BCrypt.gensalt());
//        String query = String.format("UPDATE users SET password = %s WHERE username = %s", hashedPW, user.getUsername());
//
//        try {
//            PreparedStatement stmt = connection.prepareStatement(query);
//            stmt.executeUpdate();
//
//        } catch (SQLException e) {
//            throw new RuntimeException("Error creating new user", e);
//        }
//
//    }
//
//    public static void main(String[] args) {
//        Config config = new Config();
//        Users dao = new MySQLUsersDao(config);
//        String sql = "SELECT * FROM users";
//        try {
//            Statement stmt = connection.createStatement();
//            ResultSet rs = stmt.executeQuery(sql);
//            while (rs.next()) {
//                fixPW(extractUser(rs));
//            }
//        }
//        catch (SQLException e) {
//            throw new RuntimeException("Error creating new user", e);
//        }
//
//
//    }

}

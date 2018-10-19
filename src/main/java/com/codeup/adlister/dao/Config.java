package com.codeup.adlister.dao;

public class Config {
    private String url = "jdbc:mysql://localhost/adlister_db?serverTimezone=UTC&useSSL=false";
    private String username = "adlister_user";
    private String password = "Ads4Dayz$";

    public String getUrl() {
        return url;
    }

    public String getUser() {
        return username;
    }

    public String getPassword() {
        return password;
    }
}

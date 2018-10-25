package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;

import java.util.List;

public interface Users {
    User findByUsername(String username);
    User findByUserID(Long userID);
    Long insert(User user);
    void editEmail(String email, long id);
    void editPassword(String password, long id);
    void editUsername(String username, long id);
    void deleteUser(Long id);
}

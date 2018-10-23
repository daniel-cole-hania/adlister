package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();

    // insert a new ad and return the new ad's id
    Long insert(Ad ad);

    //update ad in db by ad id
    void update(Long id, String newTitle, String newDescription);

    //finds ad in db by ad id
    Ad findAdByID(Long id);
}

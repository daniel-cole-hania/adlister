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

    //deletes ad in db by ad id
    void delete(Long id);

    //finds ad in db by ad id
    Ad findAdByID(Long id);

    List<Ad> findAllAdsByKeyword(String keyWord);
    List<Ad>findAllAdsUserId(Long userId);
    List<Ad> findAllAdsByCategory(Long category_id);
}

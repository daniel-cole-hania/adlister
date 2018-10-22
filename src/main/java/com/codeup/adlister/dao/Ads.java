package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);
    Ad findAdByID(Long id);
    List<Ad> findAllAdsByKeyword(String keyWord);
    List<Ad>findAllAdsUserId(Long userId);
}

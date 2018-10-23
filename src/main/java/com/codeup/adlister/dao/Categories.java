package com.codeup.adlister.dao;

import com.codeup.adlister.models.Category;
import java.util.List;

public interface Categories {
    List<Category> all();

    Category findByCategoryID(Long categoryID);

    Category findByCategoryName(String categoryName);
}

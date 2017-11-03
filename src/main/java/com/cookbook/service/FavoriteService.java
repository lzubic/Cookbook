package com.cookbook.service;

import com.cookbook.domain.Category;
import com.cookbook.domain.Favorite;
import com.cookbook.domain.Recipe;
import com.cookbook.domain.User;
import com.cookbook.repository.FavoriteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class FavoriteService {
    private final FavoriteRepository favoriteRepository;

    @Autowired
    public FavoriteService(FavoriteRepository favoriteRepository) {
        this.favoriteRepository = favoriteRepository;
    }

    public void save(List<Integer> rates, User user, List<Recipe> recipes) {
        for (int i = 0; i < rates.size(); i++) {
            for (Category category : recipes.get(i).getCategories()) {
                Favorite favorite = new Favorite();
                favorite.setScore(favorite.getScore() + (rates.get(i) - 3.0) / 2.0);
                favorite.setTotal(favorite.getTotal() + 1);
                favorite.setUser(user);
                favorite.setCategory(category);
                favoriteRepository.save(favorite);
            }
        }
    }

    public void save(Integer rate, User user, Recipe recipe) {
        for (Category category : recipe.getCategories()) {
            Favorite favorite = favoriteRepository.find(user.getId(), category.getId());
            if (favorite == null) {
                favorite = new Favorite();
                favorite.setUser(user);
                favorite.setCategory(category);
            }
            favorite.setScore(favorite.getScore() + (rate - 3.0) / 2.0);
            favorite.setTotal(favorite.getTotal() + 1);
            favoriteRepository.save(favorite);
        }
    }
}

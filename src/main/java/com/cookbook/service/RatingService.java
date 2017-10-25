package com.cookbook.service;

import com.cookbook.domain.Rating;
import com.cookbook.domain.Recipe;
import com.cookbook.domain.User;
import com.cookbook.repository.RatingRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class RatingService {
    private final RatingRepository ratingRepository;

    @Autowired
    public RatingService(RatingRepository ratingRepository) {
        this.ratingRepository = ratingRepository;
    }

    public Rating find(User user, Recipe recipe) {
        return ratingRepository.find(user.getId(), recipe.getId());
    }

    public void save(Integer rate, User user, Recipe recipe) {
        Rating rating = ratingRepository.find(user.getId(), recipe.getId());
        if (rating == null) {
            rating = new Rating();
            rating.setUser(user);
            rating.setRecipe(recipe);
        }
        rating.setRate(rate);
        ratingRepository.save(rating);
    }

    public void save(List<Integer> rates, User user, List<Recipe> recipes) {
        for (int i = 0; i < rates.size(); i++) {
            Rating rating = new Rating();
            rating.setRate(rates.get(i));
            rating.setUser(user);
            rating.setRecipe(recipes.get(i));
            ratingRepository.save(rating);
        }
    }
}

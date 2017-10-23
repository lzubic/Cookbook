package com.cookbook.service;

import com.cookbook.domain.Rating;
import com.cookbook.domain.Recipe;
import com.cookbook.domain.User;
import com.cookbook.repository.RatingRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class RatingService {
    private final RatingRepository ratingRepository;

    @Autowired
    public RatingService(RatingRepository ratingRepository) {
        this.ratingRepository = ratingRepository;
    }

    public void save(User user, Recipe[] recipes) {
        Rating rating = new Rating();
        ratingRepository.save(rating);
    }
}

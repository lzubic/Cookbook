package com.cookbook.controller;

import com.cookbook.domain.Recipe;
import com.cookbook.domain.User;
import com.cookbook.service.RatingService;
import com.cookbook.service.RecipeService;
import com.cookbook.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@RestController
public class RatingController {
    private final RatingService ratingService;
    private final UserService userService;
    private final RecipeService recipeService;

    @Autowired
    public RatingController(RatingService ratingService, UserService userService, RecipeService recipeService) {
        this.ratingService = ratingService;
        this.userService = userService;
        this.recipeService = recipeService;
    }

    @RequestMapping(value = "/rating", method = RequestMethod.POST)
    public void saveRating(@RequestBody Map<String, Integer> params) {
        User user = userService.getRemoteUser();
        Recipe recipe = recipeService.findById(params.get("recipe").longValue());
        ratingService.save(params.get("rate"), user, recipe);
    }

    @RequestMapping(value = "/ratings", method = RequestMethod.POST)
    public void saveRatings(@RequestBody Map<String, List<Integer>> params) {
        User user = userService.getRemoteUser();
        user.setEnabled(true);
        List<Recipe> recipes = new ArrayList<>();
        for (Integer id : params.get("recipes")) {
            recipes.add(recipeService.findById(id.longValue()));
        }
        ratingService.save(params.get("rates"), user, recipes);
    }
}

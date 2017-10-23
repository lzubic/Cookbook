package com.cookbook.controller;

import com.cookbook.domain.Recipe;
import com.cookbook.domain.User;
import com.cookbook.service.RatingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class RatingController {
    private final RatingService ratingService;

    @Autowired
    public RatingController(RatingService ratingService) {
        this.ratingService = ratingService;
    }

    @RequestMapping(value = "/ratings", method = RequestMethod.POST)
    public ModelAndView saveRatings(@RequestParam("recipes")Recipe[] recipes, @RequestParam("ratings")String[] ratings) {
        User user = new User();
        ratingService.save(user, recipes);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("redirect:/home");
        return mav;
    }
}

package com.cookbook.controller;

import com.cookbook.domain.User;
import com.cookbook.service.RecommendationService;
import com.cookbook.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class RecommendationController {
    private final RecommendationService recommendationService;
    private final UserService userService;

    @Autowired
    public RecommendationController(RecommendationService recommendationService, UserService userService) {
        this.recommendationService = recommendationService;
        this.userService = userService;
    }

    @RequestMapping(value = "/recommendations", method = RequestMethod.GET)
    public ModelAndView showRecommendations() {
        User user = userService.getRemoteUser();
        ModelAndView mav = new ModelAndView();
        mav.addObject("recipes", recommendationService.getRecommendations(user));
        mav.setViewName("user/recommendations/recommendations");
        return mav;
    }
}

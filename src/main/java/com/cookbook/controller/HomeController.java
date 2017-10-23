package com.cookbook.controller;

import com.cookbook.service.RecipeService;
import com.cookbook.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class HomeController {
    private final UserService userService;
    private final RecipeService recipeService;

    @Autowired
    public HomeController(UserService userService, RecipeService recipeService) {
        this.userService = userService;
        this.recipeService = recipeService;
    }

    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public ModelAndView showHome() {
        ModelAndView mav = new ModelAndView();
        mav.addObject("user", userService.getRemoteUser());
        mav.addObject("recipes", recipeService.findAll(1));
        mav.setViewName("user/home");
        return mav;
    }
}

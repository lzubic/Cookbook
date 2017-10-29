package com.cookbook.controller;

import com.cookbook.domain.Recipe;
import com.cookbook.domain.User;
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
        User remoteUser = userService.getRemoteUser();
        Iterable<Recipe> randomRecipes = !remoteUser.getEnabled() ? recipeService.findRandomly() : null;
        ModelAndView mav = new ModelAndView();
        mav.addObject("remoteUser", remoteUser);
        mav.addObject("randomRecipes", randomRecipes);
        //mav.addObject("topRecipes", recipeService.findTopRated());
        mav.setViewName("user/home");
        return mav;
    }
}

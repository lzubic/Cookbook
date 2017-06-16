package com.cookbook.controller;

import com.cookbook.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class AdminController {
    private final UserService userService;

    @Autowired
    public AdminController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping(value = "/admin/dashboard", method = RequestMethod.GET)
    public ModelAndView users() {
        ModelAndView model = new ModelAndView();
        model.setViewName("admin/dashboard");
        return model;
    }

    @RequestMapping(value = "/admin/recipes", method = RequestMethod.GET)
    public ModelAndView recipes() {
        ModelAndView model = new ModelAndView();
        model.setViewName("admin/recipes/recipes-list");
        return model;
    }

    @RequestMapping(value = "/admin/recipes/new", method = RequestMethod.POST)
    public ModelAndView addNewRecipe() {
        ModelAndView model = new ModelAndView();
        model.setViewName("admin/recipes/recipe-form");
        return model;
    }
}

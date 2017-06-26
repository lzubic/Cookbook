package com.cookbook.controller;

import com.cookbook.domain.Recipe;
import com.cookbook.service.RecipeService;
import com.cookbook.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class AdminController {
    private final UserService userService;
    private final RecipeService recipeService;

    @Autowired
    public AdminController(UserService userService, RecipeService recipeService) {
        this.userService = userService;
        this.recipeService = recipeService;
    }

    @RequestMapping(value = "/admin/dashboard", method = RequestMethod.GET)
    public ModelAndView users() {
        ModelAndView mav = new ModelAndView();
        mav.addObject("recipe", new Recipe());
        mav.setViewName("admin/home");
        return mav;
    }

    @RequestMapping(value = "/admin/recipes", method = RequestMethod.GET)
    public ModelAndView recipes() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("admin/recipes/recipes-list");
        return mav;
    }

    @RequestMapping(value = "/admin/recipes/new", method = RequestMethod.POST)
    public ModelAndView createNewRecipe(@ModelAttribute("recipe")Recipe recipe) {
        recipeService.save(recipe);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("admin/recipes/recipes-list");
        return mav;
    }

    @RequestMapping(value = "/admin/recipes/{id}", method = RequestMethod.GET)
    public ModelAndView recipe(@PathVariable("id")Long id) {
        ModelAndView mav = new ModelAndView();
        mav.addObject("recipe", recipeService.findById(id));
        mav.setViewName("common/recipe-info");
        return mav;
    }
}

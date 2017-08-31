package com.cookbook.controller;

import com.cookbook.domain.Recipe;
import com.cookbook.service.CategoryService;
import com.cookbook.service.IngredientService;
import com.cookbook.service.RecipeService;
import com.cookbook.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class AdminController {
    private final UserService userService;
    private final RecipeService recipeService;
    private final IngredientService ingredientService;
    private final CategoryService categoryService;

    @Autowired
    public AdminController(UserService userService, RecipeService recipeService, IngredientService ingredientService, CategoryService categoryService) {
        this.userService = userService;
        this.recipeService = recipeService;
        this.ingredientService = ingredientService;
        this.categoryService = categoryService;
    }

    @RequestMapping(value = "/admin/dashboard", method = RequestMethod.GET)
    public ModelAndView users() {
        ModelAndView mav = new ModelAndView();
        mav.addObject("recipe", new Recipe());
        mav.addObject("allIngredients", ingredientService.findAll());
        mav.addObject("allCategories", categoryService.findAll());
        mav.setViewName("admin/home");
        return mav;
    }

    @RequestMapping(value = "/admin/recipes", method = RequestMethod.GET)
    public ModelAndView recipes() {
        ModelAndView mav = new ModelAndView();
        mav.addObject("recipes", recipeService.findAll());
        mav.setViewName("admin/recipes/recipes-list");
        return mav;
    }

    @RequestMapping(value = "/admin/recipes/new", method = RequestMethod.GET)
    public ModelAndView createRecipe() {
        ModelAndView mav = new ModelAndView();
        mav.addObject("recipe", new Recipe());
        mav.addObject("allIngredients", ingredientService.findAll());
        mav.addObject("allCategories", categoryService.findAll());
        mav.setViewName("admin/recipes/recipe-form");
        return mav;
    }

    @RequestMapping(value = "/admin/recipes/new", method = RequestMethod.POST)
    public ModelAndView createRecipe(@ModelAttribute("recipe")Recipe recipe) {
        recipeService.save(recipe);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("admin/recipes/recipes-list");
        return mav;
    }
}

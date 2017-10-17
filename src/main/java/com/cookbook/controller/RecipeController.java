package com.cookbook.controller;

import com.cookbook.domain.Recipe;
import com.cookbook.service.CategoryService;
import com.cookbook.service.IngredientService;
import com.cookbook.service.RecipeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class RecipeController {
    private final RecipeService recipeService;
    private final IngredientService ingredientService;
    private final CategoryService categoryService;

    @Autowired
    public RecipeController(RecipeService recipeService, IngredientService ingredientService, CategoryService categoryService) {
        this.recipeService = recipeService;
        this.ingredientService = ingredientService;
        this.categoryService = categoryService;
    }

    @RequestMapping(value = "/admin/recipes", method = RequestMethod.GET)
    public ModelAndView allRecipes() {
        ModelAndView mav = new ModelAndView();
        mav.addObject("recipes", recipeService.findAll());
        mav.setViewName("admin/recipes/recipes-list");
        return mav;
    }

    @RequestMapping(value = "/admin/recipes/{id}", method = RequestMethod.GET)
    public ModelAndView showRecipe(@PathVariable("id")Long id) {
        ModelAndView mav = new ModelAndView();
        mav.addObject("recipe", recipeService.findById(id));
        mav.setViewName("admin/recipes/recipe-info");
        return mav;
    }

    @RequestMapping(value = "/admin/recipes/new", method = RequestMethod.GET)
    public ModelAndView newRecipe() {
        ModelAndView mav = new ModelAndView();
        mav.addObject("recipe", new Recipe());
        mav.addObject("allCategories", categoryService.findAll());
        mav.addObject("allIngredients", ingredientService.findAll());
        mav.setViewName("admin/recipes/recipe-new");
        return mav;
    }

    @RequestMapping(value = "/admin/recipes/{id}/edit", method = RequestMethod.GET)
    public ModelAndView editRecipe(@PathVariable("id")Long id) {
        ModelAndView mav = new ModelAndView();
        mav.addObject("recipe", recipeService.findById(id));
        mav.addObject("allCategories", categoryService.findAll());
        mav.addObject("allIngredients", ingredientService.findAll());
        mav.setViewName("admin/recipes/recipe-edit");
        return mav;
    }

    @RequestMapping(value = "/admin/recipes", method = RequestMethod.POST)
    public ModelAndView createRecipe(@ModelAttribute("recipe")Recipe recipe, @RequestParam("file")MultipartFile file) {
        recipeService.save(recipe, file);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("redirect:/admin/recipes");
        return mav;
    }

    @RequestMapping(value = "/admin/recipes/{id}", method = RequestMethod.PUT)
    public ModelAndView updateRecipe(@PathVariable("id")Long id, @ModelAttribute("recipe")Recipe recipe) {
        recipeService.update(id, recipe);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("redirect:/admin/recipes");
        return mav;
    }

    @RequestMapping(value = "/admin/recipes/{id}", method = RequestMethod.DELETE)
    public ModelAndView deleteRecipe(@PathVariable("id")Long id) {
        recipeService.delete(id);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("redirect:/admin/recipes");
        return mav;
    }
}

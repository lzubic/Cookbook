package com.cookbook.controller;

import com.cookbook.domain.Ingredient;
import com.cookbook.service.CharacteristicService;
import com.cookbook.service.IngredientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class IngredientController {
    private final IngredientService ingredientService;
    private final CharacteristicService characteristicService;

    @Autowired
    public IngredientController(IngredientService ingredientService, CharacteristicService characteristicService) {
        this.ingredientService = ingredientService;
        this.characteristicService = characteristicService;
    }

    @RequestMapping(value = "/admin/ingredients", method = RequestMethod.GET)
    public ModelAndView getIngredients() {
        ModelAndView mav = new ModelAndView();
        mav.addObject("ingredients", ingredientService.findAll());
        mav.setViewName("admin/ingredients/ingredients-list");
        return mav;
    }

    @RequestMapping(value = "/admin/ingredients/new", method = RequestMethod.GET)
    public ModelAndView showIngredient() {
        ModelAndView mav = new ModelAndView();
        mav.addObject("ingredient", new Ingredient());
        mav.addObject("allCharacteristics", characteristicService.findAll());
        mav.setViewName("admin/ingredients/ingredient-form");
        return mav;
    }

    @RequestMapping(value = "/admin/ingredients/new", method = RequestMethod.POST)
    public ModelAndView createIngredient(@ModelAttribute("ingredient")Ingredient ingredient) {
        ingredientService.save(ingredient);
        ModelAndView mav = new ModelAndView();
        mav.addObject("ingredients", ingredientService.findAll());
        mav.setViewName("admin/ingredients/ingredients-list");
        return mav;
    }
}

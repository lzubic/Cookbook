package com.cookbook.controller;

import com.cookbook.domain.Ingredient;
import com.cookbook.service.CharacteristicService;
import com.cookbook.service.IngredientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
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
    public ModelAndView allIngredients() {
        ModelAndView mav = new ModelAndView();
        mav.addObject("ingredients", ingredientService.findAll());
        mav.setViewName("admin/ingredients/ingredients-list");
        return mav;
    }

    @RequestMapping(value = "/admin/ingredients/{id}", method = RequestMethod.GET)
    public ModelAndView showIngredient(@PathVariable("id")Long id) {
        ModelAndView mav = new ModelAndView();
        mav.addObject("ingredient", ingredientService.findById(id));
        mav.setViewName("admin/ingredients/ingredient-new");
        return mav;
    }

    @RequestMapping(value = "/admin/ingredients/new", method = RequestMethod.GET)
    public ModelAndView newIngredient() {
        ModelAndView mav = new ModelAndView();
        mav.addObject("ingredient", new Ingredient());
        mav.addObject("allCharacteristics", characteristicService.findAll());
        mav.setViewName("admin/ingredients/ingredient-new");
        return mav;
    }

    @RequestMapping(value = "/admin/ingredients/{id}/edit", method = RequestMethod.GET)
    public ModelAndView editIngredient(@PathVariable("id")Long id) {
        ModelAndView mav = new ModelAndView();
        mav.addObject("ingredient", ingredientService.findById(id));
        mav.addObject("allCharacteristics", characteristicService.findAll());
        mav.setViewName("admin/ingredients/ingredient-edit");
        return mav;
    }

    @RequestMapping(value = "/admin/ingredients", method = RequestMethod.POST)
    public ModelAndView createIngredient(@ModelAttribute("ingredient")Ingredient ingredient) {
        ingredientService.save(ingredient);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("redirect:/admin/ingredients");
        return mav;
    }

    @RequestMapping(value = "/admin/ingredients/{id}", method = RequestMethod.PUT)
    public ModelAndView updateIngredient(@PathVariable("id")Long id, @ModelAttribute("ingredient")Ingredient ingredient) {
        ingredientService.update(id, ingredient);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("redirect:/admin/ingredients");
        return mav;
    }

    @RequestMapping(value = "/admin/ingredients/{id}", method = RequestMethod.DELETE)
    public ModelAndView deleteIngredient(@PathVariable("id")Long id) {
        ingredientService.delete(id);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("redirect:/admin/ingredients");
        return mav;
    }
}

package com.cookbook.controller;

import com.cookbook.domain.User;
import com.cookbook.service.IngredientService;
import com.cookbook.service.PreferenceService;
import com.cookbook.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class RegisterController {
    private final UserService userService;
    private final IngredientService ingredientService;
    private final PreferenceService preferenceService;

    @Autowired
    public RegisterController(UserService userService, IngredientService ingredientService, PreferenceService preferenceService) {
        this.userService = userService;
        this.ingredientService = ingredientService;
        this.preferenceService = preferenceService;
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public ModelAndView showRegister() {
        ModelAndView mav = new ModelAndView();
        mav.addObject("user", new User());
        mav.addObject("allIngredients", ingredientService.findAll());
        mav.setViewName("register/register");
        return mav;
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public ModelAndView processRegister(@ModelAttribute("user")User user) {
        userService.save(user);
        preferenceService.save(user);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("redirect:/login");
        return mav;
    }
}

package com.cookbook.controller;

import com.cookbook.domain.User;
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

    @Autowired
    public RegisterController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public ModelAndView showRegister() {
        ModelAndView mav = new ModelAndView();
        mav.addObject("user", new User());
        mav.setViewName("register");
        return mav;
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public ModelAndView processRegister(@ModelAttribute("user")User user) {
        userService.save(user);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("register/register-step-2");
        return mav;
    }

    @RequestMapping(value = "/register-step-2", method = RequestMethod.POST)
    public ModelAndView processRegisterStepTwo(@ModelAttribute("user")User user) {
        userService.save(user);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("user/home");
        return mav;
    }
}

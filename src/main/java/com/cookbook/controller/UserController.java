package com.cookbook.controller;

import com.cookbook.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class UserController {
    private final UserService userService;

    @Autowired
    public UserController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping(value = "/admin/users", method = RequestMethod.GET)
    public ModelAndView getUsers() {
        ModelAndView mav = new ModelAndView();
        mav.addObject("users", userService.findAll());
        mav.setViewName("admin/users/users-list");
        return mav;
    }

    @RequestMapping(value = "/admin/users/{id}", method = RequestMethod.GET)
    public ModelAndView showUser(@PathVariable("id")Long id) {
        ModelAndView mav = new ModelAndView();
        mav.addObject("user", userService.findById(id));
        mav.setViewName("admin/users/user-form");
        return mav;
    }

    @RequestMapping(value = "/admin/users/delete/{id}", method = RequestMethod.GET)
    public ModelAndView deleteUser(@PathVariable("id")Long id) {
        userService.remove(id);
        ModelAndView mav = new ModelAndView();
        mav.addObject("users", userService.findAll());
        mav.setViewName("admin/users/users-list");
        return mav;
    }
}

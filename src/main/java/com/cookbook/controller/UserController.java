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
        ModelAndView model = new ModelAndView();
        model.addObject("users", userService.findAll());
        model.setViewName("admin/users/users-list");
        return model;
    }

    @RequestMapping(value = "/admin/users/delete/{id}", method = RequestMethod.DELETE)
    public ModelAndView deleteUser(@PathVariable("id")Long id) {
        ModelAndView model = new ModelAndView();
        model.addObject("users", userService.findAll());
        model.setViewName("admin/users/users-list");
        return model;
    }
}

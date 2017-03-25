package com.cookbook.controller;

import com.cookbook.domain.User;
import com.cookbook.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController {
    private final UserService userService;

    @Autowired
    public UserController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping(value = "/users", method = RequestMethod.GET)
    public String users() {
        String response = null;
        Iterable<User> users = userService.getAllUsers();
        for (User user : users) {
            response = response + user.getUsername();
        }
        return response;
    }
}

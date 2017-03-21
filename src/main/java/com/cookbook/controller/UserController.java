package com.cookbook.controller;

import com.cookbook.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController {
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index() {
        return "Index page";
    }
}

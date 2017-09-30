package com.cookbook.controller;

import com.cookbook.domain.Category;
import com.cookbook.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class CategoryController {
    private final CategoryService categoryService;

    @Autowired
    public CategoryController(CategoryService categoryService) {
        this.categoryService = categoryService;
    }

    @RequestMapping(value = "/admin/categories", method = RequestMethod.GET)
    public ModelAndView getCategories() {
        ModelAndView mav = new ModelAndView();
        mav.addObject("categories", categoryService.findAll());
        mav.setViewName("admin/categories/categories-list");
        return mav;
    }

    @RequestMapping(value = "/admin/categories/new", method = RequestMethod.GET)
    public ModelAndView showCategory() {
        ModelAndView mav = new ModelAndView();
        mav.addObject("category", new Category());
        mav.setViewName("admin/categories/category-form");
        return mav;
    }

    @RequestMapping(value = "/admin/categories/new", method = RequestMethod.POST)
    public ModelAndView createCategory(@ModelAttribute("category")Category category) {
        categoryService.save(category);
        ModelAndView mav = new ModelAndView();
        mav.addObject("categories", categoryService.findAll());
        mav.setViewName("admin/categories/categories-list");
        return mav;
    }
}

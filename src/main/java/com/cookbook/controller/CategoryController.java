package com.cookbook.controller;

import com.cookbook.domain.Category;
import com.cookbook.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class CategoryController {
    private final CategoryService categoryService;

    @Autowired
    public CategoryController(CategoryService categoryService) {
        this.categoryService = categoryService;
    }

    @RequestMapping(value = "/admin/categories", method = RequestMethod.GET)
    public ModelAndView allCategories() {
        ModelAndView mav = new ModelAndView();
        mav.addObject("categories", categoryService.findAll());
        mav.setViewName("admin/categories/categories-list");
        return mav;
    }

    @RequestMapping(value = "/admin/categories/{id}", method = RequestMethod.GET)
    public ModelAndView showCategory(@PathVariable("id")Long id) {
        ModelAndView mav = new ModelAndView();
        mav.addObject("category", categoryService.findById(id));
        mav.setViewName("admin/categories/category-new");
        return mav;
    }

    @RequestMapping(value = "/admin/categories/new", method = RequestMethod.GET)
    public ModelAndView newCategory() {
        ModelAndView mav = new ModelAndView();
        mav.addObject("category", new Category());
        mav.setViewName("admin/categories/category-new");
        return mav;
    }

    @RequestMapping(value = "/admin/categories/{id}/edit", method = RequestMethod.GET)
    public ModelAndView editCategory(@PathVariable("id")Long id) {
        ModelAndView mav = new ModelAndView();
        mav.addObject("category", categoryService.findById(id));
        mav.setViewName("admin/categories/category-edit");
        return mav;
    }

    @RequestMapping(value = "/admin/categories", method = RequestMethod.POST)
    public ModelAndView createCategory(@ModelAttribute("category")Category category) {
        categoryService.save(category);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("redirect:/admin/categories");
        return mav;
    }

    @RequestMapping(value = "/admin/categories/{id}", method = RequestMethod.PUT)
    public ModelAndView updateCategory(@PathVariable("id")Long id, @ModelAttribute("category")Category category) {
        categoryService.update(id, category);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("redirect:/admin/categories");
        return mav;
    }

    @RequestMapping(value = "/admin/categories/{id}", method = RequestMethod.DELETE)
    public ModelAndView deleteCategory(@PathVariable("id")Long id) {
        categoryService.delete(id);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("redirect:/admin/categories");
        return mav;
    }
}

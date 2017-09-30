package com.cookbook.controller;

import com.cookbook.domain.Characteristic;
import com.cookbook.service.CharacteristicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class CharacteristicController {
    private final CharacteristicService characteristicService;

    @Autowired
    public CharacteristicController(CharacteristicService characteristicService) {
        this.characteristicService = characteristicService;
    }

    @RequestMapping(value = "/admin/characteristics", method = RequestMethod.GET)
    public ModelAndView getCharacteristics() {
        ModelAndView mav = new ModelAndView();
        mav.addObject("characteristics", characteristicService.findAll());
        mav.setViewName("admin/characteristics/characteristics-list");
        return mav;
    }

    @RequestMapping(value = "/admin/characteristics/new", method = RequestMethod.GET)
    public ModelAndView showCharacteristic() {
        ModelAndView mav = new ModelAndView();
        mav.addObject("characteristic", new Characteristic());
        mav.setViewName("admin/characteristics/characteristic-form");
        return mav;
    }

    @RequestMapping(value = "/admin/characteristics/new", method = RequestMethod.POST)
    public ModelAndView createCategory(@ModelAttribute("characteristic")Characteristic characteristic) {
        characteristicService.save(characteristic);
        ModelAndView mav = new ModelAndView();
        mav.addObject("characteristics", characteristicService.findAll());
        mav.setViewName("admin/characteristics/characteristics-list");
        return mav;
    }
}

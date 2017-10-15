package com.cookbook.controller;

import com.cookbook.domain.Characteristic;
import com.cookbook.service.CharacteristicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class CharacteristicController {
    private final CharacteristicService characteristicService;

    @Autowired
    public CharacteristicController(CharacteristicService characteristicService) {
        this.characteristicService = characteristicService;
    }

    @RequestMapping(value = "/admin/characteristics", method = RequestMethod.GET)
    public ModelAndView allCharacteristics() {
        ModelAndView mav = new ModelAndView();
        mav.addObject("characteristics", characteristicService.findAll());
        mav.setViewName("admin/characteristics/characteristics-list");
        return mav;
    }

    @RequestMapping(value = "/admin/characteristics/{id}", method = RequestMethod.GET)
    public ModelAndView showCharacteristic(@PathVariable("id")Long id) {
        ModelAndView mav = new ModelAndView();
        mav.addObject("characteristic", characteristicService.findById(id));
        mav.setViewName("admin/characteristics/characteristic-new");
        return mav;
    }

    @RequestMapping(value = "/admin/characteristics/new", method = RequestMethod.GET)
    public ModelAndView newCharacteristic() {
        ModelAndView mav = new ModelAndView();
        mav.addObject("characteristic", new Characteristic());
        mav.setViewName("admin/characteristics/characteristic-new");
        return mav;
    }

    @RequestMapping(value = "/admin/characteristics/{id}/edit", method = RequestMethod.GET)
    public ModelAndView editCharacteristic(@PathVariable("id")Long id) {
        ModelAndView mav = new ModelAndView();
        mav.addObject("characteristic", characteristicService.findById(id));
        mav.setViewName("admin/characteristics/characteristic-edit");
        return mav;
    }

    @RequestMapping(value = "/admin/characteristics", method = RequestMethod.POST)
    public ModelAndView createCharacteristic(@ModelAttribute("characteristic")Characteristic characteristic) {
        characteristicService.save(characteristic);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("redirect:/admin/characteristics");
        return mav;
    }

    @RequestMapping(value = "/admin/characteristics/{id}", method = RequestMethod.PUT)
    public ModelAndView updateCharacteristic(@PathVariable("id")Long id, @ModelAttribute("characteristic")Characteristic characteristic) {
        characteristicService.update(id, characteristic);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("redirect:/admin/characteristics");
        return mav;
    }

    @RequestMapping(value = "/admin/characteristics/{id}", method = RequestMethod.DELETE)
    public ModelAndView deleteCharacteristic(@PathVariable("id")Long id) {
        characteristicService.delete(id);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("redirect:/admin/characteristics");
        return mav;
    }
}

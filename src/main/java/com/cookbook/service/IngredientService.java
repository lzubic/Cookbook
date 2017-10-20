package com.cookbook.service;

import com.cookbook.domain.Ingredient;
import com.cookbook.repository.IngredientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class IngredientService {
    private final IngredientRepository ingredientRepository;

    @Autowired
    public IngredientService(IngredientRepository ingredientRepository) {
        this.ingredientRepository = ingredientRepository;
    }

    public Iterable<Ingredient> findAll() {
        return ingredientRepository.findAll();
    }

    public Ingredient findById(Long id) {
        return ingredientRepository.findOne(id);
    }

    public void save(Ingredient ingredient) {
        ingredientRepository.save(ingredient);
    }

    public void update(Long id, Ingredient ingredient) {
        ingredientRepository.save(ingredient);
    }

    public void delete(Long id) {
        ingredientRepository.delete(id);
    }
}

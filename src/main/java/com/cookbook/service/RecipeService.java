package com.cookbook.service;

import com.cookbook.domain.Recipe;
import com.cookbook.repository.RecipeRepository;
import com.cookbook.utilities.files.FileManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

@Service
@Transactional
public class RecipeService {
    private final RecipeRepository recipeRepository;

    @Autowired
    public RecipeService(RecipeRepository recipeRepository) {
        this.recipeRepository = recipeRepository;
    }

    public Iterable<Recipe> findAll() {
        return recipeRepository.findAll();
    }

    public Recipe findById(Long id) {
        return recipeRepository.findOne(id);
    }

    public void save(Recipe recipe, MultipartFile file) {
        recipeRepository.save(recipe);
        FileManager.upload(file);
    }

    public void update(Long id, Recipe recipe) {
        Recipe newRecipe = recipeRepository.findOne(id);
        newRecipe.setName(recipe.getName());
        newRecipe.setPhoto(recipe.getPhoto());
        newRecipe.setDescription(recipe.getDescription());
        newRecipe.setInstructions(recipe.getInstructions());
        newRecipe.setPreparationTime(recipe.getPreparationTime());
        newRecipe.setNumberOfServings(recipe.getNumberOfServings());
        newRecipe.setMealType(recipe.getMealType());
        newRecipe.setDishType(recipe.getDishType());
        recipeRepository.save(newRecipe);
    }

    public void delete(Long id) {
        Recipe recipe = recipeRepository.findOne(id);
        recipeRepository.delete(recipe);
        FileManager.unload(recipe.getPhoto());
    }
}

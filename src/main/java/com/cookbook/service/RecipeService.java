package com.cookbook.service;

import com.cookbook.domain.Recipe;
import com.cookbook.repository.RecipeRepository;
import com.cookbook.utilities.constants.Constants;
import com.cookbook.utilities.files.FileManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

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

    public Iterable<Recipe> findAll(Integer page) {
        Pageable pageable = new PageRequest(page - 1, Constants.ITEMS_PER_PAGE);
        return recipeRepository.findAll(pageable, 0).getContent();
    }

    public Iterable<Recipe> findRandomly() {
        List<Recipe> recipes = new ArrayList<>();
        recipeRepository.findAll().forEach(recipes::add);
        List<Recipe> randomRecipes = new ArrayList<>();
        Random random = new Random();
        for (int i = 0; i < Constants.ITEMS_PER_REGISTRATION && !recipes.isEmpty(); i++) {
            int index = random.nextInt(recipes.size());
            randomRecipes.add(recipes.get(index));
            recipes.remove(index);
        }
        return randomRecipes;
    }

    public Iterable<Recipe> findTopRated() {
        List<Recipe> recipes = new ArrayList<>();
        recipeRepository.findAll().forEach(recipes::add);
        List<Recipe> topRecipes = new ArrayList<>();
        for (Recipe recipe: recipes) {
            Float averageRating = recipeRepository.getAverageRating(recipe.getId());
        }
        return null;
    }

    public Recipe findById(Long id) {
        return recipeRepository.findOne(id);
    }

    public void save(Recipe recipe, MultipartFile file) {
        recipeRepository.save(recipe);
        FileManager.upload(file);
    }

    public void update(Long id, Recipe recipe, MultipartFile file) {
        FileManager.unload(recipeRepository.findOne(id).getPhoto());
        recipeRepository.save(recipe);
        FileManager.upload(file);
    }

    public void delete(Long id) {
        Recipe recipe = recipeRepository.findOne(id);
        recipeRepository.delete(recipe);
        FileManager.unload(recipe.getPhoto());
    }
}

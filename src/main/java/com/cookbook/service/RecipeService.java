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

    public Iterable<Recipe> findRandom() {
        return recipeRepository.findRandom(Constants.ITEMS_PER_PAGE);
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

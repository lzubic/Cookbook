package com.cookbook.service;

import com.cookbook.domain.Category;
import com.cookbook.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class CategoryService {
    private final CategoryRepository categoryRepository;

    @Autowired
    public CategoryService(CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }

    public Iterable<Category> findAll() {
        return categoryRepository.findAll();
    }

    public Category findById(Long id) {
        return categoryRepository.findOne(id);
    }

    public void save(Category category) {
        categoryRepository.save(category);
    }

    public void update(Long id, Category category) {
        categoryRepository.save(category);
    }

    public void delete(Long id) {
        categoryRepository.delete(id);
    }
}

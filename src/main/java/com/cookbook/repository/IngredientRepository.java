package com.cookbook.repository;

import com.cookbook.domain.Ingredient;
import org.springframework.data.neo4j.repository.GraphRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IngredientRepository extends GraphRepository<Ingredient> {
}

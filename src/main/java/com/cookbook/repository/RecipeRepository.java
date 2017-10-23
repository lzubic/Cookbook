package com.cookbook.repository;

import com.cookbook.domain.Recipe;
import org.springframework.data.neo4j.repository.GraphRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RecipeRepository extends GraphRepository<Recipe> {
}

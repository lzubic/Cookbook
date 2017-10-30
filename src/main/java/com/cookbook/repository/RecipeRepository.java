package com.cookbook.repository;

import com.cookbook.domain.Recipe;
import org.springframework.data.neo4j.annotation.Query;
import org.springframework.data.neo4j.repository.GraphRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface RecipeRepository extends GraphRepository<Recipe> {
    @Query("MATCH ()-[rated:RATED]->(recipe:Recipe) WHERE ID(recipe) = {id} RETURN AVG(rated.rate)")
    Double getAverageRating(@Param("id") Long id);
}

package com.cookbook.repository;

import com.cookbook.domain.Favorite;
import com.cookbook.domain.Preference;
import com.cookbook.domain.Recipe;
import org.springframework.data.neo4j.annotation.Query;
import org.springframework.data.neo4j.repository.GraphRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface RecipeRepository extends GraphRepository<Recipe> {
    @Query("MATCH ()-[rated:RATED]->(recipe:Recipe) WHERE ID(recipe) = {id} RETURN AVG(rated.rate)")
    Double getAverageRating(@Param("id") Long id);

    @Query("MATCH (user:User)-[prefers:PREFERS]->(:Characteristic)<-[:MARK]-(:Ingredient)<-[:CONTAINS]-(recipe:Recipe) WHERE ID(user) = {user} AND ID(recipe) = {recipe} RETURN prefers")
    Iterable<Preference> findPreferences(@Param("user")Long user, @Param("recipe")Long recipe);

    @Query("MATCH (user:User)-[favorites:FAVORITES]->(:Category)<-[:BELONGS]-(recipe:Recipe) WHERE ID(user) = {user} AND ID(recipe) = {recipe} RETURN favorites")
    Iterable<Favorite> findFavorites(@Param("user")Long user, @Param("recipe")Long recipe);
}

package com.cookbook.repository;

import com.cookbook.domain.Rating;
import org.springframework.data.neo4j.annotation.Query;
import org.springframework.data.neo4j.repository.GraphRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface RatingRepository extends GraphRepository<Rating> {
    @Query("MATCH (user:User)-[rated:RATED]->(recipe:Recipe) WHERE ID(user) = {user} AND ID(recipe) = {recipe} RETURN rated")
    Rating find(@Param("user")Long user, @Param("recipe")Long recipe);
}

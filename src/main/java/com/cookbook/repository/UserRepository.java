package com.cookbook.repository;

import com.cookbook.domain.Recipe;
import com.cookbook.domain.User;
import org.springframework.data.neo4j.annotation.Query;
import org.springframework.data.neo4j.repository.GraphRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends GraphRepository<User> {
    @Query("MATCH (user:User) WHERE user.username = {username} RETURN user")
    User findByUsername(@Param("username")String username);

    @Query("MATCH (user:User)-[rated:RATED]->(recipe:Recipe) WHERE ID(user) = {uid} AND ID(recipe) = {rid} RETURN rated.rate")
    Integer getRating(@Param("uid")Long id, @Param("rid")Long rid);

    @Query("MATCH (user:User)-[rated:RATED]->() WHERE ID(user) = {id} RETURN AVG(rated.rate)")
    Float getAverageRating(@Param("id")Long id);

    @Query("MATCH (user:User)-[:RATED]->(recipe:Recipe)<-[:RATED]-(other:User) WHERE ID(user) = {id} AND ID(other) <> {id} RETURN other")
    Iterable<User> findNearestNeighbors(Long id);

    @Query("MATCH (user:User), (recipe:Recipe) WHERE ID(user) = {id} AND NOT((user)-[:RATED]->(recipe)) RETURN recipe")
    Iterable<Recipe> findUnratedRecipes(@Param("id")Long id);

    @Query("MATCH (user:User)-[:RATED]->(recipe:Recipe)<-[:RATED]-(other:User) WHERE ID(user) = {uid} AND ID(other) = {oid} RETURN recipe")
    Iterable<Recipe> findCommonRecipes(@Param("uid")Long id, @Param("oid")Long oid);
}

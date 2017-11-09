package com.cookbook.repository;

import com.cookbook.domain.Favorite;
import org.springframework.data.neo4j.annotation.Query;
import org.springframework.data.neo4j.repository.GraphRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface FavoriteRepository extends GraphRepository<Favorite> {
    @Query("MATCH (user:User)-[favors:FAVORS]->(category:Category) WHERE ID(user) = {user} AND ID(category) = {category} RETURN favors")
    Favorite find(@Param("user")Long user, @Param("category")Long category);
}

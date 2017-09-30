package com.cookbook.repository;

import com.cookbook.domain.User;
import org.springframework.data.neo4j.annotation.Query;
import org.springframework.data.neo4j.repository.GraphRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends GraphRepository<User> {
    @Query("MATCH (user:User) WHERE user.username = {username} RETURN user")
    User findByUsername(@Param("username")String username);

    @Query("MATCH (user:User) WHERE ID(user)={id} DELETE user")
    void remove(@Param("id")Long id);
}

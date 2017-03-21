package com.cookbook.repository;

import com.cookbook.domain.User;
import org.springframework.data.neo4j.repository.GraphRepository;

public interface UserRepository extends GraphRepository<User> {
}

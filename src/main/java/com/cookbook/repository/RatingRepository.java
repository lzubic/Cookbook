package com.cookbook.repository;

import com.cookbook.domain.Rating;
import org.springframework.data.neo4j.repository.GraphRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RatingRepository extends GraphRepository<Rating> {
}

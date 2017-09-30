package com.cookbook.repository;

import com.cookbook.domain.Characteristic;
import org.springframework.data.neo4j.repository.GraphRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CharacteristicRepository extends GraphRepository<Characteristic> {
}

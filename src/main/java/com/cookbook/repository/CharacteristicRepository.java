package com.cookbook.repository;

import com.cookbook.domain.Characteristic;
import org.springframework.data.neo4j.annotation.Query;
import org.springframework.data.neo4j.repository.GraphRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface CharacteristicRepository extends GraphRepository<Characteristic> {
    @Query("MATCH (characteristic:Characteristic) WHERE characteristic.name = {name} RETURN characteristic")
    Characteristic findByName(@Param("name")String name);
}

package com.cookbook.repository;

import com.cookbook.domain.Preference;
import org.springframework.data.neo4j.annotation.Query;
import org.springframework.data.neo4j.repository.GraphRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface PreferenceRepository extends GraphRepository<Preference> {
    @Query("MATCH (user:User)-[prefers:PREFERS]->(characteristic:Characteristic) WHERE ID(user) = {user} AND ID(characteristic) = {characteristic} RETURN prefers")
    Preference find(@Param("user")Long user, @Param("characteristic")Long characteristic);
}

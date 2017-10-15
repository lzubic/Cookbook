package com.cookbook.domain;

import org.neo4j.ogm.annotation.GraphId;
import org.neo4j.ogm.annotation.NodeEntity;
import org.neo4j.ogm.annotation.Property;
import org.neo4j.ogm.annotation.Relationship;

import java.util.HashSet;
import java.util.Set;

@NodeEntity
public class Ingredient {
    @GraphId
    private Long id;

    @Property
    private String name;

    @Relationship(type = "MARK", direction = Relationship.OUTGOING)
    private Set<Characteristic> characteristics = new HashSet<>();

    @Relationship(type = "CONTAINS", direction = Relationship.INCOMING)
    private Set<Recipe> recipes = new HashSet<>();

    public Ingredient() {}

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Set<Characteristic> getCharacteristics() {
        return characteristics;
    }

    public void setCharacteristics(Set<Characteristic> characteristics) {
        this.characteristics = new HashSet<>(characteristics);
    }

    public Set<Recipe> getRecipes() {
        return recipes;
    }

    public void setRecipes(Set<Recipe> recipes) {
        this.recipes = new HashSet<>(recipes);
    }
}

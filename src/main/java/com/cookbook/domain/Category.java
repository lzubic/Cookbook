package com.cookbook.domain;

import org.neo4j.ogm.annotation.GraphId;
import org.neo4j.ogm.annotation.NodeEntity;
import org.neo4j.ogm.annotation.Property;
import org.neo4j.ogm.annotation.Relationship;

import java.util.HashSet;
import java.util.Set;

@NodeEntity
public class Category {
    @GraphId
    private Long id;

    @Property
    private String name;

    @Relationship(type = "BELONGS", direction = Relationship.INCOMING)
    private Set<Recipe> recipes = new HashSet<>();

    @Relationship(type = "FAVORS", direction = Relationship.INCOMING)
    private Set<Favorite> favorites = new HashSet<>();

    public Category() {}

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

    public Set<Recipe> getRecipes() {
        return recipes;
    }

    public void setRecipes(Set<Recipe> recipes) {
        this.recipes = new HashSet<>(recipes);
    }

    public Set<Favorite> getFavorites() {
        return favorites;
    }

    public void setFavorites(Set<Favorite> favorites) {
        this.favorites = new HashSet<>(favorites);
    }
}

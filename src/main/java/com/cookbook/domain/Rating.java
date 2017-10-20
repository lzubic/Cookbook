package com.cookbook.domain;

import org.neo4j.ogm.annotation.*;

@RelationshipEntity(type = "RATED")
public class Rating {
    @GraphId
    private Long id;

    @Property
    private Integer rate;

    @StartNode
    private User user;

    @EndNode
    private Recipe recipe;

    public Rating() {
    }

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getRate() {
        return rate;
    }

    public void setRate(Integer rate) {
        this.rate = rate;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Recipe getRecipe() {
        return recipe;
    }

    public void setRecipe(Recipe recipe) {
        this.recipe = recipe;
    }
}

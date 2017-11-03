package com.cookbook.domain;

import org.neo4j.ogm.annotation.*;

@RelationshipEntity(type = "FAVORS")
public class Favorite {
    @GraphId
    private Long id;

    @Property
    private Double score;

    @Property
    private Integer total;

    @StartNode
    private User user;

    @EndNode
    private Category category;

    public Favorite() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Double getScore() {
        return score;
    }

    public void setScore(Double score) {
        this.score = score;
    }

    public Integer getTotal() {
        return total;
    }

    public void setTotal(Integer total) {
        this.total = total;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }
}

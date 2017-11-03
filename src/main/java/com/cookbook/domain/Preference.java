package com.cookbook.domain;

import org.neo4j.ogm.annotation.*;

@RelationshipEntity(type = "PREFERS")
public class Preference {
    @GraphId
    private Long id;

    @Property
    private Double score;

    @Property
    private Integer total;

    @StartNode
    private User user;

    @EndNode
    private Characteristic characteristic;

    public Preference() {
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

    public Characteristic getCharacteristic() {
        return characteristic;
    }

    public void setCharacteristic(Characteristic characteristic) {
        this.characteristic = characteristic;
    }
}

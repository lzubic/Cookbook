package com.cookbook.domain;

import org.neo4j.ogm.annotation.GraphId;
import org.neo4j.ogm.annotation.NodeEntity;

@NodeEntity
public class User {
    @GraphId public int id;
    public String username;
    public String password;
    public String firstName;
    public String lastName;

    public User() {}
}

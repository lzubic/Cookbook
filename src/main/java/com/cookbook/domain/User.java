package com.cookbook.domain;

import org.neo4j.ogm.annotation.GraphId;
import org.neo4j.ogm.annotation.NodeEntity;
import org.neo4j.ogm.annotation.Property;
import org.neo4j.ogm.annotation.Relationship;

import java.util.HashSet;
import java.util.Set;

@NodeEntity
public class User {
    @GraphId
    private Long id;

    @Property
    private String username;

    @Property
    private String password;

    @Property
    private String firstName;

    @Property
    private String lastName;

    @Property
    private String email;

    @Property
    private String birthday;

    @Property
    private String gender;

    @Property
    private String country;

    @Property
    private String overview;

    @Property
    private Boolean meat;

    @Property
    private Boolean chicken;

    @Property
    private Boolean fish;

    @Property
    private Boolean spicy;

    @Property
    private Boolean sweets;

    @Relationship(type = "ALLERGIC", direction = Relationship.OUTGOING)
    private Set<Ingredient> allergens = new HashSet<>();

    @Relationship(type = "RATED", direction = Relationship.OUTGOING)
    private Set<Rating> ratings = new HashSet<>();

    @Relationship(type = "PREFERS", direction = Relationship.OUTGOING)
    private Set<Preference> preferences = new HashSet<>();

    @Relationship(type = "FAVORS", direction = Relationship.OUTGOING)
    private Set<Favorite> favorites = new HashSet<>();

    @Property
    private Boolean enabled = false;

    public User() {}
    
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getOverview() {
        return overview;
    }

    public void setOverview(String overview) {
        this.overview = overview;
    }

    public Boolean getMeat() {
        return meat;
    }

    public void setMeat(Boolean meat) {
        this.meat = meat;
    }

    public Boolean getChicken() {
        return chicken;
    }

    public void setChicken(Boolean chicken) {
        this.chicken = chicken;
    }

    public Boolean getFish() {
        return fish;
    }

    public void setFish(Boolean fish) {
        this.fish = fish;
    }

    public Boolean getSpicy() {
        return spicy;
    }

    public void setSpicy(Boolean spicy) {
        this.spicy = spicy;
    }

    public Boolean getSweets() {
        return sweets;
    }

    public void setSweets(Boolean sweets) {
        this.sweets = sweets;
    }

    public Set<Ingredient> getAllergens() {
        return allergens;
    }

    public void setAllergens(Set<Ingredient> allergens) {
        this.allergens = new HashSet<>(allergens);
    }

    public Set<Rating> getRatings() {
        return ratings;
    }

    public void setRatings(Set<Rating> ratings) {
        this.ratings = new HashSet<>(ratings);
    }

    public Boolean getEnabled() {
        return this.enabled;
    }

    public void setEnabled(Boolean enabled) {
        this.enabled = enabled;
    }

    public Set<Preference> getPreferences() {
        return preferences;
    }

    public void setPreferences(Set<Preference> preferences) {
        this.preferences = new HashSet<>(preferences);
    }

    public Set<Favorite> getFavorites() {
        return favorites;
    }

    public void setFavorites(Set<Favorite> favorites) {
        this.favorites = new HashSet<>(favorites);
    }
}

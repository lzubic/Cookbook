package com.cookbook.domain;

import org.neo4j.ogm.annotation.GraphId;
import org.neo4j.ogm.annotation.NodeEntity;
import org.neo4j.ogm.annotation.Property;
import org.neo4j.ogm.annotation.Relationship;

import java.util.HashSet;
import java.util.Set;

@NodeEntity
public class Recipe {
    @GraphId
    private Long id;

    @Property
    private String photo;

    @Property
    private String name;

    @Property
    private String description;

    @Property
    private String instructions;

    @Property
    private String preparationTime;

    @Property
    private Integer numberOfServings;

    @Property
    private String mealType;

    @Property
    private String dishType;

    @Relationship(type = "BELONGS_TO", direction = Relationship.OUTGOING)
    private Set<Category> categories = new HashSet<>();

    @Relationship(type = "CONTAINS", direction = Relationship.OUTGOING)
    private Set<Ingredient> ingredients = new HashSet<>();

    @Relationship(type = "RATED", direction = Relationship.INCOMING)
    private Set<Rating> ratings = new HashSet<>();

    public Recipe() {}

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getInstructions() {
        return instructions;
    }

    public void setInstructions(String instructions) {
        this.instructions = instructions;
    }

    public String getPreparationTime() {
        return preparationTime;
    }

    public void setPreparationTime(String preparationTime) {
        this.preparationTime = preparationTime;
    }

    public Integer getNumberOfServings() {
        return numberOfServings;
    }

    public void setNumberOfServings(Integer numberOfServings) {
        this.numberOfServings = numberOfServings;
    }

    public String getMealType() {
        return mealType;
    }

    public void setMealType(String mealType) {
        this.mealType = mealType;
    }

    public String getDishType() {
        return dishType;
    }

    public void setDishType(String dishType) {
        this.dishType = dishType;
    }

    public Set<Category> getCategories() {
        return categories;
    }

    public void setCategories(Set<Category> categories) {
        this.categories = new HashSet<>(categories);
    }

    public Set<Ingredient> getIngredients() {
        return ingredients;
    }

    public void setIngredients(Set<Ingredient> ingredients) {
        this.ingredients = new HashSet<>(ingredients);
    }

    public Set<Rating> getRatings() {
        return ratings;
    }

    public void setRatings(Set<Rating> ratings) {
        this.ratings = new HashSet<>(ratings);
    }
}

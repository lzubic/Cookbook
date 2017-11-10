package com.cookbook.service;

import com.cookbook.domain.Favorite;
import com.cookbook.domain.Preference;
import com.cookbook.domain.Recipe;
import com.cookbook.domain.User;
import com.cookbook.repository.RecipeRepository;
import com.cookbook.repository.UserRepository;
import com.cookbook.utilities.constants.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

@Service
@Transactional
public class RecommendationService {
    private final UserRepository userRepository;
    private final RecipeRepository recipeRepository;

    @Autowired
    public RecommendationService(UserRepository userRepository, RecipeRepository recipeRepository) {
        this.userRepository = userRepository;
        this.recipeRepository = recipeRepository;
    }

    public class CollaborativeFiltering {
        private Double similarity(User remoteUser, User otherUser) {
            Double averageRatingRemoteUser = userRepository.getAverageRating(remoteUser.getId());
            Double averageRatingOtherUser = userRepository.getAverageRating(otherUser.getId());
            double topExpression = 0, bottomLeftExpression = 0, bottomRightExpression = 0;
            for (Recipe recipe : userRepository.findCommonRecipes(remoteUser.getId(), otherUser.getId())) {
                double variationRemoteUser = userRepository.getRating(remoteUser.getId(), recipe.getId()) - averageRatingRemoteUser;
                double variationOtherUser = userRepository.getRating(otherUser.getId(), recipe.getId()) - averageRatingOtherUser;
                topExpression += variationRemoteUser * variationOtherUser;
                bottomLeftExpression += variationRemoteUser * variationRemoteUser;
                bottomRightExpression += variationOtherUser * variationOtherUser;
            }
            return topExpression / Math.sqrt(bottomLeftExpression * bottomRightExpression);
        }

        private Double prediction(User remoteUser, Recipe recipe, Iterable<User> similarUsers) {
            Double averageRatingRemoteUser = userRepository.getAverageRating(remoteUser.getId());
            double topExpression = 0, bottomExpression = 0;
            for (User otherUser : similarUsers) {
                Integer rating = userRepository.getRating(otherUser.getId(), recipe.getId());
                if (rating != null) {
                    double similarity = this.similarity(remoteUser, otherUser);
                    double variationOtherUser = rating - userRepository.getAverageRating(otherUser.getId());
                    topExpression += similarity * variationOtherUser;
                    bottomExpression += Math.abs(similarity);
                }
            }
            if (averageRatingRemoteUser == null) averageRatingRemoteUser = 0.0;
            return averageRatingRemoteUser + topExpression / bottomExpression;
        }

        Iterable<Recipe> getRecommendations(User remoteUser) {
            Iterable<User> similarUsers = userRepository.findNearestNeighbors(remoteUser.getId());
            List<Recipe> recommendations = new ArrayList<>();
            for (Recipe recipe : userRepository.findUnratedRecipes(remoteUser.getId())) {
                Double prediction = this.prediction(remoteUser, recipe, similarUsers);
                if (prediction.isNaN()) prediction = 1.0;
                recipe.setPrediction(prediction);
                recommendations.add(recipe);
            }
            recommendations.sort(Comparator.comparing(Recipe::getPrediction).reversed());
            return recommendations.subList(0, Constants.ITEMS_PER_RECOMMENDATION);
        }
    }

    public class ContentBased {
        private Double evaluation(User remoteUser, Recipe recipe) {
            List<Preference> preferences = new ArrayList<>();
            recipeRepository.findPreferences(remoteUser.getId(), recipe.getId()).forEach(preferences::add);
            double overallCharacteristicsScore = 0;
            for (Preference preference : preferences) {
                overallCharacteristicsScore += preference.getScore() / preference.getTotal();
            }
            List<Favorite> favorites = new ArrayList<>();
            recipeRepository.findFavorites(remoteUser.getId(), recipe.getId()).forEach(favorites::add);
            double overallCategoriesScore = 0;
            for (Favorite favorite : favorites) {
                overallCategoriesScore += favorite.getScore() / favorite.getTotal();
            }
            return (overallCharacteristicsScore + overallCategoriesScore) / (preferences.size() + favorites.size());
        }

        Iterable<Recipe> getRecommendations(User remoteUser) {
            List<Recipe> unratedRecipes = new ArrayList<>();
            userRepository.findUnratedRecipes(remoteUser.getId()).forEach(unratedRecipes::add);
            List<Recipe> recommendations = new ArrayList<>();
            for (Recipe recipe : unratedRecipes) {
                Double evaluation = this.evaluation(remoteUser, recipe);
                if (evaluation.isNaN()) evaluation = -1.0;
                recipe.setEvaluation(evaluation);
                recommendations.add(recipe);
            }
            recommendations.sort(Comparator.comparing(Recipe::getEvaluation).reversed());
            return recommendations.subList(0, Constants.ITEMS_PER_RECOMMENDATION);
        }
    }

    public Iterable<Recipe> collaborativeFiltering(User remoteUser) {
        return new CollaborativeFiltering().getRecommendations(remoteUser);
    }

    public Iterable<Recipe> contentBased(User remoteUser) {
        return new ContentBased().getRecommendations(remoteUser);
    }
}

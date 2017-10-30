package com.cookbook.service;

import com.cookbook.domain.Recipe;
import com.cookbook.domain.User;
import com.cookbook.repository.UserRepository;
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

    @Autowired
    public RecommendationService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public class CollaborativeFiltering {
        private Double similarity(User remoteUser, User otherUser) {
            List<Recipe> commonRecipes = new ArrayList<>();
            userRepository.findCommonRecipes(remoteUser.getId(), otherUser.getId()).forEach(commonRecipes::add);
            Float averageRatingRemoteUser = userRepository.getAverageRating(remoteUser.getId());
            Float averageRatingOtherUser = userRepository.getAverageRating(otherUser.getId());
            double topExpression = 0, bottomLeftExpression = 0, bottomRightExpression = 0;
            for (Recipe recipe : commonRecipes) {
                double variationRemoteUser = userRepository.getRating(remoteUser.getId(), recipe.getId()) - averageRatingRemoteUser;
                double variationOtherUser = userRepository.getRating(otherUser.getId(), recipe.getId()) - averageRatingOtherUser;
                topExpression += variationRemoteUser * variationOtherUser;
                bottomLeftExpression += variationRemoteUser * variationRemoteUser;
                bottomRightExpression += variationOtherUser * variationOtherUser;
            }
            return topExpression / (Math.sqrt(bottomLeftExpression) * Math.sqrt(bottomRightExpression));
        }

        private Double prediction(User remoteUser, Recipe recipe, List<User> similarUsers) {
            Float averageRatingRemoteUser = userRepository.getAverageRating(remoteUser.getId());
            double topExpression = 0, bottomExpression = 0;
            for (User otherUser : similarUsers) {
                Integer rating = userRepository.getRating(otherUser.getId(), recipe.getId());
                if (rating != null) {
                    double similarity = this.similarity(remoteUser, otherUser);
                    double variationOtherUser = rating - userRepository.getAverageRating(otherUser.getId());
                    topExpression += similarity * variationOtherUser;
                    bottomExpression += similarity;
                }
            }
            return averageRatingRemoteUser + topExpression / bottomExpression;
        }

        Iterable<Recipe> getRecommendations(User remoteUser) {
            List<Recipe> unratedRecipes = new ArrayList<>();
            userRepository.findUnratedRecipes(remoteUser.getId()).forEach(unratedRecipes::add);
            List<User> similarUsers = new ArrayList<>();
            userRepository.findNearestNeighbors(remoteUser.getId()).forEach(similarUsers::add);
            List<Recipe> recommendations = new ArrayList<>();
            for (Recipe recipe : unratedRecipes) {
                Double prediction = this.prediction(remoteUser, recipe, similarUsers);
                if (!prediction.isNaN()) {
                    recipe.setPrediction(prediction);
                    recommendations.add(recipe);
                }
            }
            recommendations.sort(Comparator.comparing(Recipe::getPrediction).reversed());
            return recommendations;
        }
    }

    public Iterable<Recipe> findRecommendations(User remoteUser) {
        return new CollaborativeFiltering().getRecommendations(remoteUser);
    }
}

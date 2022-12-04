package com.tastyeat.api.utils.dto.payloads;

import com.tastyeat.api.model.Ingredient;
import com.tastyeat.api.model.Recipe;
import com.tastyeat.api.model.Review;
import com.tastyeat.api.utils.constants.CategoriesTypes;
import lombok.*;

import java.math.BigDecimal;
import java.time.OffsetDateTime;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class RecipeResponseDto {
    private Long id;
    private String recipeTitle;
    private String description;
    private String howToPrepare;
    private Set<Review> reviews;
    private CategoriesTypes category;
    private String averageCookingTime;
    private BigDecimal estimatedPrice;
    private List<Ingredient> ingredients;
    private RecipeStatistics statistics;
    private OffsetDateTime publicationDate;

    public RecipeResponseDto(Recipe recipe) {
        this.id = recipe.getId();
        this.reviews = recipe.getReviews();
        this.category = recipe.getCategory();
        this.recipeTitle = recipe.getRecipeTitle();
        this.ingredients = recipe.getIngredients();
        this.description = recipe.getDescription();
        this.howToPrepare = recipe.getHowToPrepare();
        this.estimatedPrice = recipe.getEstimatedPrice();
        this.publicationDate = recipe.getPublicationDate();
        this.averageCookingTime = recipe.getAverageCookingTime();
        this.statistics = new RecipeStatistics(recipe.getReviews());
    }
}

@Data
class RecipeStatistics {
    private Integer totalReviewsAmount;
    private Set<Rating> ratings = new HashSet<>();

    public RecipeStatistics(Set<Review> reviews) {
        this.totalReviewsAmount = getReviewsAmountIfNotNull(reviews);

        for (int index = 1; index <= 5; index++) {
            this.ratings.add(new Rating(reviews, index, this.totalReviewsAmount));
        }
    }

    private Integer getReviewsAmountIfNotNull(Set<Review> reviews) {
        return reviews.isEmpty() ? 0 : reviews.size();
    }
}

@Data
class Rating {
    private Float rateValue;
    private Integer rateValueAmount;
    private Float percentageOfTotalReviews;

    public Rating(Set<Review> reviews, Integer rateValue, Integer totalReviewsAmount) {
        this.rateValue = rateValue.floatValue();
        this.rateValueAmount = getReviewsByRateValue(rateValue.floatValue(), reviews);
        this.percentageOfTotalReviews = calculatePercentageOfTotalReviews(reviews, totalReviewsAmount);
    }

    private Integer getReviewsByRateValue(Float rateValue, Set<Review> reviews) {
        Set<Review> result = reviews.stream().filter(review -> review.getRecipeRating().equals(rateValue)).collect(Collectors.toSet());
        return result.isEmpty() ? 0 : result.size();
    }

    private Float calculatePercentageOfTotalReviews(Set<Review> reviews, Integer totalReviewsAmount) {
        return (float) (100 * this.getRateValueAmount()) / totalReviewsAmount;
    }
}
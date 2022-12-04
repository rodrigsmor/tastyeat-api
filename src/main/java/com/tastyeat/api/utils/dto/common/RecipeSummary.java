package com.tastyeat.api.utils.dto.common;

import com.tastyeat.api.model.Recipe;
import com.tastyeat.api.model.UserEntity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RecipeSummary {
    private Long id;
    private Float rating;
    private String recipeTitle;
    private AuthorModel author;
    private Integer favoriteAmount;
    private Integer ingredientsAmount;
    private String averageCookingTime;

    public RecipeSummary(Recipe recipe, UserEntity author, Integer favoriteAmount) {
        this.id = recipe.getId();
        this.favoriteAmount = favoriteAmount;
        this.author = new AuthorModel(author);
        this.recipeTitle = recipe.getRecipeTitle();
        this.rating = calculateRecipeRating(recipe);
        this.ingredientsAmount = recipe.getIngredients().size();
        this.averageCookingTime = recipe.getAverageCookingTime();
    }

    private Float calculateRecipeRating(Recipe recipe) {
        return (float) 0;
    }
}

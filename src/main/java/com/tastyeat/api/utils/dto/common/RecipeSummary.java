package com.tastyeat.api.utils.dto.common;

import com.tastyeat.api.model.Recipe;
import com.tastyeat.api.model.UserEntity;
import com.tastyeat.api.utils.functions.CommonFunctions;
import com.tastyeat.api.utils.functions.RecipeMethods;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.OffsetDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RecipeSummary {
    private Long id;
    private Float rating;
    private String recipeTitle;
    private AuthorModel author;
    private Long favoriteAmount;
    private Integer ingredientsAmount;
    private String averageCookingTime;
    private OffsetDateTime publicationDate;

    public RecipeSummary(Recipe recipe, UserEntity author, Long favoriteAmount) {
        this.id = recipe.getId();
        this.favoriteAmount = favoriteAmount;
        this.author = new AuthorModel(author);
        this.recipeTitle = recipe.getRecipeTitle();
        this.publicationDate = recipe.getPublicationDate();
        this.ingredientsAmount = recipe.getIngredients().size();
        this.averageCookingTime = recipe.getAverageCookingTime();
        this.rating = RecipeMethods.calculateRecipeRating(recipe);
    }
}

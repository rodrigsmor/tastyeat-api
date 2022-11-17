package com.tastyeat.api.utils.dto;

import com.tastyeat.api.model.Ingredient;
import lombok.Data;

import java.util.List;

@Data
public class RecipeDto {
    private String recipeTitle;
    private String description;
    private String howToPrepare;
    private String averageCookingTime;
    private List<Ingredient> ingredients;
}

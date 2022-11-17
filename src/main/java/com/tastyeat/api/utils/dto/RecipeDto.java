package com.tastyeat.api.utils.dto;

import lombok.Data;

@Data
public class RecipeDto {
    private String recipeTitle;
    private String description;
    private String howToPrepare;
}

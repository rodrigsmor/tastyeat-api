package com.tastyeat.api.utils.dto;

import lombok.Data;

@Data
public class RecipeReviewDto {
    private String commentContent;
    private Float recipeEvaluation;
}

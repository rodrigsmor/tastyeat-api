package com.tastyeat.api.utils.dto;

import lombok.Data;

@Data
public class RecipeReviewDto {
    private Float recipeEvaluation;
    private String commentContent;
}

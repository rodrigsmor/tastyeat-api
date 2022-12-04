package com.tastyeat.api.utils.dto.requests;

import lombok.Data;

@Data
public class RecipeReviewDto {
    private Float recipeEvaluation;
    private String commentContent;
}

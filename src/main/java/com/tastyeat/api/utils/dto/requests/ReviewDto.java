package com.tastyeat.api.utils.dto.requests;

import lombok.Data;

@Data
public class ReviewDto {
    private Float recipeRating;
    private String commentContent;
}

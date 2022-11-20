package com.tastyeat.api.service.mold;

import com.tastyeat.api.utils.dto.payloads.ResponseDto;
import com.tastyeat.api.utils.dto.requests.ReviewDto;
import org.springframework.http.ResponseEntity;

public interface ReviewService {
    ResponseEntity<ResponseDto> deleteRecipeReview(Long userId, Long recipeId);
    ResponseEntity<ResponseDto> deleteArticleReview(Long userId, Long articleId);
    ResponseEntity<ResponseDto> editRecipeReview(Long userId, Long recipeId, ReviewDto reviewDto);
    ResponseEntity<ResponseDto> addReviewToRecipe(Long userId, Long recipeId, ReviewDto reviewDto);
    ResponseEntity<ResponseDto> editArticleReview(Long userId, Long articleId, ReviewDto reviewDto);
    ResponseEntity<ResponseDto> addReviewToArticle(Long userId, Long articleId, ReviewDto reviewDto);
}

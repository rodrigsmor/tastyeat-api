package com.tastyeat.api.service.mold;

import com.tastyeat.api.utils.dto.payloads.ResponseDto;
import com.tastyeat.api.utils.dto.requests.ReviewDto;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;

public interface ReviewService {
    ResponseEntity<ResponseDto> deleteRecipeReview(Authentication authentication, Long recipeId);
    ResponseEntity<ResponseDto> deleteArticleReview(Authentication authentication, Long articleId);
    ResponseEntity<ResponseDto> editRecipeReview(Authentication authentication, Long recipeId, ReviewDto reviewDto);
    ResponseEntity<ResponseDto> addReviewToRecipe(Authentication authentication, Long recipeId, ReviewDto reviewDto);
    ResponseEntity<ResponseDto> editArticleReview(Authentication authentication, Long articleId, ReviewDto reviewDto);
    ResponseEntity<ResponseDto> addReviewToArticle(Authentication authentication, Long articleId, ReviewDto reviewDto);
}

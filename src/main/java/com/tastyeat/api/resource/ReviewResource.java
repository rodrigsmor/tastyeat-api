package com.tastyeat.api.resource;

import com.tastyeat.api.service.mold.ReviewService;
import com.tastyeat.api.utils.constants.ApiPaths;
import com.tastyeat.api.utils.dto.payloads.ResponseDto;
import com.tastyeat.api.utils.dto.requests.ReviewDto;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;

@Slf4j
@RestController
@RequiredArgsConstructor
public class ReviewResource {
    private final ReviewService reviewService;

    @PostMapping(ApiPaths.ADD_REVIEW_TO_RECIPE)
    public ResponseEntity<ResponseDto> addReviewToRecipe(Authentication authentication, @PathVariable Long recipeId, @RequestBody ReviewDto reviewDto) {
        return reviewService.addReviewToRecipe(authentication, recipeId, reviewDto);
    }

    @DeleteMapping(ApiPaths.DELETE_RECIPE_REVIEW)
    public ResponseEntity<ResponseDto> deleteRecipeReview(Authentication authentication, @PathVariable Long recipeId) {
        return reviewService.deleteRecipeReview(authentication, recipeId);
    }
}

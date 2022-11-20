package com.tastyeat.api.service.mold;

import com.tastyeat.api.utils.dto.RecipeDto;
import com.tastyeat.api.utils.dto.RecipeReviewDto;
import com.tastyeat.api.utils.dto.payloads.ResponseDto;
import org.springframework.http.ResponseEntity;

public interface RecipeService {
    ResponseEntity<ResponseDto> getRecipe(Long recipeId);
    ResponseEntity<ResponseDto> createRecipe(Long id, RecipeDto recipe);
    ResponseEntity<ResponseDto> addReviewToRecipe(Long userId, Long recipeId, RecipeReviewDto reviewDto);
//    ResponseEntity<ResponseDto> deleteRecipe(Authentication authentication, Long recipeId);
//    ResponseEntity<ResponseDto> editRecipe(Authentication authentication, Long recipeId, RecipeDto recipeDto);
}

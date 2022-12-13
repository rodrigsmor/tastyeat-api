package com.tastyeat.api.service.mold;

import com.tastyeat.api.utils.dto.requests.RecipeDto;
import com.tastyeat.api.utils.dto.payloads.ResponseDto;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;

public interface RecipeService {
    ResponseEntity<ResponseDto> getRecipe(Long recipeId);
    ResponseEntity<ResponseDto> createRecipe(Authentication authentication, RecipeDto recipe);
//    ResponseEntity<ResponseDto> deleteRecipe(Authentication authentication, Long recipeId);
//    ResponseEntity<ResponseDto> editRecipe(Authentication authentication, Long recipeId, RecipeDto recipeDto);
}

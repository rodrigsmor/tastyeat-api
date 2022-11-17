package com.tastyeat.api.service.mold;

import com.tastyeat.api.utils.dto.RecipeDto;
import com.tastyeat.api.utils.dto.ResponseDto;
import org.springframework.http.ResponseEntity;

public interface RecipeService {
    ResponseEntity<ResponseDto> createRecipe(Long id, RecipeDto recipe);
}

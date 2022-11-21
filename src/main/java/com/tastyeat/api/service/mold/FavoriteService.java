package com.tastyeat.api.service.mold;

import com.tastyeat.api.utils.dto.payloads.ResponseDto;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;

public interface FavoriteService {
    ResponseEntity<ResponseDto> addRecipeToFavoriteList(Authentication authentication, Long recipeId);
    ResponseEntity<ResponseDto> addArticleToFavoriteList(Authentication authentication, Long recipeId);
    ResponseEntity<ResponseDto> removeRecipeFromFavoriteList(Authentication authentication, Long recipeId);
    ResponseEntity<ResponseDto> removeArticleFromFavoriteList(Authentication authentication, Long recipeId);
}

package com.tastyeat.api.resource;

import com.tastyeat.api.service.mold.FavoriteService;
import com.tastyeat.api.utils.constants.ApiPaths;
import com.tastyeat.api.utils.dto.payloads.ResponseDto;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
public class FavoriteResource {
    private final FavoriteService favoriteService;

    @PatchMapping(ApiPaths.ADD_RECIPE_TO_FAVORITES)
    public ResponseEntity<ResponseDto> addRecipeToFavoriteList(Authentication authentication, @PathVariable Long recipeId) {
        return favoriteService.addRecipeToFavoriteList(authentication, recipeId);
    }

    @DeleteMapping(ApiPaths.REMOVE_RECIPE_FROM_FAVORITES)
    public ResponseEntity<ResponseDto> removeRecipeFromFavoriteList(Authentication authentication, @PathVariable Long recipeId) {
        return favoriteService.removeRecipeFromFavoriteList(authentication, recipeId);
    }
}

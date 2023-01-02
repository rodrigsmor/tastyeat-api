package com.tastyeat.api.resource;

import com.tastyeat.api.service.mold.RecipeService;
import com.tastyeat.api.utils.constants.ApiPaths;
import com.tastyeat.api.utils.dto.requests.RecipeDto;
import com.tastyeat.api.utils.dto.payloads.ResponseDto;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;

@Slf4j
@RestController
@RequiredArgsConstructor
public class RecipeResource {
    private final RecipeService recipeService;

    @GetMapping(ApiPaths.GET_RECIPE)
    public ResponseEntity<ResponseDto> getRecipe(@PathVariable Long id) {
        return recipeService.getRecipe(id);
    }

    @GetMapping(ApiPaths.GET_RECENT_RECIPES)
    public ResponseEntity<ResponseDto> getRecentRecipes() {
        return recipeService.getRecentRecipes();
    }

    @GetMapping(ApiPaths.GET_RECIPE_CATEGORIES_AMOUNT)
    public ResponseEntity<ResponseDto> getAmountOfRecipeCategories() {
        return recipeService.getRecipeCategoriesAmount();
    }

    @PostMapping(ApiPaths.CREATE_RECIPE)
    public ResponseEntity<ResponseDto> createRecipe(Authentication authentication, @RequestBody RecipeDto recipe) {
        return recipeService.createRecipe(authentication, recipe);
    }

    @DeleteMapping(ApiPaths.DELETE_RECIPE)
    public ResponseEntity<ResponseDto> deleteRecipe(Authentication authentication, @PathVariable Long recipeId) {
        return recipeService.deleteRecipe(authentication, recipeId);
    }
}

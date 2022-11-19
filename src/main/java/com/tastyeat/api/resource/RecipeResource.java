package com.tastyeat.api.resource;

import com.tastyeat.api.service.mold.RecipeService;
import com.tastyeat.api.utils.constants.ApiPaths;
import com.tastyeat.api.utils.dto.RecipeDto;
import com.tastyeat.api.utils.dto.RecipeReviewDto;
import com.tastyeat.api.utils.dto.ResponseDto;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
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

    @PostMapping(ApiPaths.CREATE_RECIPE)
    public ResponseEntity<ResponseDto> createRecipe(@PathVariable Long id, @RequestBody RecipeDto recipe) {
        return recipeService.createRecipe(id, recipe);
    }

    @PostMapping(ApiPaths.ADD_COMMENT_TO_RECIPE)
    public ResponseEntity<ResponseDto> addCommentToRecipe(@PathVariable Long userId, @PathVariable Long recipeId, @RequestBody RecipeReviewDto reviewDto) {
        return recipeService.addCommentToRecipe(userId, recipeId, reviewDto);
    }
}

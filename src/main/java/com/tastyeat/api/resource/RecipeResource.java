package com.tastyeat.api.resource;

import com.tastyeat.api.service.mold.RecipeService;
import com.tastyeat.api.utils.constants.ApiPaths;
import com.tastyeat.api.utils.dto.requests.RecipeDto;
import com.tastyeat.api.utils.dto.payloads.ResponseDto;
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
}

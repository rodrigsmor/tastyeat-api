package com.tastyeat.api.resource;

import com.tastyeat.api.service.mold.RecipeService;
import com.tastyeat.api.utils.constants.ApiPaths;
import com.tastyeat.api.utils.dto.RecipeDto;
import com.tastyeat.api.utils.dto.ResponseDto;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
@RequiredArgsConstructor
public class RecipeResource {
    private final RecipeService recipeService;

    @PostMapping(ApiPaths.CREATE_RECIPE)
    public ResponseEntity<ResponseDto> createRecipe(@PathVariable Long id, @RequestBody RecipeDto recipe) {
        return recipeService.createRecipe(id, recipe);
    }
}

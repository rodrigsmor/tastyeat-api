package com.tastyeat.api.service.implementation;

import com.tastyeat.api.model.Recipe;
import com.tastyeat.api.model.UserEntity;
import com.tastyeat.api.repository.RecipeRepository;
import com.tastyeat.api.repository.UserRepository;
import com.tastyeat.api.service.mold.RecipeService;
import com.tastyeat.api.utils.constants.ApiPaths;
import com.tastyeat.api.utils.dto.RecipeDto;
import com.tastyeat.api.utils.dto.ResponseDto;
import lombok.Data;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import java.net.URI;
import java.util.Collection;

@Data
@Service
@Slf4j
@RequiredArgsConstructor
public class RecipeServiceImplementation implements RecipeService {
    @Autowired
    private UserRepository userRepository;

    @Autowired
    private RecipeRepository recipeRepository;

    @Override
    public ResponseEntity<ResponseDto> createRecipe(Long id, RecipeDto recipe) {
        ResponseDto response = new ResponseDto();

        try {
            UserEntity user = userRepository.getReferenceById(id);
            Collection<Recipe> recipes = user.getRecipes();

            Recipe newRecipe = new Recipe();
            newRecipe.setRecipeTitle(recipe.getRecipeTitle());
            newRecipe.setDescription(recipe.getDescription());
            newRecipe.setHowToPrepare(recipe.getHowToPrepare());

            Recipe recipeCreated = recipeRepository.save(newRecipe);
            recipes.add(recipeCreated);

            user.setRecipes(recipes);

            response.setSuccess(true);
            response.setMessage("Receita criada com sucesso!");
//            response.setData(userRepository.save(user));
            response.setData(recipeCreated);

            URI uri = URI.create(ServletUriComponentsBuilder
                    .fromCurrentContextPath()
                    .path(ApiPaths.CREATE_RECIPE)
                    .toUriString()
            );

            return ResponseEntity.created(uri).body(response);
        } catch (Exception e) {
            response.setSuccess(false);
            response.setMessage(e.getMessage());
            response.setData(e.getLocalizedMessage());

            return ResponseEntity.internalServerError().body(response);
        }
    }
}

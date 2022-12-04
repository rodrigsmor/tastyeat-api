package com.tastyeat.api.service.implementation;

import com.tastyeat.api.model.Recipe;
import com.tastyeat.api.model.UserEntity;
import com.tastyeat.api.repository.FavoriteRecipeRepository;
import com.tastyeat.api.repository.RecipeRepository;
import com.tastyeat.api.repository.UserRepository;
import com.tastyeat.api.service.mold.RecipeService;
import com.tastyeat.api.utils.constants.ApiPaths;
import com.tastyeat.api.utils.dto.RecipeDto;
import com.tastyeat.api.utils.dto.payloads.RecipeResponseDto;
import com.tastyeat.api.utils.dto.payloads.ResponseDto;
import com.tastyeat.api.utils.functions.RecipeMethods;
import lombok.Data;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import java.net.URI;
import java.util.Collection;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.stream.Collectors;

@Data
@Service
@Slf4j
@RequiredArgsConstructor
public class RecipeServiceImplementation implements RecipeService {
    @Autowired
    private UserRepository userRepository;

    @Autowired
    private FavoriteRecipeRepository recipeFavoriteRepository;

    @Autowired
    private RecipeRepository recipeRepository;

    @Autowired
    private RecipeMethods recipeMethods = new RecipeMethods();

    @Override
    public ResponseEntity<ResponseDto> createRecipe(Long id, RecipeDto recipe) {
        ResponseDto response = new ResponseDto();

        try {
            UserEntity user = userRepository.getReferenceById(id);
            Collection<Recipe> recipes = user.getRecipes();

            Recipe recipeCreated = recipeMethods.recipeCreation(recipe);

            recipes.add(recipeCreated);

            user.setRecipes(recipes);

            List<Recipe> recipeSaved = userRepository.save(user).getRecipes().stream().filter(recipeStream -> recipeStream.getId().equals(recipeCreated.getId())).collect(Collectors.toList());

            response.setSuccess(true);
            response.setData(new RecipeResponseDto(recipeSaved.get(0)));
            response.setMessage("Receita criada com sucesso!");

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

    @Override
    public ResponseEntity<ResponseDto> getRecipe(Long recipeId) {
        ResponseDto response = new ResponseDto();
        
        try {
            if (recipeRepository.existsById(recipeId)) {
                Optional<Recipe> recipe = recipeRepository.findById(recipeId);

                response.setSuccess(true);
                response.setMessage("Receita recuperada com êxito!");
                response.setData(new RecipeResponseDto(recipe.orElseThrow(null)));

                return ResponseEntity.ok().body(response);
            }

            response.setSuccess(false);
            response.setMessage("Essa receita não existe!");

            return ResponseEntity.badRequest().body(response);
        } catch (Exception e) {
            response.setSuccess(false);
            response.setMessage(e.getMessage());
            response.setData(e.getLocalizedMessage());

            return ResponseEntity.internalServerError().body(response);
        }
    }
}

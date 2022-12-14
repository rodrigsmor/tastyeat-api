package com.tastyeat.api.service.implementation;

import com.tastyeat.api.model.Recipe;
import com.tastyeat.api.model.UserEntity;
import com.tastyeat.api.repository.FavoriteRecipeRepository;
import com.tastyeat.api.repository.RecipeRepository;
import com.tastyeat.api.repository.UserRepository;
import com.tastyeat.api.service.mold.RecipeService;
import com.tastyeat.api.utils.constants.ApiPaths;
import com.tastyeat.api.utils.constants.CategoriesTypes;
import com.tastyeat.api.utils.dto.common.RecipeSummary;
import com.tastyeat.api.utils.dto.requests.RecipeDto;
import com.tastyeat.api.utils.dto.payloads.RecipeResponseDto;
import com.tastyeat.api.utils.dto.payloads.ResponseDto;
import com.tastyeat.api.utils.functions.CommonFunctions;
import com.tastyeat.api.utils.functions.FavoriteMethods;
import com.tastyeat.api.utils.functions.RecipeMethods;
import lombok.Data;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import java.net.URI;
import java.util.*;
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
    private CommonFunctions commonFunctions;

    @Autowired
    private RecipeMethods recipeMethods = new RecipeMethods();

    @Autowired
    private FavoriteMethods favoriteMethods;

    @Override
    public ResponseEntity<ResponseDto> getRecentRecipes() {
        ResponseDto response = new ResponseDto();

        try {
            List<RecipeSummary> recipes = new ArrayList<>();

            recipeRepository.getRecentRecipes().forEach(recipe -> {
                recipes.add(new RecipeSummary(recipe, userRepository.findByRecipes(recipe), userRepository.getAmountFavoriteRecipesList(recipe.getId())));
            });

            response.setData(recipes);
            response.setSuccess(true);
            response.setMessage("Receitas recuperadas com êxito!");

            return ResponseEntity.accepted().body(response);
        } catch (Exception exception) {
            return commonFunctions.exceptionHandler(exception, response);
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
                response.setData(new RecipeResponseDto(recipe.orElseThrow(null), userRepository.findByRecipes(recipe.orElseThrow(null))));

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

    @Override
    public ResponseEntity<ResponseDto> createRecipe(Authentication authentication, RecipeDto recipe) {
        ResponseDto response = new ResponseDto();

        try {
            UserEntity user = commonFunctions.getUserAuthenticated(authentication);
            Collection<Recipe> recipes = user.getRecipes();

            Recipe recipeCreated = recipeMethods.recipeCreation(recipe);

            recipes.add(recipeCreated);

            user.setRecipes(recipes);

            List<Recipe> recipeSaved = userRepository.save(user).getRecipes().stream().filter(recipeStream -> recipeStream.getId().equals(recipeCreated.getId())).toList();

            response.setSuccess(true);
            response.setData(new RecipeResponseDto(recipeSaved.get(0), userRepository.findByRecipes(recipeSaved.get(0))));
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
    public ResponseEntity<ResponseDto> getRecipeCategoriesAmount() {
        ResponseDto response = new ResponseDto();

        try {
            HashMap<String, Integer> recipeCategories = new HashMap<>();

            for (CategoriesTypes category : CategoriesTypes.values()) {
                recipeCategories.put(
                        category.name(),
                        recipeRepository.getAmountOfRecipeCategories(category.name())
                );
            }

            response.setSuccess(true);
            response.setData(recipeCategories);
            response.setMessage("Requisição efetuada com sucesso!");

            return ResponseEntity.ok().body(response);
        } catch(Exception exception) {
            return commonFunctions.exceptionHandler(exception, response);
        }
    }
}

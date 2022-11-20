package com.tastyeat.api.service.implementation;

import com.tastyeat.api.model.Recipe;
import com.tastyeat.api.model.RecipeFavorite;
import com.tastyeat.api.model.Review;
import com.tastyeat.api.model.UserEntity;
import com.tastyeat.api.repository.RecipeFavoriteRepository;
import com.tastyeat.api.repository.RecipeRepository;
import com.tastyeat.api.repository.UserRepository;
import com.tastyeat.api.service.mold.RecipeService;
import com.tastyeat.api.utils.constants.ApiPaths;
import com.tastyeat.api.utils.dto.RecipeDto;
import com.tastyeat.api.utils.dto.RecipeReviewDto;
import com.tastyeat.api.utils.dto.ResponseDto;
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
import java.util.Optional;
import java.util.Set;

@Data
@Service
@Slf4j
@RequiredArgsConstructor
public class RecipeServiceImplementation implements RecipeService {
    @Autowired
    private UserRepository userRepository;

    @Autowired
    private RecipeFavoriteRepository recipeFavoriteRepository;

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

            response.setSuccess(true);
            response.setData(userRepository.save(user).getRecipes().stream().filter(recipeStream -> recipeStream.getId().equals(recipeCreated.getId())));
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
                response.setData(recipe.get());

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
    public ResponseEntity<ResponseDto> addReviewToRecipe(Long userId, Long recipeId, RecipeReviewDto reviewDto) {
        ResponseDto response = new ResponseDto();

        try {
            if (userRepository.existsById(userId) && recipeRepository.existsById(recipeId)) {
                Review reviewCreated = recipeMethods.reviewCreation(reviewDto, userId);
                Recipe recipe = recipeRepository.getReferenceById(recipeId);
                Set<Review> reviews = recipe.getReviews();

                reviews.add(reviewCreated);
                recipe.setReviews(reviews);

                Recipe recipeCreated = recipeRepository.save(recipe);

                response.setSuccess(true);
                response.setMessage("Avaliação criada com êxito!");
                response.setData(recipeCreated);

                URI uri = URI.create(ServletUriComponentsBuilder
                        .fromCurrentContextPath()
                        .path(ApiPaths.ADD_REVIEW_TO_RECIPE)
                        .toUriString()
                );

                return ResponseEntity.created(uri).body(response);
            } else {
                response.setSuccess(false);
                response.setMessage("Usuário e/ou receita informado não existem.");

                return ResponseEntity.badRequest().body(response);
            }
        } catch (Exception e) {
            response.setSuccess(false);
            response.setMessage(e.getMessage());
            response.setData(e.getLocalizedMessage());

            return ResponseEntity.internalServerError().body(response);
        }
    }

    @Override
    public ResponseEntity<ResponseDto> addRecipeToFavorite(Long userId, Long recipeId) {
        ResponseDto response = new ResponseDto();

        try {
            if (userRepository.existsById(userId) && recipeRepository.existsById(recipeId)) {
                UserEntity user = userRepository.getReferenceById(userId);
                Recipe recipe = recipeRepository.getReferenceById(recipeId);
                RecipeFavorite recipeFavoriteCreated = recipeFavoriteRepository.save(new RecipeFavorite(recipe));

                user.getRecipeFavoritesList().add(recipeFavoriteCreated);

                response.setSuccess(true);
                response.setMessage("Receita adicionada aos favoritos!");
                response.setData(userRepository.save(user));

                return ResponseEntity.ok().body(response);
            } else {
                response.setSuccess(false);
                response.setMessage("Usuário e/ou receita informado não existem.");

                return ResponseEntity.badRequest().body(response);
            }
        } catch (Exception e) {
            response.setSuccess(false);
            response.setMessage(e.getMessage());
            response.setData(e.getLocalizedMessage());

            return ResponseEntity.internalServerError().body(response);
        }
    }
}

package com.tastyeat.api.service.implementation;

import com.tastyeat.api.model.Recipe;
import com.tastyeat.api.model.Review;
import com.tastyeat.api.model.UserEntity;
import com.tastyeat.api.repository.RecipeRepository;
import com.tastyeat.api.repository.UserRepository;
import com.tastyeat.api.service.mold.ReviewService;
import com.tastyeat.api.utils.constants.ApiPaths;
import com.tastyeat.api.utils.dto.payloads.ResponseDto;
import com.tastyeat.api.utils.dto.requests.ReviewDto;
import com.tastyeat.api.utils.functions.CommonFunctions;
import com.tastyeat.api.utils.functions.FavoriteMethods;
import com.tastyeat.api.utils.functions.ReviewMethods;
import lombok.Data;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import java.net.URI;
import java.util.Set;

@Data
@Service
@Slf4j
@RequiredArgsConstructor
public class ReviewServiceImplementation implements ReviewService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private RecipeRepository recipeRepository;

    @Autowired
    private CommonFunctions commonFunctions;

    ResponseDto response = new ResponseDto();

    @Autowired
    private ReviewMethods reviewMethods = new ReviewMethods();

    @Override
    public ResponseEntity<ResponseDto> deleteRecipeReview(Authentication authentication, Long recipeId) {
        try {

        } catch (Exception e) {

        }
    }

    @Override
    public ResponseEntity<ResponseDto> deleteArticleReview(Authentication authentication, Long articleId) {
        return null;
    }

    @Override
    public ResponseEntity<ResponseDto> editRecipeReview(Authentication authentication, Long recipeId, ReviewDto reviewDto) {
        return null;
    }

    @Override
    public ResponseEntity<ResponseDto> addReviewToRecipe(Authentication authentication, Long recipeId, ReviewDto reviewDto) {
        try {
            if (recipeRepository.existsById(recipeId)) {
                Recipe recipe = recipeRepository.getReferenceById(recipeId);
                UserEntity user = commonFunctions.getUserAuthenticated(authentication);

                Review reviewCreated = reviewMethods.reviewCreation(reviewDto, user);
                Set<Review> reviews = recipe.getReviews();

                reviews.add(reviewCreated);
                recipe.setReviews(reviews);

                Recipe recipeCreated = recipeRepository.save(recipe);

                response.setSuccess(false);
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
                response.setMessage("A receita informada não existe.");

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
    public ResponseEntity<ResponseDto> editArticleReview(Authentication authentication, Long articleId, ReviewDto reviewDto) {
        return null;
    }

    @Override
    public ResponseEntity<ResponseDto> addReviewToArticle(Authentication authentication, Long articleId, ReviewDto reviewDto) {
        return null;
    }
}

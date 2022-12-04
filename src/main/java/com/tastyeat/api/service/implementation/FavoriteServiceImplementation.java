package com.tastyeat.api.service.implementation;

import com.tastyeat.api.model.Recipe;
import com.tastyeat.api.model.FavoriteRecipe;
import com.tastyeat.api.model.UserEntity;
import com.tastyeat.api.repository.FavoriteRecipeRepository;
import com.tastyeat.api.repository.RecipeRepository;
import com.tastyeat.api.repository.UserRepository;
import com.tastyeat.api.service.mold.FavoriteService;
import com.tastyeat.api.utils.dto.payloads.ResponseDto;
import com.tastyeat.api.utils.functions.CommonFunctions;
import com.tastyeat.api.utils.functions.FavoriteMethods;
import lombok.Data;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Set;

@Data
@Service
@Slf4j
@RequiredArgsConstructor
public class FavoriteServiceImplementation implements FavoriteService {
    @Autowired
    private CommonFunctions commonFunctions;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private FavoriteMethods favoriteMethods;
    @Autowired
    private RecipeRepository recipeRepository;
    @Autowired
    private FavoriteRecipeRepository recipeFavoriteRepository;
    private ResponseDto response = new ResponseDto();

    @Override
    public ResponseEntity<ResponseDto> addRecipeToFavoriteList(Authentication authentication, Long recipeId) {
        try {
            if (recipeRepository.existsById(recipeId)) {
                Recipe recipe = recipeRepository.getReferenceById(recipeId);
                UserEntity user = commonFunctions.getUserAuthenticated(authentication);
                FavoriteRecipe recipeFavoriteCreated = recipeFavoriteRepository.save(new FavoriteRecipe(recipe));

                user.getFavoriteRecipesList().add(recipeFavoriteCreated);

                response.setSuccess(true);
                response.setMessage("Receita adicionada aos favoritos.");
                response.setData(favoriteMethods.createRecipeFavoriteDto(userRepository.save(user)));

                return ResponseEntity.ok().body(response);
            } else {
                response.setSuccess(false);
                response.setMessage("A receita informada não existe.");

                return ResponseEntity.badRequest().body(response);
            }
        } catch (Exception e) {
            response.setSuccess(false);
            response.setMessage(e.getMessage());
            response.setData(e.getCause().getMessage());

            return ResponseEntity.internalServerError().body(response);
        }
    }

    @Override
    public ResponseEntity<ResponseDto> addArticleToFavoriteList(Authentication authentication, Long recipeId) {
        return null;
    }

    @Override
    public ResponseEntity<ResponseDto> removeRecipeFromFavoriteList(Authentication authentication, Long recipeId) {
        try {
            if (recipeRepository.existsById(recipeId)) {
                UserEntity user = commonFunctions.getUserAuthenticated(authentication);
                Set<FavoriteRecipe> favoritesList = user.getFavoriteRecipesList();
                HashMap<String, Object> recipesMap = favoriteMethods.checkIfRecipeIsOnFavoritesList(user, favoritesList, recipeId);

                if (!(Boolean) recipesMap.get("exists")) {
                    response.setSuccess(false);
                    response.setMessage("A receita informada não se encontra na lista de favoritos do usuário.");

                    return ResponseEntity.badRequest().body(response);
                }

                FavoriteRecipe favoriteRecipe = (FavoriteRecipe) recipesMap.get("recipe");
                user.setFavoriteRecipesList(favoriteMethods.removeRecipeFromFavoriteList(favoritesList, favoriteRecipe));

                response.setSuccess(true);
                response.setMessage("Receita removida da lista de favoritos");
                response.setData(userRepository.save(user));

                return ResponseEntity.ok().body(response);
            } else {
                response.setSuccess(false);
                response.setMessage("A receita informada não existe.");

                return ResponseEntity.badRequest().body(response);
            }
        } catch (Exception e) {
            response.setSuccess(false);
            response.setMessage(e.getMessage());
            response.setData(e.getCause().getMessage());

            return ResponseEntity.internalServerError().body(response);
        }
    }

    @Override
    public ResponseEntity<ResponseDto> removeArticleFromFavoriteList(Authentication authentication, Long recipeId) {
        return null;
    }
}

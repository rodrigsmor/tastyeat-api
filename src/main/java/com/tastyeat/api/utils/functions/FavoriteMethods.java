package com.tastyeat.api.utils.functions;

import com.tastyeat.api.model.FavoriteRecipe;
import com.tastyeat.api.model.Recipe;
import com.tastyeat.api.model.UserEntity;
import com.tastyeat.api.repository.FavoriteRecipeRepository;
import com.tastyeat.api.repository.RecipeRepository;
import com.tastyeat.api.repository.UserRepository;
import com.tastyeat.api.utils.dto.common.RecipeSummary;
import com.tastyeat.api.utils.dto.payloads.FavoriteDto;
import com.tastyeat.api.utils.dto.payloads.FavoriteRecipeResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Component
@RequiredArgsConstructor
public class FavoriteMethods {
    @Autowired
    private UserRepository userRepository;

    @Autowired
    private RecipeRepository recipeRepository;

    @Autowired
    private FavoriteRecipeRepository recipeFavoriteRepository;

    public HashMap<String, Object> checkIfRecipeIsOnFavoritesList(UserEntity user, Set<FavoriteRecipe> favoritesList, Long recipeId) {
        HashMap<String, Object> payload = new HashMap<>();

        List<FavoriteRecipe> recipes = favoritesList.stream().filter(favoriteRecipe -> favoriteRecipe.getId().equals(recipeId)).toList();

        if (recipes.size() > 0) {
            payload.put("exists", true);
            payload.put("recipe", recipes.get(0));
        } else {
            payload.put("exists", false);
        }

        return payload;
    }

    public Set<FavoriteRecipe> removeRecipeFromFavoriteList(Set<FavoriteRecipe> favoritesList, FavoriteRecipe favoriteRecipe) {
        recipeFavoriteRepository.delete(favoriteRecipe);

        favoritesList.remove(favoriteRecipe);

        return favoritesList;
    }

    public FavoriteDto createRecipeFavoriteDto(UserEntity user) {
        FavoriteDto favoriteDto = new FavoriteDto(user);
        Set<FavoriteRecipeResponse> favoriteList = new HashSet<>();

        user.getFavoriteRecipesList().forEach(favoriteRecipe -> {
            RecipeSummary recipeSummary = new RecipeSummary(
                    favoriteRecipe.getRecipe(),
                    userRepository.findByRecipes(favoriteRecipe.getRecipe()),
                    retrieveFavoriteAmount(favoriteRecipe.getRecipe().getId())
            );

            favoriteList.add(new FavoriteRecipeResponse(favoriteRecipe.getId(), recipeSummary));
        });

        favoriteDto.setFavoriteRecipes(favoriteList);
        return favoriteDto;
    }

    private Long retrieveFavoriteAmount(Long recipeId) {
        return userRepository.getAmountFavoriteRecipesList(recipeId);
    }
}

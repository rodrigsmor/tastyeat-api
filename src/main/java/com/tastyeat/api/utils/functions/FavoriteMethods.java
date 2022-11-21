package com.tastyeat.api.utils.functions;

import com.tastyeat.api.model.FavoriteRecipe;
import com.tastyeat.api.model.UserEntity;
import com.tastyeat.api.repository.FavoriteRecipeRepository;
import com.tastyeat.api.repository.RecipeRepository;
import com.tastyeat.api.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

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
}
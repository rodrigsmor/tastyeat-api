package com.tastyeat.api.utils.functions;

import com.tastyeat.api.model.Ingredient;
import com.tastyeat.api.model.Recipe;
import com.tastyeat.api.repository.IngredientRepository;
import com.tastyeat.api.repository.RecipeRepository;
import com.tastyeat.api.utils.dto.RecipeDto;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.time.OffsetDateTime;
import java.util.List;
import java.util.Set;

@Component
@RequiredArgsConstructor
public class RecipeMethods {
    @Autowired
    private RecipeRepository recipeRepository;

    @Autowired
    private IngredientRepository ingredientRepository;

    public Recipe recipeCreation(RecipeDto recipeDto) {
        Recipe recipe = new Recipe(recipeDto);
        List<Ingredient> ingredients = saveIngredients(recipeDto.getIngredients());

        recipe.setIngredients(ingredients);
        recipe.setPublicationDate(getRecipePublicationDate());

        return recipeRepository.save(recipe);
    }

    private OffsetDateTime getRecipePublicationDate() {
        return OffsetDateTime.now();
    }

    private List<Ingredient> saveIngredients(List<Ingredient> ingredients) {
        return ingredientRepository.saveAll(ingredients);
    }
}

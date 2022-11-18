package com.tastyeat.api.utils.functions;

import com.tastyeat.api.model.Ingredient;
import com.tastyeat.api.model.Recipe;
import com.tastyeat.api.model.Tag;
import com.tastyeat.api.repository.IngredientRepository;
import com.tastyeat.api.repository.RecipeRepository;
import com.tastyeat.api.repository.TagRepository;
import com.tastyeat.api.utils.dto.RecipeDto;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.time.OffsetDateTime;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Component
@RequiredArgsConstructor
public class RecipeMethods {
    @Autowired
    private TagRepository tagRepository;
    @Autowired
    private RecipeRepository recipeRepository;

    @Autowired
    private IngredientRepository ingredientRepository;

    public Recipe recipeCreation(RecipeDto recipeDto) {
        Recipe recipe = new Recipe(recipeDto);

        List<Ingredient> ingredients = saveIngredients(recipeDto.getIngredients());
        Set<Tag> tags = handleTagsList(recipeDto.getTags());

        recipe.setTags(tags);
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

    private Set<Tag> handleTagsList(Set<Tag> tagsProps) {
        Set<Tag> tags = new HashSet<>();

        for (Tag tag : tagsProps) {
            if (tagRepository.existsByName(tag.getName())) {
                tags.add(tagRepository.findByName(tag.getName()).orElse(null));
            } else {
                tags.add(tagRepository.save(tag));
            }
        }

        return tags;
    }
}

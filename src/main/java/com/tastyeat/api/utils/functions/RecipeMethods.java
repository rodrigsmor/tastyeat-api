package com.tastyeat.api.utils.functions;

import com.tastyeat.api.model.Ingredient;
import com.tastyeat.api.model.Recipe;
import com.tastyeat.api.model.Tag;
import com.tastyeat.api.repository.*;
import com.tastyeat.api.utils.dto.RecipeDto;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Component
@RequiredArgsConstructor
public class RecipeMethods {
    @Autowired
    private TagRepository tagRepository;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private RecipeRepository recipeRepository;
    @Autowired
    private ReviewRepository reviewRepository;
    @Autowired
    private IngredientRepository ingredientRepository;
    @Autowired
    private CommonFunctions commonFunctions;

    public Recipe recipeCreation(RecipeDto recipeDto) {
        Recipe recipe = new Recipe(recipeDto);

        List<Ingredient> ingredients = saveIngredients(recipeDto.getIngredients());
        Set<Tag> tags = handleTagsList(recipeDto.getTags());

        recipe.setTags(tags);
        recipe.setIngredients(ingredients);
        recipe.setPublicationDate(commonFunctions.getPublicationDate());

        return recipeRepository.save(recipe);
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

package com.tastyeat.api.utils.functions;

import com.tastyeat.api.model.*;
import com.tastyeat.api.repository.*;
import com.tastyeat.api.utils.dto.requests.RecipeDto;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Component
@RequiredArgsConstructor
public class RecipeMethods {
    @Autowired
    private TagRepository tagRepository;
    @Autowired
    private ImageRepository imageRepository;
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

    @Value("${DEFAULT_RECIPE_COVER}")
    private String defaultCover;

    public Recipe recipeCreation(RecipeDto recipeDto) {
        Recipe recipe = new Recipe(recipeDto);

        recipe.setRecipeCover(imageRepository.save(new Image(defaultCover, "ilustração padrão")));
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

    public static Float calculateRecipeRating(Recipe recipe) {
        List<Float> ratings = new ArrayList<>();

        recipe.getReviews().forEach(review -> ratings.add(review.getRecipeRating()));
        Float reviewsSum = ratings.stream().reduce(0f, Float::sum);

        if (ratings.isEmpty()) return 0f;
        return reviewsSum / ratings.size();
    }

    public Boolean userCreatedTheRecipe(UserEntity user, Long recipeId) {
        return user.getRecipes().stream().anyMatch(recipe -> recipe.getId().equals(recipeId));
    }

    public void removeTagsFromRecipe(Long recipeId) {
        Recipe recipe = recipeRepository.getReferenceById(recipeId);

        recipe.getTags().forEach(tag -> {
            if(tagRepository.getAmountOfRecipeWithThisTag(tag.getId()) <= 1) {
                tagRepository.deleteById(tag.getId());
            }

            recipe.getTags().remove(tag);
        });

        recipeRepository.save(recipe);
    }
}

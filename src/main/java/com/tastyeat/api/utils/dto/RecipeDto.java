package com.tastyeat.api.utils.dto;

import com.tastyeat.api.model.Ingredient;
import com.tastyeat.api.model.Tag;
import com.tastyeat.api.utils.constants.CategoriesTypes;
import lombok.Data;

import java.math.BigDecimal;
import java.util.List;
import java.util.Set;

@Data
public class RecipeDto {
    private Set<Tag> tags;
    private String recipeTitle;
    private String description;
    private String howToPrepare;
    private CategoriesTypes category;
    private String averageCookingTime;
    private BigDecimal estimatedPrice;
    private List<Ingredient> ingredients;
}

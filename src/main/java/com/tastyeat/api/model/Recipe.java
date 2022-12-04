package com.tastyeat.api.model;

import com.tastyeat.api.utils.constants.CategoriesTypes;
import com.tastyeat.api.utils.dto.RecipeDto;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.extern.slf4j.Slf4j;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;
import java.time.OffsetDateTime;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Entity
@Slf4j
@Data
@NoArgsConstructor
public class Recipe {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @Column(columnDefinition = "varchar(112) not null")
    private String recipeTitle;

    @Column(columnDefinition = "varchar(330)")
    private String description;

    @ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    private Set<Tag> tags;
    private String howToPrepare;
    private String averageCookingTime;

    private OffsetDateTime publicationDate;

    @Enumerated(value = EnumType.STRING)
    private CategoriesTypes category;

    private BigDecimal estimatedPrice;

    @OneToMany(fetch = FetchType.EAGER)
    private List<Ingredient> ingredients = new ArrayList<>();

    @OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.DETACH)
    private Set<Review> reviews = new HashSet<>();

    public Recipe(RecipeDto recipeDto) {
        this.category = recipeDto.getCategory();
        this.recipeTitle = recipeDto.getRecipeTitle();
        this.description = recipeDto.getDescription();
        this.howToPrepare = recipeDto.getHowToPrepare();
        this.estimatedPrice = recipeDto.getEstimatedPrice();
        this.averageCookingTime = recipeDto.getAverageCookingTime();
    }
}

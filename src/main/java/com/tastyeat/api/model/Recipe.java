package com.tastyeat.api.model;

import com.tastyeat.api.utils.dto.RecipeDto;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.extern.slf4j.Slf4j;

import javax.persistence.*;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import java.time.OffsetDateTime;
import java.util.List;

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

    private String howToPrepare;
    private String averageCookingTime;

    private OffsetDateTime publicationDate;

    public Recipe(RecipeDto recipeDto) {
        this.recipeTitle = recipeDto.getRecipeTitle();
        this.description = recipeDto.getDescription();
        this.howToPrepare = recipeDto.getHowToPrepare();
    }
}

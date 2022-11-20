package com.tastyeat.api.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.tastyeat.api.model.Recipe;
import lombok.*;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class RecipeFavorite {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
    private Recipe recipe;

    public RecipeFavorite(Recipe recipe) {
        this.recipe = recipe;
    }
}

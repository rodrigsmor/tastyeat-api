package com.tastyeat.api.utils.dto.payloads;

import com.tastyeat.api.model.UserEntity;
import com.tastyeat.api.utils.dto.common.RecipeSummary;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.HashSet;
import java.util.Set;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class FavoriteDto {
    private Long userId;
    private Set<FavoriteRecipeResponse> favoriteRecipes = new HashSet<>();

    public FavoriteDto(UserEntity user) {
        this.userId = user.getId();
    }
}

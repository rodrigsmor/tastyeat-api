package com.tastyeat.api.utils.dto.payloads;

import com.tastyeat.api.utils.dto.common.RecipeSummary;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class FavoriteRecipeResponse {
    private Long id;
    private RecipeSummary recipe;
}

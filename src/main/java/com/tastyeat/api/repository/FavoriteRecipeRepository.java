package com.tastyeat.api.repository;

import com.tastyeat.api.model.FavoriteRecipe;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FavoriteRecipeRepository extends JpaRepository<FavoriteRecipe, Long> {
    @Override
    FavoriteRecipe getReferenceById(Long id);
}

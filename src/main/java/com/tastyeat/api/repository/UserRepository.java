package com.tastyeat.api.repository;


import com.tastyeat.api.model.Recipe;
import com.tastyeat.api.model.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<UserEntity, Long> {
    UserEntity findByRecipes(Recipe recipe);
    Boolean existsByUsername(String username);
    UserEntity getReferenceByUsername(String username);
    Optional<UserEntity> findByUsername(String username);
    @Query(value = "SELECT COUNT(*) FROM favorite_recipe WHERE recipe_id = ?;", nativeQuery = true)
    Long getAmountFavoriteRecipesList(Long recipeId);
}

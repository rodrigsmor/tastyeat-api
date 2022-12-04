package com.tastyeat.api.repository;


import com.tastyeat.api.model.FavoriteRecipe;
import com.tastyeat.api.model.Recipe;
import com.tastyeat.api.model.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Collection;
import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<UserEntity, Long> {
    UserEntity findByRecipes(Recipe recipe);
    Boolean existsByUsername(String username);
    UserEntity getReferenceByUsername(String username);
    Optional<UserEntity> findByUsername(String username);
    Collection<UserEntity> findAllByFavoriteRecipesList(Recipe recipe);
}

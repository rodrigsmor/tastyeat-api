package com.tastyeat.api.repository;

import com.tastyeat.api.model.Recipe;
import com.tastyeat.api.model.Review;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RecipeRepository extends JpaRepository<Recipe, Long> {
    Recipe findByReviews(Review reviews);
}

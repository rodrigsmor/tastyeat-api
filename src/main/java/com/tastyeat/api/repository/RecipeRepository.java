package com.tastyeat.api.repository;

import com.tastyeat.api.model.Recipe;
import com.tastyeat.api.model.Review;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RecipeRepository extends JpaRepository<Recipe, Long> {
    Recipe findByReviews(Review reviews);
    @Query(value = "SELECT * FROM recipe ORDER BY publication_date DESC LIMIT 4;", nativeQuery = true)
    List<Recipe> getRecentRecipes();
}

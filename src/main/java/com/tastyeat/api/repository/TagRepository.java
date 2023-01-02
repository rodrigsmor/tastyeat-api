package com.tastyeat.api.repository;

import com.tastyeat.api.model.Tag;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface TagRepository extends JpaRepository<Tag, Long> {
    Optional<Tag> findByName(String name);
    Boolean existsByName(String name);
    void deleteByName(String name);
    @Query(value = "SELECT COUNT(*) FROM recipe_tags WHERE tags_id = ?;", nativeQuery = true)
    Integer getAmountOfRecipeWithThisTag(Long tagId);
}

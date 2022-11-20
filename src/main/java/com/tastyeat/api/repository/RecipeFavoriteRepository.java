package com.tastyeat.api.repository;

import com.tastyeat.api.model.RecipeFavorite;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RecipeFavoriteRepository extends JpaRepository<RecipeFavorite, Long> {
    @Override
    RecipeFavorite getReferenceById(Long id);
}

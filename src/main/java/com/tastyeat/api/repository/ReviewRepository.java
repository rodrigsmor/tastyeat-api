package com.tastyeat.api.repository;

import com.tastyeat.api.model.Review;
import com.tastyeat.api.model.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ReviewRepository extends JpaRepository<Review, Long> {
    List<Review> findAllByReviewAuthor(UserEntity reviewAuthor);
}

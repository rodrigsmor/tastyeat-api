package com.tastyeat.api.utils.functions;

import com.tastyeat.api.model.Recipe;
import com.tastyeat.api.model.Review;
import com.tastyeat.api.model.UserEntity;
import com.tastyeat.api.repository.ReviewRepository;
import com.tastyeat.api.repository.UserRepository;
import com.tastyeat.api.utils.dto.requests.ReviewDto;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.HashMap;

@Component
@RequiredArgsConstructor
public class ReviewMethods {
    @Autowired
    private UserRepository userRepository;

    @Autowired
    private ReviewRepository reviewRepository;

    @Autowired
    private CommonFunctions commonFunctions;

    public Review reviewCreation(ReviewDto reviewDto, UserEntity user) {
        Review review = new Review();

        review.setReviewAuthor(user);
        review.setRecipeRating(reviewDto.getRecipeRating());
        review.setCommentContent(reviewDto.getCommentContent());
        review.setPublicationDate(commonFunctions.getPublicationDate());

        return reviewRepository.save(review);
    }

    public boolean reviewBelongsToUser(UserEntity user, Review review) {
        return review.getReviewAuthor().equals(user);
    }

    public HashMap<String, Object> removeReviewFromLists(UserEntity user, Recipe recipe) {
        return null;
    }
}

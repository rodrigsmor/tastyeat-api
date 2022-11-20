package com.tastyeat.api.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.time.OffsetDateTime;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Review {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    private Float recipeRating;

    @ManyToOne(fetch = FetchType.LAZY)
    @JsonBackReference
    private UserEntity reviewAuthor;

    @NotNull
    private OffsetDateTime publicationDate;

    @Column(columnDefinition = "TEXT")
    private String commentContent;
}

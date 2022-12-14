package com.tastyeat.api.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Image {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String altText = "";

    @NotNull
    @Column(columnDefinition = "varchar(2048)")
    private String imageUrl = "";

    public Image(String imageUrl, String altText) {
        this.altText = altText;
        this.imageUrl = imageUrl;
    }
}

package com.tastyeat.api.utils.dto.common;

import com.tastyeat.api.model.Image;
import com.tastyeat.api.model.UserEntity;
import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class AuthorModel {
    private Long id;
    private String fullName;
    private Image profilePicture;

    public AuthorModel(UserEntity author) {
        this.id = author.getId();
        this.fullName = author.getFullName();
        this.profilePicture = author.getProfilePicture();
    }
}

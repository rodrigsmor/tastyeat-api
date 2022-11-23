package com.tastyeat.api.utils.dto.payloads;

import com.tastyeat.api.model.UserEntity;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDate;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class UserLoggedDto {
    private Long id;
    private String bio;
    private String email;
    private String fullName;
    private String profession;
    private String phoneNumber;
    private LocalDate dateOfBirth;

    public UserLoggedDto(UserEntity user) {
        this.id = user.getId();
        this.bio = user.getBio();
        this.email = user.getUsername();
        this.fullName = user.getFullName();
        this.profession = user.getProfession();
        this.phoneNumber = user.getPhoneNumber();
        this.dateOfBirth = user.getDateOfBirth();
    }
}

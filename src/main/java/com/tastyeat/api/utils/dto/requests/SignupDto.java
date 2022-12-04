package com.tastyeat.api.utils.dto.requests;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class SignupDto {
    private String email;
    private String fullName;
    private String password;
    private String phoneNumber;
    private LocalDate dateOfBirth;
}

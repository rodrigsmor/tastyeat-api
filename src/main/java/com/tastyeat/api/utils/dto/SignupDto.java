package com.tastyeat.api.utils.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class SignupDto {
    private String email;
    private String fullName;
    private String password;
    private String phoneNumber;
}

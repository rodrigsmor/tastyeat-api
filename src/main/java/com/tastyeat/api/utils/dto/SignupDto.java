package com.tastyeat.api.utils.dto;

import lombok.Data;

@Data
public class SignupDto {
    private String email;
    private String fullName;
    private String password;
    private String phoneNumber;
}

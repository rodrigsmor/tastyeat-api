package com.tastyeat.api.utils.dto.requests;

import lombok.Data;

@Data
public class LoginDto {
    private String email;
    private String password;
}

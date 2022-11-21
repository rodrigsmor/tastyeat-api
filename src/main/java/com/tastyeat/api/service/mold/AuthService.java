package com.tastyeat.api.service.mold;

import com.tastyeat.api.model.Role;
import com.tastyeat.api.utils.dto.LoginDto;
import com.tastyeat.api.utils.dto.payloads.ResponseDto;
import com.tastyeat.api.utils.dto.SignupDto;
import org.springframework.http.ResponseEntity;

public interface AuthService {
    ResponseEntity<ResponseDto> login(LoginDto loginDto);
    ResponseEntity<ResponseDto> signup(SignupDto signupDto);
    Role createRole(Role role);
}

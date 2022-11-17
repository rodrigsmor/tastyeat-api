package com.tastyeat.api.resource;

import com.tastyeat.api.service.mold.AuthService;
import com.tastyeat.api.utils.constants.ApiPaths;
import com.tastyeat.api.utils.dto.LoginDto;
import com.tastyeat.api.utils.dto.ResponseDto;
import com.tastyeat.api.utils.dto.SignupDto;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
public class AuthResource {
    private final AuthService authService;

    @PostMapping(ApiPaths.SIGNUP)
    public ResponseEntity<ResponseDto> signup(@RequestBody SignupDto signupDto) {
        return authService.signup(signupDto);
    }

    @PostMapping(ApiPaths.LOGIN)
    public ResponseEntity<ResponseDto> login(@RequestBody LoginDto loginDto) {
        return authService.login(loginDto);
    }
}

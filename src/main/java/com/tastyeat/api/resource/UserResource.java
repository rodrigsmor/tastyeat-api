package com.tastyeat.api.resource;

import com.tastyeat.api.service.mold.UserService;
import com.tastyeat.api.utils.constants.ApiPaths;
import com.tastyeat.api.utils.dto.payloads.ResponseDto;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

@RestController
@RequiredArgsConstructor
public class UserResource {
    private final UserService userService;

    @PatchMapping(ApiPaths.USER_PROFILE_PICTURE_UPLOAD)
    public ResponseEntity<ResponseDto> profilePictureUpload(Authentication authentication, @RequestParam MultipartFile file, @RequestParam String altText) {
        return userService.profilePictureUpload(authentication, file, altText);
    }
}

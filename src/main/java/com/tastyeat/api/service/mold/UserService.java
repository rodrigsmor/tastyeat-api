package com.tastyeat.api.service.mold;

import com.tastyeat.api.utils.dto.payloads.ResponseDto;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.multipart.MultipartFile;

public interface UserService {
    ResponseEntity<ResponseDto> profilePictureUpload(Authentication authentication, MultipartFile file, String altText);
}

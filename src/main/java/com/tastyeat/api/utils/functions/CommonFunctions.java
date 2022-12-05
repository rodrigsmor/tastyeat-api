package com.tastyeat.api.utils.functions;

import com.tastyeat.api.model.UserEntity;
import com.tastyeat.api.repository.UserRepository;
import com.tastyeat.api.utils.dto.payloads.ResponseDto;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.OffsetDateTime;
import java.time.ZoneId;
import java.util.Date;
import java.util.UUID;

@Component
@RequiredArgsConstructor
public class CommonFunctions {
    @Autowired
    private UserRepository userRepository;

    public OffsetDateTime getPublicationDate() {
        OffsetDateTime date = OffsetDateTime.now();
        return date.atZoneSameInstant(ZoneId.of("Z")).toOffsetDateTime();
    }

    public UserEntity getUserAuthenticated(Authentication authentication) {
        return userRepository.getReferenceByUsername(authentication.getName());
    }

    public String formatFileName(MultipartFile file) {
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd-HH:mm:ss");
        String random = UUID.randomUUID().toString().replaceAll("_", "");

        int separator = file.getOriginalFilename().lastIndexOf(".");

        String filename = file.getOriginalFilename().substring(0, separator);
        String filetype = file.getOriginalFilename().substring(separator + 1);

        return String.format("%s_%s_%s.%s", filename, random, dateFormat.format(new Date()), filetype);
    }

    public ResponseEntity<ResponseDto> exceptionHandler(Exception e, ResponseDto response) {
        response.setSuccess(false);
        response.setMessage(e.getMessage());
        response.setData(e.getCause().getMessage());

        return ResponseEntity.internalServerError().body(response);
    }
}

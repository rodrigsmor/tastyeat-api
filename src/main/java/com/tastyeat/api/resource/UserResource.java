package com.tastyeat.api.resource;

import com.tastyeat.api.utils.config.FirebaseConfig;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.util.HashMap;

@RestController
@RequiredArgsConstructor
public class UserResource {
    @Autowired
    private FirebaseConfig firebaseConfig;

    @PatchMapping("/arquivo")
    public ResponseEntity<String> profilePictureUpload(@RequestParam MultipartFile file) {
        try {
            HashMap<String, Object> response = firebaseConfig.uploadImage(file);

            if (!(Boolean) response.get("success")) {
                Exception exception = (Exception) response.get("Exception");

                return ResponseEntity.internalServerError().body(exception.getMessage());
            }

            return ResponseEntity.ok().body((String) response.get("imageUrl"));
        } catch (Exception e) {
            return ResponseEntity.badRequest().body(e.getMessage());
        }
    }
}

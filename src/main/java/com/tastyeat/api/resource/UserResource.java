package com.tastyeat.api.resource;

import com.tastyeat.api.utils.functions.CommonFunctions;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

@RestController
@RequiredArgsConstructor
public class UserResource {
    @Autowired
    private CommonFunctions commonFunctions;

    @PatchMapping("/arquivo")
    public ResponseEntity<String> profilePictureUpload(@RequestParam MultipartFile file) {
        try {
            return ResponseEntity.ok().body(commonFunctions.formatFileName(file));
        } catch (Exception e) {
            return ResponseEntity.badRequest().body(e.getMessage());
        }
    }
}

package com.tastyeat.api.service.implementation;

import com.tastyeat.api.model.Image;
import com.tastyeat.api.model.UserEntity;
import com.tastyeat.api.repository.ImageRepository;
import com.tastyeat.api.repository.UserRepository;
import com.tastyeat.api.service.mold.UserService;
import com.tastyeat.api.utils.config.FirebaseConfig;
import com.tastyeat.api.utils.dto.payloads.ResponseDto;
import com.tastyeat.api.utils.dto.payloads.UserLoggedDto;
import com.tastyeat.api.utils.functions.CommonFunctions;
import com.tastyeat.api.utils.functions.UserMethods;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.HashMap;

@Service
@RequiredArgsConstructor
public class UserServiceImplementation implements UserService {
    @Autowired
    private UserMethods userMethods;

    @Autowired
    private ImageRepository imageRepository;

    @Autowired
    private FirebaseConfig firebaseConfig;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private CommonFunctions commonFunctions;

    @Override
    public ResponseEntity<ResponseDto> profilePictureUpload(Authentication authentication, MultipartFile file, String altText) {
        ResponseDto response = new ResponseDto();

        try {
            UserEntity user = commonFunctions.getUserAuthenticated(authentication);
            firebaseConfig.deleteOldProfilePicture(user);

            HashMap<String, Object> uploadedImage = firebaseConfig.uploadImage(file);

            if (!(Boolean) uploadedImage.get("success")) {
                Exception exception = (Exception) uploadedImage.get("Exception");

                response.setSuccess(false);
                response.setMessage(exception.getMessage());

                return ResponseEntity.internalServerError().body(response);
            }

            Image profilePicture = imageRepository.getReferenceById(user.getProfilePicture().getId());

            profilePicture.setAltText(altText);
            profilePicture.setImageUrl((String) uploadedImage.get("imageUrl"));

            user.setProfilePicture(imageRepository.save(profilePicture));

            response.setSuccess(true);
            response.setMessage("Foto de perfil atualizada com sucesso!");
            response.setData(new UserLoggedDto(user));

            return ResponseEntity.ok().body(response);
        } catch (Exception e) {
            return commonFunctions.exceptionHandler(e, response);
        }
    }
}

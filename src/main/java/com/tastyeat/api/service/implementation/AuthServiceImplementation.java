package com.tastyeat.api.service.implementation;

import com.tastyeat.api.model.Image;
import com.tastyeat.api.model.Role;
import com.tastyeat.api.model.UserEntity;
import com.tastyeat.api.repository.ImageRepository;
import com.tastyeat.api.repository.RoleRepository;
import com.tastyeat.api.repository.UserRepository;
import com.tastyeat.api.service.mold.AuthService;
import com.tastyeat.api.utils.config.JwtGenerator;
import com.tastyeat.api.utils.constants.ApiPaths;
import com.tastyeat.api.utils.constants.RoleTypes;
import com.tastyeat.api.utils.dto.requests.LoginDto;
import com.tastyeat.api.utils.dto.payloads.ResponseDto;
import com.tastyeat.api.utils.dto.requests.SignupDto;
import com.tastyeat.api.utils.dto.payloads.UserLoggedDto;
import lombok.Data;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import javax.validation.ConstraintViolationException;
import java.net.URI;
import java.util.Collections;
import java.util.HashMap;

@Data
@Service
@Slf4j
@RequiredArgsConstructor
public class AuthServiceImplementation implements AuthService {
    @Autowired
    private JwtGenerator jwtGenerator;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private RoleRepository roleRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Autowired
    private ImageRepository imageRepository;

    @Autowired
    private AuthenticationManager authenticationManager;

    @Value("${DEFAULT_PROFILE_PICTURE}")
    private String defaultProfilePicture;

    @Override
    public ResponseEntity<ResponseDto> login(LoginDto loginDto) {
        ResponseDto response = new ResponseDto();

        try {
            Authentication authentication = authenticationManager.authenticate(
                    new UsernamePasswordAuthenticationToken(loginDto.getEmail(), loginDto.getPassword())
            );

            String token = jwtGenerator.generateToken(authentication);
            SecurityContextHolder.getContext().setAuthentication(authentication);

            HashMap<String, String> data = new HashMap<String, String>();

            data.put("token", token);
            data.put("email", loginDto.getEmail());

            response.setData(data);
            response.setSuccess(true);
            response.setMessage("Usu??rio autenticado com ??xito!");

            return ResponseEntity.accepted().body(response);
        } catch (BadCredentialsException e) {
            response.setSuccess(false);
            response.setMessage(e.getMessage());

            HashMap<String, String> data = new HashMap<String, String>();
            data.put("detailedMessage", e.getLocalizedMessage());

            response.setData(data);

            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body(response);
        } catch (Exception e) {
            response.setSuccess(false);
            response.setMessage(e.getMessage());

            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(response);
        }
    }

    @Override
    public ResponseEntity<ResponseDto> signup(SignupDto signupDto) {
        ResponseDto response = new ResponseDto();

        try {
            if (userRepository.existsByUsername(signupDto.getEmail())) {
                response.setSuccess(false);
                response.setMessage("Esse e-mail j?? est?? em uso. Conecte-se ou utilize outro e-mail.");

                return ResponseEntity.badRequest().body(response);
            }

            UserEntity user = new UserEntity();

            user.setBio(user.getBio());
            user.setUsername(signupDto.getEmail());
            user.setProfession(user.getProfession());
            user.setFullName(signupDto.getFullName());
            user.setPhoneNumber(signupDto.getPhoneNumber());
            user.setDateOfBirth(signupDto.getDateOfBirth());
            user.setProfilePicture(imageRepository.save(new Image(defaultProfilePicture, "ilustra????o padr??o")));
            user.setPassword(passwordEncoder.encode(signupDto.getPassword()));

            Role roles = roleRepository.findByName(RoleTypes.USER).get();
            user.setRoles(Collections.singletonList(roles));

            response.setSuccess(true);
            response.setMessage("Perfil criado com sucesso!");
            response.setData(new UserLoggedDto(userRepository.save(user)));

            URI uri = URI.create(ServletUriComponentsBuilder
                    .fromCurrentContextPath()
                    .path(ApiPaths.SIGNUP)
                    .toUriString()
            );

            return ResponseEntity.created(uri).body(response);
        } catch (ConstraintViolationException e) {
            response.setMessage(e.getMessage());
            response.setSuccess(false);

            return ResponseEntity.badRequest().body(response);
        }
    }

    @Override
    public Role createRole(Role role) {
        return roleRepository.save(role);
    }
}

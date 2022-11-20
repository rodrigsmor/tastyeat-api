package com.tastyeat.api.utils.functions;

import com.tastyeat.api.model.UserEntity;
import com.tastyeat.api.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Component;

import java.time.OffsetDateTime;
import java.time.ZoneId;

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
}

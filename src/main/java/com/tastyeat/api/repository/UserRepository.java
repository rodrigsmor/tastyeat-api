package com.tastyeat.api.repository;


import com.tastyeat.api.model.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<UserEntity, Long> {
    UserEntity getReferenceByUsername(String username);
    Optional<UserEntity> findByUsername(String username);
    Boolean existsByUsername(String username);
}

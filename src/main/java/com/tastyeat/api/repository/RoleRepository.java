package com.tastyeat.api.repository;

import com.tastyeat.api.model.Roles;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface RoleRepository extends JpaRepository<Roles, Long> {
    Optional<Roles> findByName(String name);
}

package com.tastyeat.api.repository;

import com.tastyeat.api.model.Role;
import com.tastyeat.api.utils.constants.RoleTypes;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface RoleRepository extends JpaRepository<Role, Long> {
    Optional<Role> findByName(RoleTypes name);
}

package com.tastyeat.api.model;


import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "users")
public class UserEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Email
    @NotNull
    @NotBlank
    @NotEmpty
    @Column(unique = true)
    private String username;

    private String fullName;

    @NotNull
    @Column(columnDefinition = "varchar(150)")
    private String bio = "";

    private String password;

    @OneToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private Image profilePicture;

    @NotNull
    private String profession = "";

    @Column(unique = true)
    private String phoneNumber;

    private LocalDate dateOfBirth;

    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "user_roles", joinColumns = @JoinColumn(name = "user_id", referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(name = "role_id", referencedColumnName = "id")
    )
    private Collection<Role> roles = new ArrayList<>();

    @OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JsonIgnoreProperties(value = {"applications", "hibernateLazyInitializer"})
    @JoinTable(name = "users_recipes", joinColumns = @JoinColumn(name = "user_id", referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(name = "recipe_id", referencedColumnName = "id")
    )
    private Collection<Recipe> recipes = new ArrayList<>();

    @OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JsonIgnoreProperties(value = {"applications", "hibernateLazyInitializer"})
    private Set<FavoriteRecipe> favoriteRecipesList = new HashSet<>();
}

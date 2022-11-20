package com.tastyeat.api.utils.constants;

public class ApiPaths {
    public static final String LOGIN = "/api/auth/login";
    public static final String SIGNUP = "/api/auth/signup";
    public static final String GET_RECIPE = "/api/recipe/{id}";
    public static final String CREATE_RECIPE = "/api/user/{id}/recipe";
    public static final String ADD_REVIEW_TO_RECIPE = "/api/user/{userId}/recipe/{recipeId}/comment";
    public static final String ADD_RECIPE_TO_FAVORITES = "/api/user/{userId}/recipe/{recipeId}/favorite";
}

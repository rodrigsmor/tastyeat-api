package com.tastyeat.api.utils.constants;

public class ApiPaths {
    public static final String LOGIN = "/api/auth/login";
    public static final String SIGNUP = "/api/auth/signup";
    public static final String GET_RECIPE = "/api/recipe/{id}";
    public static final String CREATE_RECIPE = "/api/user/{id}/recipe";
    public static final String ADD_REVIEW_TO_RECIPE = "/api/recipe/{recipeId}/review";
    public static final String ADD_RECIPE_TO_FAVORITES = "/api/recipe/{recipeId}/favorite";
    public static final String DELETE_RECIPE_REVIEW = "/api/recipe/{recipeId}/review/delete";
    public static final String REMOVE_RECIPE_FROM_FAVORITES = "/api/recipe/{recipeId}/favorite/remove";
    public static final String ADD_ARTICLE_TO_FAVORITES = "/api/user/{userId}/article/{articleId}/favorite";
    public static final String EDIT_RECIPE_REVIEW = "/api/user/{userId}/recipe/{recipeId}/favorite?edit=true";
    public static final String EDIT_ARTICLE_REVIEW = "/api/user/{userId}/article/{recipeId}/favorite?edit=true";
    public static final String DELETE_ARTICLE_REVIEW = "/api/user/{userId}/article/{articleId}/favorite?deletion=true";
}

export const RecipeConstants = {
  RECEIVE_RECIPES: "RECEIVE_RECIPES",
  RECEIVE_RECIPE: "RECEIVE_RECIPE",
  REQUEST_RECIPES: "REQUEST_RECIPES",
  REQUEST_RECIPE: "REQUEST_RECIPE",
  CREATE_RECIPE: "CREATE_RECIPE",
  DELETE_RECIPE: "DELETE_RECIPE",
  UPDATE_RECIPE: "UPDATE_RECIPE",
  RECEIVE_ERRORS: "RECEIVE_RECIPE_ERRORS",
  QUERY_RECIPES: "QUERY_RECIPES",
  CREATE_COMMENT: "CREATE_COMMENT",
  DELETE_COMMENT: "DELETE_COMMENT"
};

export const requestRecipes = () => ({
  type: RecipeConstants.REQUEST_RECIPES
});

export const requestRecipe = id => ({
  type: RecipeConstants.REQUEST_RECIPE,
  id
});

export const queryRecipes = vegIds => ({
  type: RecipeConstants.QUERY_RECIPES,
  vegIds
});

export const receiveRecipes = recipes => ({
  type: RecipeConstants.RECEIVE_RECIPES,
  recipes
});

export const receiveRecipe = recipe => ({
  type: RecipeConstants.RECEIVE_RECIPE,
  recipe
});

export const createRecipe = recipe => ({
  type: RecipeConstants.CREATE_RECIPE,
  recipe
});

export const deleteRecipe = id => ({
  type: RecipeConstants.DELETE_RECIPE,
  id
});

export const updateRecipe = (id, recipe) => ({
  type: RecipeConstants.UPDATE_RECIPE,
  id,
  recipe
});

export const receiveErrors = errors => ({
  type: RecipeConstants.RECEIVE_ERRORS,
  errors
});

export const createComment = comment => ({
  type: RecipeConstants.CREATE_COMMENT,
  comment
});

export const deleteComment = (commentId) => ({
  type: RecipeConstants.DELETE_COMMENT,
  commentId
});

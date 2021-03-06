export const fetchRecipes = (success) => {
  $.ajax({
    method: 'GET',
    url: 'api/recipes',
    success
  });
};

export const queryRecipes = (vegIds, success) => {
  $.ajax({
    method: 'GET',
    url: 'api/recipes',
    data: {vegIds},
    success
  });
};

export const fetchRecipe = (id, success) => {
  $.ajax({
    method: 'GET',
    url: `api/recipes/${id}`,
    success
  });
};

export const createRecipe = (recipe, success, error) => {
  $.ajax({
    method: 'POST',
    url: 'api/recipes',
    data: recipe,
    success,
    error
  });
};

export const deleteRecipe = (id, success) => {
  $.ajax({
    method: 'DELETE',
    url: `api/recipes/${id}`,
    success,
    error: () => {
      console.log("deletion error in RecipeApiUtil#delete");
    }
  });
};

export const updateRecipe = (id, recipe, success) => {
  $.ajax({
    method: 'PATCH',
    url: `api/recipes/${id}`,
    data: recipe,
    success
  });
};

export const createComment = (recipe, success, error) => {
  $.ajax({
    method: 'POST',
    url: 'api/comments',
    data: recipe,
    success,
    error
  });
};

export const deleteComment = (commentId, success) => {
  $.ajax({
    method: 'DELETE',
    url: `api/comments/${commentId}`,
    success,
    error: () => {
      console.log("deletion error in RecipeApiUtil#deleteComment");
    }
  });
};

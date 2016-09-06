// Recipe API Util
import { fetchRecipes,
         fetchRecipe,
         createRecipe,
         deleteRecipe,
         updateRecipe
} from '../util/recipe_api_util.js';
// Recipe Action
import { requestRecipes,
         receiveRecipe,
         receiveRecipes,
         RecipeConstants,
         receiveErrors
} from '../actions/recipe_actions.js';

import {hashHistory} from 'react-router';

// filter constants will go here too

export default ({getState, dispatch}) => next => action => {
  const recipesSuccess = data => {
    dispatch(receiveRecipes(data));
  };
  const recipeSuccess = data => {
    dispatch(receiveRecipe(data));
    hashHistory.push(`/recipes/${data.id}`);
  };
  const result = next(action);

  const errorCallback = xhr => {
    const errors = xhr.responseJSON;
    dispatch(receiveErrors(errors));
  };

  switch (action.type) {
    case RecipeConstants.REQUEST_RECIPES:
      fetchRecipes(recipesSuccess);
      break;
    case RecipeConstants.REQUEST_RECIPE:
      fetchRecipes(action.id, recipeSuccess);
      break;
    case RecipeConstants.CREATE_RECIPE:
      createRecipe(action.recipe, recipeSuccess, errorCallback);
      break;
    case RecipeConstants.DELETE_RECIPE:
      deleteRecipe(action.id, () => next(action));
      break;
    case RecipeConstants.UPDATE_RECIPE:
      updateRecipe(action.id, action.recipe,
         recipeSuccess, errorCallback);
      break;
    default:
      break;
  }
  return result;
};
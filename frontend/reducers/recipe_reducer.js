import { RecipeConstants } from '../actions/recipe_actions.js';
import merge from 'lodash/merge';

const RecipesReducer = (state = {}, action) => {
  switch (action.type) {
    case RecipeConstants.RECEIVE_RECIPES:
      return action.recipes;
    case RecipeConstants.RECEIVE_RECIPE:
      const newRecipe = {[action.recipe.id]: action.recipe};
      return merge({}, state, newRecipe);
    case RecipeConstants.DELETE_RECIPE:
      let nextState = merge({}, state);
      delete nextState[action.id];
      return nextState;
    case RecipeConstants.RECEIVE_ERRORS:
      const errors = action.errors;
      return merge( {}, state, {errors});
    default:
      return state;
  }
};

export default RecipesReducer;

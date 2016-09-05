import { VegetableConstants } from '../actions/vegetable_actions.js';
import merge from 'lodash/merge';

const VegetablesReducer = (state = {}, action) => {
  switch (action.type) {
    case VegetableConstants.RECEIVE_VEGETABLES:
      return action.vegetables;
    case VegetableConstants.RECEIVE_VEGETABLE:
      const newVegetable = {[action.vegetable.id]: action.vegetable};
      return merge({}, state, newVegetable);
    case VegetableConstants.DELETE_VEGETABLE:
      let nextState = merge({}, state);
      delete nextState[action.id];
      return nextState;
    case VegetableConstants.EDIT_VEGETABLE:
      const updateVegetable = {[action.vegetable.id]: action.vegetable};
      return merge({}, state, updateVegetable);
    case VegetableConstants.RECEIVE_ERRORS:
      const errors = action.errors;
      return merge( {}, state, {errors});
    default:
      return state;
  }
};

export default VegetablesReducer;

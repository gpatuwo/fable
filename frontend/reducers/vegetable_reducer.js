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
    default:
      return state;
  }
};

export default VegetablesReducer;

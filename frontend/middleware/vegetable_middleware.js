// Vegetable API Util
import { fetchVegetables,
         fetchVegetable,
         createVegetable,
         deleteVegetable,
         updateVegetable
} from '../util/vegetable_api_util.js';
// Vegetable Action
import { requestVegetables,
         receiveVegetable,
         receiveVegetables,
         VegetableConstants,
         receiveErrors
} from '../actions/vegetable_actions.js';

import {hashHistory} from 'react-router';

// filter constants will go here too

export default ({getState, dispatch}) => next => action => {
  const vegetablesSuccess = data => {
    dispatch(receiveVegetables(data));
  };
  const vegetableSuccess = data => {
    dispatch(receiveVegetable(data));
    hashHistory.push(`/vegetables/${data.id}`);
  };
  const result = next(action);

  const errorCallback = xhr => {
    const errors = xhr.responseJSON;
    dispatch(receiveErrors(errors));
  };

  switch (action.type) {
    case VegetableConstants.REQUEST_VEGETABLES:
      fetchVegetables(vegetablesSuccess);
      break;
    case VegetableConstants.REQUEST_VEGETABLE:
      fetchVegetables(action.id, vegetableSuccess);
      break;
    case VegetableConstants.CREATE_VEGETABLE:
      createVegetable(action.vegetable, vegetableSuccess, errorCallback);
      break;
    case VegetableConstants.DELETE_VEGETABLE:
      deleteVegetable(action.id, () => next(action));
      break;
    case VegetableConstants.UPDATE_VEGETABLE:
      updateVegetable(action.id, action.vegetable,
         vegetableSuccess, errorCallback);
      break;
    default:
      break;
  }
  return result;
};

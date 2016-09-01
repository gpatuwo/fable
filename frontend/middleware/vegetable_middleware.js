// Vegetable API Util
import { fetchVegetables,
         fetchVegetable,
         createVegetable,
         deleteVegetable
} from '../util/vegetable_api_util.js';
// Vegetable Action
import { requestVegetables,
         receiveVegetable,
         receiveVegetables,
         VegetableConstants
} from '../actions/vegetable_actions.js';
// filter constants will go here too

export default ({getState, dispatch}) => next => action => {
  const vegetablesSuccess = data => dispatch(receiveVegetables(data));
  const vegetableSuccess = data => dispatch(receiveVegetable(data));
  const result = next(action);
  
  switch (action.type) {
    case VegetableConstants.REQUEST_VEGETABLES:
      fetchVegetables(vegetablesSuccess);
      break;
    case VegetableConstants.REQUEST_VEGETABLE:
      fetchVegetables(action.id, vegetableSuccess);
      break;
    case VegetableConstants.CREATE_VEGETABLE:

      createVegetable(action.vegetable, vegetableSuccess);
      break;
    default:
      break;
  }
  return result;
};

import {combineReducers} from 'redux';


import SessionReducer from './session_reducer';
import VegetablesReducer from './vegetable_reducer.js';

export default combineReducers({
  session: SessionReducer,
  vegetables: VegetablesReducer
});

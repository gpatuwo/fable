import { applyMiddleware } from 'redux';

import SessionMiddleware from '../middleware/session_middleware';
import VegetableMiddleware from '../middleware/vegetable_middleware.js';

const RootMiddleware = applyMiddleware(
  SessionMiddleware,
  VegetableMiddleware
);

export default RootMiddleware;

import { applyMiddleware } from 'redux';

import SessionMiddleware from '../middleware/session_middleware';
import VegetableMiddleware from '../middleware/vegetable_middleware.js';
import RecipeMiddleware from '../middleware/recipe_middleware.js';

const RootMiddleware = applyMiddleware(
  SessionMiddleware,
  VegetableMiddleware,
  RecipeMiddleware
);

export default RootMiddleware;

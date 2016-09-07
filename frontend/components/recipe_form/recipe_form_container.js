import {connect} from 'react-redux';
import RecipeForm from './recipe_form.jsx';
import { createRecipe } from '../../actions/recipe_actions.js';
import { fetchVegetables} from "../../actions/vegetable_actions.js";

const mapStateToProps = state => ({
  errors: state.recipes.errors,
  currentUser: state.session.currentUser,
  vegetables: state.vegetables
});

const mapDispatchToProps = dispatch => ({
  createRecipe: recipe => dispatch(createRecipe(recipe)),
  fetchVegetables: () => dispatch(fetchVegetables())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(RecipeForm);

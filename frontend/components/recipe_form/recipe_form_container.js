import {connect} from 'react-redux';
import RecipeForm from './recipe_form.jsx';
import { createRecipe } from '../../actions/recipe_actions.js';

const mapStateToProps = state => ({
  errors: state.recipes.errors,
  currentUser: state.session.currentUser
});

const mapDispatchToProps = dispatch => ({
  createRecipe: recipe => dispatch(createRecipe(recipe))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(RecipeForm);

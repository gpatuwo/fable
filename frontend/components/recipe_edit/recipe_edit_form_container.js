import {connect} from 'react-redux';
import RecipeEditForm from './recipe_edit_form.jsx';
import { updateRecipe } from '../../actions/recipe_actions.js';

const mapStateToProps = (state, ownProps) => {
  const recipeId = parseInt(ownProps.params.recipeId);
  const recipe = state.recipes[recipeId] || {};
  return {
    recipeId,
    recipe,
    errors: state.recipes.errors
  };
};

const mapDispatchToProps = dispatch => ({
    updateRecipe: (id, recipe) => dispatch(updateRecipe(id, recipe))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(RecipeEditForm);

import {connect} from 'react-redux';
import RecipeShow from './recipe_show';
// Actions
import {requestRecipe, deleteRecipe, updateRecipe}
from '../../actions/recipe_actions.js';

const mapStateToProps = (state, ownProps) => {
  const recipeId = parseInt(ownProps.params.recipeId);
  const recipe = state.recipes[recipeId] || {};
  return {
    recipeId,
    recipe,
    currentUser: state.session.currentUser
  };
};

const mapDispatchToProps = (dispatch, ownProps) => ({
  requestRecipe: id => dispatch(requestRecipe(id)),
  deleteRecipe: () => dispatch(deleteRecipe(ownProps.params.recipeId)),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(RecipeShow);

import {connect} from 'react-redux';
import RecipeIndex from './recipe_index.jsx';

const mapStateToProps = state => ({
  recipes: state.recipes,
});

export default connect(mapStateToProps)(RecipeIndex);

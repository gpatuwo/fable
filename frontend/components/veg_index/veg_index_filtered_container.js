import {connect} from 'react-redux';
import VegIndexFiltered from './veg_index_filtered.jsx';
import {queryRecipes} from "../../actions/recipe_actions.js";
import { fetchVegetables} from "../../actions/vegetable_actions.js";
import { fetchRecipes} from "../../actions/recipe_actions.js";

const mapStateToProps = state => ({
  vegetables: state.vegetables,
  recipes: state.recipes
});

const mapDispatchToProps = dispatch => ({
  fetchVegetables: () => dispatch(fetchVegetables()),
  queryRecipes: (vegArr) => dispatch(queryRecipes(vegArr))
});

export default connect(mapStateToProps, mapDispatchToProps)(VegIndexFiltered);

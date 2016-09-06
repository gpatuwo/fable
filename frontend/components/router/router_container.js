import { connect } from 'react-redux';
import AppRouter from './router';
import { requestVegetables } from '../../actions/vegetable_actions.js';
import {requestRecipes} from '../../actions/recipe_actions.js';

const mapStateToProps = state => ({
  currentUser: state.session.currentUser
});

const mapDispatchToProps = dispatch => ({
  fetchVegetables: () => dispatch(requestVegetables()),
  fetchRecipes: () => dispatch(requestRecipes())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(AppRouter);

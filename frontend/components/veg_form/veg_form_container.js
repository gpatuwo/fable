import {connect} from 'react-redux';
import VegForm from './veg_form.jsx';
import { createVegetable } from '../../actions/vegetable_actions.js';

const mapStateToProps = state => ({
  errors: state.vegetables.errors
});

const mapDispatchToProps = dispatch => ({
  createVegetable: vegetable => dispatch(createVegetable(vegetable))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(VegForm);

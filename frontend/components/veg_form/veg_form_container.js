import {connect} from 'react-redux';
import VegForm from './veg_form.jsx';
import { createVegetable } from '../../actions/vegetable_actions.js';

const mapDispatchToProps = dispatch => ({
  createVegetable: vegetable => dispatch(createVegetable(vegetable))
});

export default connect(
  null,
  mapDispatchToProps
)(VegForm);

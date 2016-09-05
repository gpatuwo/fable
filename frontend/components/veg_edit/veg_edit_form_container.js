import {connect} from 'react-redux';
import VegEditForm from './veg_edit_form.jsx';
import { updateVegetable } from '../../actions/vegetable_actions.js';

const mapStateToProps = (state, ownProps) => {
  debugger
  const vegId = parseInt(ownProps.params.vegId);
  const vegetable = state.vegetables[vegId] || {};
  return {
    vegId,
    vegetable,
    errors: state.vegetables.errors
  };
};

const mapDispatchToProps = dispatch => ({
    updateVegetable: (id, vegetable) => dispatch(updateVegetable(id, vegetable))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(VegEditForm);

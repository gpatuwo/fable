import {connect} from 'react-redux';
import VegShow from './veg_show';
// Actions
import {requestVegetable, deleteVegetable}
from '../../actions/vegetable_actions.js';

const mapStateToProps = (state, ownProps) => {
  const vegId = parseInt(ownProps.params.vegId);
  const veg = state.vegetables[vegId] || {};

  return {
    vegId,
    veg
  };
};

const mapDispatchToProps = (dispatch, ownProps) => ({
  requestVegetable: id => dispatch(requestVegetable(id)),
  deleteVegetable: () => dispatch(deleteVegetable(ownProps.params.vegId))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(VegShow);

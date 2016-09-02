import { connect } from 'react-redux';
import AppRouter from './router';
import { requestVegetables } from '../../actions/vegetable_actions.js';

const mapStateToProps = state => ({
  currentUser: state.session.currentUser
});

const mapDispatchToProps = dispatch => ({
  fetchVegetables: () => dispatch(requestVegetables())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(AppRouter);

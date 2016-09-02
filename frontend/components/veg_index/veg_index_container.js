import {connect} from 'react-redux';
import VegIndex from './veg_index.jsx';

const mapStateToProps = state => ({
  vegetables: state.vegetables,
});

export default connect(mapStateToProps)(VegIndex);

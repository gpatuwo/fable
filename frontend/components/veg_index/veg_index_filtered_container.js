import {connect} from 'react-redux';
import VegIndexFiltered from './veg_index_filtered.jsx';

const mapStateToProps = state => ({
  vegetables: state.vegetables,
});

export default connect(mapStateToProps)(VegIndexFiltered);

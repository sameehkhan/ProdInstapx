import { connect } from 'react-redux';
import NavBar from './nav_bar';
import { fetchUsers, clearSearchedUsers } from '../../actions/user_actions';
import { withRouter } from 'react-router-dom';

const mstp = (state, ownProps) => {
    // debugger
    return ({
        currentUserId: state.session.id,
        // searchedUsers: Object.values(state.entities.search)
    });
};

const mdtp = (dispatch, ownProps) => {
    return ({
    });
};

export default withRouter(connect(
    mstp,
    mdtp
)(NavBar));
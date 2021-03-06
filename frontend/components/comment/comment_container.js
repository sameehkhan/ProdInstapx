import { createComment, deleteComment, fetchComments } from '../../actions/comment_actions';
import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import React from 'react';
import Comment from './comment';

const mapStateToProps = (state, ownProps) => {
    // debugger
    let currentUserId = state.session.id;
    let postId = ownProps.postId;
    let comment = {
        body: "",
        user_id: currentUserId,
        post_id: postId
    };
    
    return ({
        comment
    });
};

const mapDispatchToProps = dispatch => {
    return ({
        action: comment => dispatch(createComment(comment))
        // deleteComment: commentId => dispatch(deleteComment(commentId)),
        // fetchComments: () => dispatch(fetchComments())
    });
};

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(Comment));
import React from 'react';

const CommentShow = ({body, username, date}) => (
  <div className="comment-wrapper">
    <div className="comment-user-date">
      <h4 className="comment-user">{username}</h4>
      <p className="comment-date">{date}</p>
    </div>
    <p className="comment-body">{body}</p>
  </div>
);

export default CommentShow;

import React from 'react';

const CommentShow = ({body, username, date}) => (
  <div className="comment-wrapper">
    <div className="comment-user-photo-wrapper">
      <img src="http://res.cloudinary.com/djulergb7/image/upload/v1473360356/profile_line_d3ubr0.png"/>
    </div>

    <div className="comment-info">
      <h4 className="comment-user">{username}</h4>
      <p className="comment-date">{date}</p>
      <p className="comment-body">{body}</p>
    </div>
  </div>
);

export default CommentShow;

import React from 'react';

const CommentShow = ({body, userId}) => (
  <div>
    <ul>
      <li>{userId}</li>
      <li>{body}</li>
    </ul>
  </div>
);

export default CommentShow;

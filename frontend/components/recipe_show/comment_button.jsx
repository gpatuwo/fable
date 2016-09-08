import React from 'react';
import { withRouter } from 'react-router';

class CommentButton extends React.Component{

  constructor(props){
    super(props);
    this._handleClick = this._handleClick.bind(this);
  }

  _handleClick(){
    const recipeId = this.props.recipeId;
    const url = `/recipes/${recipeId}/comment`;
    this.props.router.push(url);
  }

  render(){
    return(
      <button className="comment-button"
              onClick={this._handleClick}>
        Leave a Comment
      </button>
    );
  }
}

export default withRouter(CommentButton);

import React from 'react';
import { hashHistory } from 'react-router';

class CommentForm extends React.Component {
  constructor(props){
    super(props);
    this.state ={
      body: "",
      user_id: props.currentUser.id
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.navigateToRecipeShow = this.navigateToRecipeShow.bind(this);
  }

  navigateToRecipeShow() {
    const recipeUrl = "/recipes/" + this.props.params.recipeId;
    hashHistory.push(recipeUrl);
  }

  handleSubmit(event) {
    event.preventDefault();
    const recipeId = parseInt(this.props.params.recipeId);
    const comment = Object.assign(
      {},
      this.state,
      { recipe_id: recipeId }
    );
    this.props.createComment({comment});
    this.navigateToRecipeShow();
  }

  update(property) {
    return e => {
      this.setState({
        [property]: e.currentTarget.value
      });
    };
  }

  render() {
    return (
      <div className="comment-form">
        <form className="comment"
          onSubmit={this.handleSubmit}>

          <label className="comment-title">Comment</label>
          <br/>
          <textarea
            className="comment-textarea"
            cols='30'
            rows='10'
            value={this.state.body}
            onChange={this.update("body")}></textarea>
          <br/>
          <input type="submit"/>
        </form>
        <button onClick={this.navigateToRecipeShow}>Cancel</button>
      </div>
    );
 }
}

export default CommentForm;

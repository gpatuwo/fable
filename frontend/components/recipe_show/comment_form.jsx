import React from 'react';
import { hashHistory, withRouter } from 'react-router';

class CommentForm extends React.Component {
  constructor(props){
    super(props);
    this.state ={
      body: "",
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.navigateToRecipeShow = this.navigateToRecipeShow.bind(this);
  }

  navigateToRecipeShow() {
    this.setState({body: ""}, ()=> {
      const recipeUrl = "/recipes/" + this.props.recipeId;

      this.props.router.push(recipeUrl);
    });
  }

  handleSubmit(e) {
    e.preventDefault();
    const recipeId = parseInt(this.props.recipeId);
    const userId = parseInt(this.props.currentUser.id);
    const comment = Object.assign(
      {},
      this.state,
      { recipe_id: recipeId,  user_id: userId}
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

  renderCommentForm() {
    return(
      <div className="comment-form">
        <form className="comment"
          onSubmit={this.handleSubmit}>

          <label className="comment-title">Leave a Comment</label>
          <br/>
          <textarea
            className="comment-textarea"
            rows='8'
            value={this.state.body}
            onChange={this.update("body")}></textarea>
          <br/>
          <input type="submit" className="comment-submit"/>
        </form>
        <button
          onClick={this.navigateToRecipeShow}
          className="comment-cancel">Cancel</button>
      </div>
    );
  }

  renderCommentLogin(){
    return(
      <section className="login-to-comment">
        <h3>Please login or signup to comment :) </h3>
      </section>
    );
  }

  render() {
    return (
      <div>
        { this.props.currentUser ?
           this.renderCommentForm() : this.renderCommentLogin() }
      </div>
    );
 }
}

export default withRouter(CommentForm);

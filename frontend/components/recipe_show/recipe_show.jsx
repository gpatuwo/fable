import React from 'react';
import {withRouter} from 'react-router';
import CommentFormContainer from './comment_form_container.js';
import CommentShow from './comment_show.jsx';

const handleDelete = (deleteRecipe, router) => (
  () => {
    deleteRecipe();
    router.push("recipes");
  }
);

const handleEdit = (recipeId, router) => (
  () => {
    router.push(`recipes/${recipeId}/edit`);
  }
);

const commentList = (comments=[]) => {
  return (
      comments.map( (comment) => {
        const date = new Date(comment.created_at);
        return (
          <CommentShow
            username={comment.commenter}
            date={date.toDateString()}
            body={comment.body}
            key={comment.id} />

        );
      })
    );
};

const RecipeShow = ({recipe, recipeId,
  requestRecipe, deleteRecipe,
  router, currentUser}) => {
  return(
    <div className="recipe-show-page">
      <img className="recipe-photo" src={recipe.image}/>
      <section className="recipe-show-info">
        <h2 className="recipe-title">{recipe.title}</h2>
        <h4 className="recipe-author"><em>by</em> {recipe.author_name}</h4>

        <p className="recipe-ingredients">
          {recipe.ingredients}
        </p>
        <br />
        <p className="recipe-instructions">
          {recipe.instructions}
        </p>
        { currentUser &&
          (currentUser.username === "Grace" ||
          currentUser.id === recipe.author_id) ?
          (<div className='recipe-show-buttons'>
          <button className="recipe-edit-button"
            onClick={handleEdit(recipeId, router)}>
            Edit recipe
          </button>
          <button className="recipe-edit-button"
             onClick={handleDelete(deleteRecipe, router)}>
            Delete recipe
          </button>
        </div>
      ) : ""}
      </section>

      <div className="comments-wrapper">
        <CommentFormContainer recipeId={recipe.id}/>

        <section className="comments">
          <label className="comment-title">Comments
          </label>
          {commentList(recipe.comments)}
        </section>

      </div>
    </div>
  );
};

export default withRouter(RecipeShow);
